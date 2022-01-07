; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_reboot_fixups_32.c_mach_reboot_fixups.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_reboot_fixups_32.c_mach_reboot_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_fixup = type { i32 (%struct.pci_dev*)*, i32, i32 }
%struct.pci_dev = type { i32 }

@fixups_table = common dso_local global %struct.device_fixup* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mach_reboot_fixups() #0 {
  %1 = alloca %struct.device_fixup*, align 8
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = call i64 (...) @in_interrupt()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %39

7:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %36, %7
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.device_fixup*, %struct.device_fixup** @fixups_table, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.device_fixup* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %8
  %14 = load %struct.device_fixup*, %struct.device_fixup** @fixups_table, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.device_fixup, %struct.device_fixup* %14, i64 %16
  store %struct.device_fixup* %17, %struct.device_fixup** %1, align 8
  %18 = load %struct.device_fixup*, %struct.device_fixup** %1, align 8
  %19 = getelementptr inbounds %struct.device_fixup, %struct.device_fixup* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.device_fixup*, %struct.device_fixup** %1, align 8
  %22 = getelementptr inbounds %struct.device_fixup, %struct.device_fixup* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.pci_dev* @pci_get_device(i32 %20, i32 %23, i32* null)
  store %struct.pci_dev* %24, %struct.pci_dev** %2, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = icmp ne %struct.pci_dev* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %13
  br label %36

28:                                               ; preds = %13
  %29 = load %struct.device_fixup*, %struct.device_fixup** %1, align 8
  %30 = getelementptr inbounds %struct.device_fixup, %struct.device_fixup* %29, i32 0, i32 0
  %31 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %30, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = call i32 %31(%struct.pci_dev* %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = call i32 @pci_dev_put(%struct.pci_dev* %34)
  br label %36

36:                                               ; preds = %28, %27
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %8

39:                                               ; preds = %6, %8
  ret void
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.device_fixup*) #1

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

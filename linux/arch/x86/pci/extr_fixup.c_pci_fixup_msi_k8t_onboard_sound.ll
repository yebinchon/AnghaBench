; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_fixup.c_pci_fixup_msi_k8t_onboard_sound.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_fixup.c_pci_fixup_msi_k8t_onboard_sound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@msi_k8t_dmi_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Detected MSI K8T Neo2-FIR; can't enable onboard soundcard!\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Detected MSI K8T Neo2-FIR; enabled onboard soundcard\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_fixup_msi_k8t_onboard_sound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_fixup_msi_k8t_onboard_sound(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i8, align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load i32, i32* @msi_k8t_dmi_table, align 4
  %5 = call i32 @dmi_check_system(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %37

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call i32 @pci_read_config_byte(%struct.pci_dev* %9, i32 80, i8* %3)
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 64
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = load i8, i8* %3, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, -65
  %20 = trunc i32 %19 to i8
  %21 = call i32 @pci_write_config_byte(%struct.pci_dev* %16, i32 80, i8 zeroext %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = call i32 @pci_read_config_byte(%struct.pci_dev* %22, i32 80, i8* %3)
  %24 = load i8, i8* %3, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 64
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = call i32 @dev_info(i32* %30, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %36

32:                                               ; preds = %15
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = call i32 @dev_info(i32* %34, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %7, %36, %8
  ret void
}

declare dso_local i32 @dmi_check_system(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

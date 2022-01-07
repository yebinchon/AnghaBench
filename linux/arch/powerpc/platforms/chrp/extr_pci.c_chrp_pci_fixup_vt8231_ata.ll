; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/chrp/extr_pci.c_chrp_pci_fixup_vt8231_ata.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/chrp/extr_pci.c_chrp_pci_fixup_vt8231_ata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }

@chrp = common dso_local global i32 0, align 4
@_chrp_type = common dso_local global i64 0, align 8
@_CHRP_Pegasos = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_VIA = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_VIA_8231 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Fixing VIA IDE, force legacy mode on\0A\00", align 1
@PCI_CLASS_PROG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @chrp_pci_fixup_vt8231_ata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chrp_pci_fixup_vt8231_ata(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load i32, i32* @chrp, align 4
  %6 = call i32 @machine_is(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i64, i64* @_chrp_type, align 8
  %10 = load i64, i64* @_CHRP_Pegasos, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  br label %44

13:                                               ; preds = %8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 14
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %44

19:                                               ; preds = %13
  %20 = load i32, i32* @PCI_VENDOR_ID_VIA, align 4
  %21 = load i32, i32* @PCI_DEVICE_ID_VIA_8231, align 4
  %22 = call %struct.pci_dev* @pci_get_device(i32 %20, i32 %21, i32* null)
  store %struct.pci_dev* %22, %struct.pci_dev** %4, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = icmp ne %struct.pci_dev* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %44

26:                                               ; preds = %19
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 2
  %29 = call i32 @dev_info(i32* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = load i32, i32* @PCI_CLASS_PROG, align 4
  %32 = call i32 @pci_read_config_byte(%struct.pci_dev* %30, i32 %31, i32* %3)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = load i32, i32* @PCI_CLASS_PROG, align 4
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, -6
  %37 = call i32 @pci_write_config_byte(%struct.pci_dev* %33, i32 %34, i32 %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, -6
  store i32 %41, i32* %39, align 4
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = call i32 @pci_dev_put(%struct.pci_dev* %42)
  br label %44

44:                                               ; preds = %26, %25, %18, %12
  ret void
}

declare dso_local i32 @machine_is(i32) #1

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

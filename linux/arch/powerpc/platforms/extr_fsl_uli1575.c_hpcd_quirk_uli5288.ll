; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/extr_fsl_uli1575.c_hpcd_quirk_uli5288.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/extr_fsl_uli1575.c_hpcd_quirk_uli5288.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@mpc86xx_hpcd = common dso_local global i32 0, align 4
@PCI_CLASS_PROG = common dso_local global i32 0, align 4
@PCI_CLASS_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @hpcd_quirk_uli5288 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpcd_quirk_uli5288(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i8, align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load i32, i32* @mpc86xx_hpcd, align 4
  %5 = call i32 @machine_is(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %33

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call i32 @pci_read_config_byte(%struct.pci_dev* %9, i32 131, i8* %3)
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = or i32 %12, 128
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %3, align 1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = load i8, i8* %3, align 1
  %17 = call i32 @pci_write_config_byte(%struct.pci_dev* %15, i32 131, i8 zeroext %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = load i32, i32* @PCI_CLASS_PROG, align 4
  %20 = call i32 @pci_write_config_byte(%struct.pci_dev* %18, i32 %19, i8 zeroext 1)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = load i32, i32* @PCI_CLASS_DEVICE, align 4
  %23 = call i32 @pci_write_config_byte(%struct.pci_dev* %21, i32 %22, i8 zeroext 6)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = call i32 @pci_read_config_byte(%struct.pci_dev* %24, i32 131, i8* %3)
  %26 = load i8, i8* %3, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 127
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %3, align 1
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = load i8, i8* %3, align 1
  %32 = call i32 @pci_write_config_byte(%struct.pci_dev* %30, i32 131, i8 zeroext %31)
  br label %33

33:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @machine_is(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

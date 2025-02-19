; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_ocxl.c_get_actag_count.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_ocxl.c_get_actag_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@OCXL_DVSEC_AFU_CTRL_ACTAG_SUP = common dso_local global i64 0, align 8
@ACTAG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32*)* @get_actag_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_actag_count(%struct.pci_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @find_dvsec_afu_ctrl(%struct.pci_dev* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ESRCH, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %29

18:                                               ; preds = %3
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @OCXL_DVSEC_AFU_CTRL_ACTAG_SUP, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @pci_read_config_word(%struct.pci_dev* %19, i64 %23, i32* %9)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @ACTAG_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %18, %15
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @find_dvsec_afu_ctrl(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

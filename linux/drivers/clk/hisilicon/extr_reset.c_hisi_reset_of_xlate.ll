; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_reset.c_hisi_reset_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_reset.c_hisi_reset_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.of_phandle_args = type { i32* }

@HISI_RESET_OFFSET_SHIFT = common dso_local global i32 0, align 4
@HISI_RESET_OFFSET_MASK = common dso_local global i32 0, align 4
@HISI_RESET_BIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, %struct.of_phandle_args*)* @hisi_reset_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_reset_of_xlate(%struct.reset_controller_dev* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.reset_controller_dev*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %3, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %4, align 8
  %7 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %8 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HISI_RESET_OFFSET_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = load i32, i32* @HISI_RESET_OFFSET_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %17 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HISI_RESET_BIT_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %23, %24
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

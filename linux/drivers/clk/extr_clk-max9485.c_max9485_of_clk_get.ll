; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-max9485.c_max9485_of_clk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-max9485.c_max9485_of_clk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.max9485_driver_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.clk_hw }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (%struct.of_phandle_args*, i8*)* @max9485_of_clk_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @max9485_of_clk_get(%struct.of_phandle_args* %0, i8* %1) #0 {
  %3 = alloca %struct.of_phandle_args*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.max9485_driver_data*, align 8
  %6 = alloca i32, align 4
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.max9485_driver_data*
  store %struct.max9485_driver_data* %8, %struct.max9485_driver_data** %5, align 8
  %9 = load %struct.of_phandle_args*, %struct.of_phandle_args** %3, align 8
  %10 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.max9485_driver_data*, %struct.max9485_driver_data** %5, align 8
  %15 = getelementptr inbounds %struct.max9485_driver_data, %struct.max9485_driver_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  ret %struct.clk_hw* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

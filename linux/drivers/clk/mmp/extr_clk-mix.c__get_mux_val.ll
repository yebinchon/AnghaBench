; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c__get_mux_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c__get_mux_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_clk_mix = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmp_clk_mix*, i32)* @_get_mux_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_mux_val(%struct.mmp_clk_mix* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmp_clk_mix*, align 8
  %5 = alloca i32, align 4
  store %struct.mmp_clk_mix* %0, %struct.mmp_clk_mix** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %4, align 8
  %7 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %4, align 8
  %12 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %18, %10
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa.c_cken_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa.c_cken_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32*, i64)* }
%struct.clk_hw = type { i32 }
%struct.pxa_clk = type { %struct.clk_fixed_factor, %struct.clk_fixed_factor, i64 (...)* }
%struct.clk_fixed_factor = type { i32 }

@clk_fixed_factor_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @cken_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cken_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pxa_clk*, align 8
  %6 = alloca %struct.clk_fixed_factor*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.pxa_clk* @to_pxa_clk(%struct.clk_hw* %7)
  store %struct.pxa_clk* %8, %struct.pxa_clk** %5, align 8
  %9 = load %struct.pxa_clk*, %struct.pxa_clk** %5, align 8
  %10 = getelementptr inbounds %struct.pxa_clk, %struct.pxa_clk* %9, i32 0, i32 2
  %11 = load i64 (...)*, i64 (...)** %10, align 8
  %12 = icmp ne i64 (...)* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.pxa_clk*, %struct.pxa_clk** %5, align 8
  %15 = getelementptr inbounds %struct.pxa_clk, %struct.pxa_clk* %14, i32 0, i32 2
  %16 = load i64 (...)*, i64 (...)** %15, align 8
  %17 = call i64 (...) %16()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %2
  %20 = load %struct.pxa_clk*, %struct.pxa_clk** %5, align 8
  %21 = getelementptr inbounds %struct.pxa_clk, %struct.pxa_clk* %20, i32 0, i32 1
  store %struct.clk_fixed_factor* %21, %struct.clk_fixed_factor** %6, align 8
  br label %25

22:                                               ; preds = %13
  %23 = load %struct.pxa_clk*, %struct.pxa_clk** %5, align 8
  %24 = getelementptr inbounds %struct.pxa_clk, %struct.pxa_clk* %23, i32 0, i32 0
  store %struct.clk_fixed_factor* %24, %struct.clk_fixed_factor** %6, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %6, align 8
  %27 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %26, i32 0, i32 0
  %28 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %29 = call i32 @__clk_hw_set_clk(i32* %27, %struct.clk_hw* %28)
  %30 = load i64 (i32*, i64)*, i64 (i32*, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk_fixed_factor_ops, i32 0, i32 0), align 8
  %31 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %6, align 8
  %32 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %31, i32 0, i32 0
  %33 = load i64, i64* %4, align 8
  %34 = call i64 %30(i32* %32, i64 %33)
  ret i64 %34
}

declare dso_local %struct.pxa_clk* @to_pxa_clk(%struct.clk_hw*) #1

declare dso_local i32 @__clk_hw_set_clk(i32*, %struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

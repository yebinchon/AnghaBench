; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_clock.c_alchemy_clk_aux_roundr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_clock.c_alchemy_clk_aux_roundr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.alchemy_auxpll_clk = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @alchemy_clk_aux_roundr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alchemy_clk_aux_roundr(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.alchemy_auxpll_clk*, align 8
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %11 = call %struct.alchemy_auxpll_clk* @to_auxpll_clk(%struct.clk_hw* %10)
  store %struct.alchemy_auxpll_clk* %11, %struct.alchemy_auxpll_clk** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %3
  store i64 0, i64* %4, align 8
  br label %45

19:                                               ; preds = %14
  %20 = load i64, i64* %6, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = udiv i64 %20, %22
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i64, i64* %9, align 8
  %28 = icmp ult i64 %27, 7
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i64 7, i64* %9, align 8
  br label %30

30:                                               ; preds = %29, %26, %19
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.alchemy_auxpll_clk*, %struct.alchemy_auxpll_clk** %8, align 8
  %33 = getelementptr inbounds %struct.alchemy_auxpll_clk, %struct.alchemy_auxpll_clk* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ugt i64 %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.alchemy_auxpll_clk*, %struct.alchemy_auxpll_clk** %8, align 8
  %38 = getelementptr inbounds %struct.alchemy_auxpll_clk, %struct.alchemy_auxpll_clk* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %36, %30
  %41 = load i64*, i64** %7, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = mul i64 %42, %43
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %40, %18
  %46 = load i64, i64* %4, align 8
  ret i64 %46
}

declare dso_local %struct.alchemy_auxpll_clk* @to_auxpll_clk(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

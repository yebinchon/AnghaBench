; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/analogbits/extr_wrpll-cln28hpc.c___wrpll_calc_divq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/analogbits/extr_wrpll-cln28hpc.c___wrpll_calc_divq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_VCO_FREQ = common dso_local global i32 0, align 4
@MAX_DIVQ_DIVISOR = common dso_local global i32 0, align 4
@MIN_VCO_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*)* @__wrpll_calc_divq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wrpll_calc_divq(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 @WARN_ON(i32 1)
  br label %39

11:                                               ; preds = %2
  %12 = load i32, i32* @MAX_VCO_FREQ, align 4
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @div_u64(i32 %12, i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  store i32 1, i32* %6, align 4
  %18 = load i32, i32* @MAX_VCO_FREQ, align 4
  %19 = load i32*, i32** %4, align 8
  store i32 %18, i32* %19, align 4
  br label %38

20:                                               ; preds = %11
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MAX_DIVQ_DIVISOR, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* @MAX_DIVQ_DIVISOR, align 4
  %26 = call i32 @ilog2(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @MIN_VCO_FREQ, align 4
  %28 = load i32*, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  br label %37

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ilog2(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i64, i64* %3, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 %33, %34
  %36 = load i32*, i32** %4, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %29, %24
  br label %38

38:                                               ; preds = %37, %17
  br label %39

39:                                               ; preds = %38, %9
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @div_u64(i32, i64) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

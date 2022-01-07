; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-mod0.c_sun4i_a10_get_mod0_factors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-mod0.c_sun4i_a10_get_mod0_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.factors_request = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.factors_request*)* @sun4i_a10_get_mod0_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_a10_get_mod0_factors(%struct.factors_request* %0) #0 {
  %2 = alloca %struct.factors_request*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.factors_request* %0, %struct.factors_request** %2, align 8
  %6 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %7 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %10 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %8, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %15 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %18 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %21 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %24 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DIV_ROUND_UP(i32 %22, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %43

30:                                               ; preds = %19
  %31 = load i32, i32* %3, align 4
  %32 = sdiv i32 %31, 2
  %33 = icmp slt i32 %32, 16
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %42

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = sdiv i32 %36, 4
  %38 = icmp slt i32 %37, 16
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 2, i32* %5, align 4
  br label %41

40:                                               ; preds = %35
  store i32 3, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %39
  br label %42

42:                                               ; preds = %41, %34
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %5, align 4
  %46 = shl i32 1, %45
  %47 = call i32 @DIV_ROUND_UP(i32 %44, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %49 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = ashr i32 %50, %51
  %53 = load i32, i32* %4, align 4
  %54 = sdiv i32 %52, %53
  %55 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %56 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %4, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %60 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %63 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

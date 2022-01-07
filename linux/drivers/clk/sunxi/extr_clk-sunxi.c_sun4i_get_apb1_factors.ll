; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sunxi.c_sun4i_get_apb1_factors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sunxi.c_sun4i_get_apb1_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.factors_request = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.factors_request*)* @sun4i_get_apb1_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_get_apb1_factors(%struct.factors_request* %0) #0 {
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
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %15 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %18 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %21 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %24 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DIV_ROUND_UP(i32 %22, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %27, 32
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %66

30:                                               ; preds = %19
  %31 = load i32, i32* %5, align 4
  %32 = icmp sle i32 %31, 4
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %45

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = icmp sle i32 %35, 8
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = icmp sle i32 %39, 16
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 2, i32* %4, align 4
  br label %43

42:                                               ; preds = %38
  store i32 3, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43, %37
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = ashr i32 %46, %47
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  %50 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %51 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = ashr i32 %52, %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  %57 = sdiv i32 %54, %56
  %58 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %59 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %62 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %65 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %45, %29
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

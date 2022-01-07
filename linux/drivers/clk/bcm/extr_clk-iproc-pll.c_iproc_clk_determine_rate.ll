; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_clk_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_clk_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @iproc_clk_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_clk_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %7 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %8 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %51

14:                                               ; preds = %2
  %15 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %16 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %19 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %51

23:                                               ; preds = %14
  %24 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %25 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %28 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DIV_ROUND_CLOSEST(i32 %26, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ult i32 %31, 2
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %35 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %38 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %23
  %40 = load i32, i32* %6, align 4
  %41 = icmp ugt i32 %40, 256
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 256, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %45 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = udiv i32 %46, %47
  %49 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %50 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %43, %22, %11
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

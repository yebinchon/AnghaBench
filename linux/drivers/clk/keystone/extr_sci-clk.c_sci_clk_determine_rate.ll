; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_sci-clk.c_sci_clk_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_sci-clk.c_sci_clk_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i32, i32, i32 }
%struct.sci_clk = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32, i32, i32, i32*)* }

@.str = private unnamed_addr constant [50 x i8] c"determine-rate failed for dev=%d, clk=%d, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @sci_clk_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_clk_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca %struct.sci_clk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.sci_clk* @to_sci_clk(%struct.clk_hw* %9)
  store %struct.sci_clk* %10, %struct.sci_clk** %6, align 8
  %11 = load %struct.sci_clk*, %struct.sci_clk** %6, align 8
  %12 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32*)** %16, align 8
  %18 = load %struct.sci_clk*, %struct.sci_clk** %6, align 8
  %19 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sci_clk*, %struct.sci_clk** %6, align 8
  %24 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sci_clk*, %struct.sci_clk** %6, align 8
  %27 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %30 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %33 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %36 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %17(i32 %22, i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32* %8)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %2
  %42 = load %struct.sci_clk*, %struct.sci_clk** %6, align 8
  %43 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.sci_clk*, %struct.sci_clk** %6, align 8
  %48 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sci_clk*, %struct.sci_clk** %6, align 8
  %51 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %60

56:                                               ; preds = %2
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %59 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %41
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.sci_clk* @to_sci_clk(%struct.clk_hw*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

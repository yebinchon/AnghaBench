; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i64 }
%struct.clk_rate_request = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @clk_round_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_rate_request, align 8
  %7 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.clk*, %struct.clk** %4, align 8
  %9 = icmp ne %struct.clk* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %54

11:                                               ; preds = %2
  %12 = call i32 (...) @clk_prepare_lock()
  %13 = load %struct.clk*, %struct.clk** %4, align 8
  %14 = getelementptr inbounds %struct.clk, %struct.clk* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.clk*, %struct.clk** %4, align 8
  %19 = getelementptr inbounds %struct.clk, %struct.clk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @clk_core_rate_unprotect(i32 %20)
  br label %22

22:                                               ; preds = %17, %11
  %23 = load %struct.clk*, %struct.clk** %4, align 8
  %24 = getelementptr inbounds %struct.clk, %struct.clk* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %6, i32 0, i32 2
  %27 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %6, i32 0, i32 1
  %28 = call i32 @clk_core_get_boundaries(i32 %25, i32* %26, i32* %27)
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %6, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load %struct.clk*, %struct.clk** %4, align 8
  %32 = getelementptr inbounds %struct.clk, %struct.clk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @clk_core_round_rate_nolock(i32 %33, %struct.clk_rate_request* %6)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.clk*, %struct.clk** %4, align 8
  %36 = getelementptr inbounds %struct.clk, %struct.clk* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %22
  %40 = load %struct.clk*, %struct.clk** %4, align 8
  %41 = getelementptr inbounds %struct.clk, %struct.clk* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @clk_core_rate_protect(i32 %42)
  br label %44

44:                                               ; preds = %39, %22
  %45 = call i32 (...) @clk_prepare_unlock()
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %3, align 8
  br label %54

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %6, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %3, align 8
  br label %54

54:                                               ; preds = %51, %48, %10
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

declare dso_local i32 @clk_prepare_lock(...) #1

declare dso_local i32 @clk_core_rate_unprotect(i32) #1

declare dso_local i32 @clk_core_get_boundaries(i32, i32*, i32*) #1

declare dso_local i32 @clk_core_round_rate_nolock(i32, %struct.clk_rate_request*) #1

declare dso_local i32 @clk_core_rate_protect(i32) #1

declare dso_local i32 @clk_prepare_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

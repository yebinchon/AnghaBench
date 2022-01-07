; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_req_round_rate_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_req_round_rate_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { i32 }
%struct.clk_rate_request = type { i64, i32, i32 }

@prepare_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_core*, i64)* @clk_core_req_round_rate_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_core_req_round_rate_nolock(%struct.clk_core* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_core*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.clk_rate_request, align 8
  store %struct.clk_core* %0, %struct.clk_core** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = call i32 @lockdep_assert_held(i32* @prepare_lock)
  %10 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %11 = icmp ne %struct.clk_core* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %41

13:                                               ; preds = %2
  %14 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %15 = call i32 @clk_core_rate_nuke_protect(%struct.clk_core* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %3, align 8
  br label %41

21:                                               ; preds = %13
  %22 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %23 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %8, i32 0, i32 2
  %24 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %8, i32 0, i32 1
  %25 = call i32 @clk_core_get_boundaries(%struct.clk_core* %22, i32* %23, i32* %24)
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %8, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %29 = call i32 @clk_core_round_rate_nolock(%struct.clk_core* %28, %struct.clk_rate_request* %8)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @clk_core_rate_restore_protect(%struct.clk_core* %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %39

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %8, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  br label %39

39:                                               ; preds = %36, %35
  %40 = phi i64 [ 0, %35 ], [ %38, %36 ]
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %39, %18, %12
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @clk_core_rate_nuke_protect(%struct.clk_core*) #1

declare dso_local i32 @clk_core_get_boundaries(%struct.clk_core*, i32*, i32*) #1

declare dso_local i32 @clk_core_round_rate_nolock(%struct.clk_core*, %struct.clk_rate_request*) #1

declare dso_local i32 @clk_core_rate_restore_protect(%struct.clk_core*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

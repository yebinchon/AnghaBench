; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_round_rate_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_round_rate_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { i32, i64, %struct.clk_core* }
%struct.clk_rate_request = type { i64 }

@prepare_lock = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_core*, %struct.clk_rate_request*)* @clk_core_round_rate_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_core_round_rate_nolock(%struct.clk_core* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_core*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  store %struct.clk_core* %0, %struct.clk_core** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %6 = call i32 @lockdep_assert_held(i32* @prepare_lock)
  %7 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %8 = icmp ne %struct.clk_core* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %11 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  store i32 0, i32* %3, align 4
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %14 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %15 = call i32 @clk_core_init_rate_req(%struct.clk_core* %13, %struct.clk_rate_request* %14)
  %16 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %17 = call i64 @clk_core_can_round(%struct.clk_core* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %21 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %22 = call i32 @clk_core_determine_round_nolock(%struct.clk_core* %20, %struct.clk_rate_request* %21)
  store i32 %22, i32* %3, align 4
  br label %43

23:                                               ; preds = %12
  %24 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %25 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %32 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %31, i32 0, i32 2
  %33 = load %struct.clk_core*, %struct.clk_core** %32, align 8
  %34 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %35 = call i32 @clk_core_round_rate_nolock(%struct.clk_core* %33, %struct.clk_rate_request* %34)
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %39 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %42 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %30, %19, %9
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @clk_core_init_rate_req(%struct.clk_core*, %struct.clk_rate_request*) #1

declare dso_local i64 @clk_core_can_round(%struct.clk_core*) #1

declare dso_local i32 @clk_core_determine_round_nolock(%struct.clk_core*, %struct.clk_rate_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

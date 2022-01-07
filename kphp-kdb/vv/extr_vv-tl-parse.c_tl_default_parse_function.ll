; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_default_parse_function.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_default_parse_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i32, i32, i32 }

@TL_ENGINE_NOP = common dso_local global i32 0, align 4
@tl_act_nop = common dso_local global i32 0, align 4
@TL_ENGINE_STAT = common dso_local global i32 0, align 4
@tl_act_stat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_act_extra* @tl_default_parse_function(i64 %0) #0 {
  %2 = alloca %struct.tl_act_extra*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tl_act_extra*, align 8
  %6 = alloca %struct.tl_act_extra*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %60

10:                                               ; preds = %1
  %11 = call i32 (...) @tl_fetch_lookup_int()
  store i32 %11, i32* %4, align 4
  %12 = call i64 (...) @tl_fetch_error()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %60

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @TL_ENGINE_NOP, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = call i32 (...) @tl_fetch_int()
  %21 = call i32 (...) @tl_fetch_end()
  %22 = call i64 (...) @tl_fetch_error()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %60

25:                                               ; preds = %19
  %26 = call %struct.tl_act_extra* @malloc(i32 12)
  store %struct.tl_act_extra* %26, %struct.tl_act_extra** %5, align 8
  %27 = load %struct.tl_act_extra*, %struct.tl_act_extra** %5, align 8
  %28 = call i32 @memset(%struct.tl_act_extra* %27, i32 0, i32 12)
  %29 = load %struct.tl_act_extra*, %struct.tl_act_extra** %5, align 8
  %30 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %29, i32 0, i32 0
  store i32 3, i32* %30, align 4
  %31 = load %struct.tl_act_extra*, %struct.tl_act_extra** %5, align 8
  %32 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %31, i32 0, i32 1
  store i32 12, i32* %32, align 4
  %33 = load i32, i32* @tl_act_nop, align 4
  %34 = load %struct.tl_act_extra*, %struct.tl_act_extra** %5, align 8
  %35 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.tl_act_extra*, %struct.tl_act_extra** %5, align 8
  store %struct.tl_act_extra* %36, %struct.tl_act_extra** %2, align 8
  br label %60

37:                                               ; preds = %15
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @TL_ENGINE_STAT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = call i32 (...) @tl_fetch_int()
  %43 = call i32 (...) @tl_fetch_end()
  %44 = call i64 (...) @tl_fetch_error()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %60

47:                                               ; preds = %41
  %48 = call %struct.tl_act_extra* @malloc(i32 12)
  store %struct.tl_act_extra* %48, %struct.tl_act_extra** %6, align 8
  %49 = load %struct.tl_act_extra*, %struct.tl_act_extra** %6, align 8
  %50 = call i32 @memset(%struct.tl_act_extra* %49, i32 0, i32 12)
  %51 = load %struct.tl_act_extra*, %struct.tl_act_extra** %6, align 8
  %52 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %51, i32 0, i32 0
  store i32 3, i32* %52, align 4
  %53 = load %struct.tl_act_extra*, %struct.tl_act_extra** %6, align 8
  %54 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %53, i32 0, i32 1
  store i32 12, i32* %54, align 4
  %55 = load i32, i32* @tl_act_stat, align 4
  %56 = load %struct.tl_act_extra*, %struct.tl_act_extra** %6, align 8
  %57 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.tl_act_extra*, %struct.tl_act_extra** %6, align 8
  store %struct.tl_act_extra* %58, %struct.tl_act_extra** %2, align 8
  br label %60

59:                                               ; preds = %37
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %60

60:                                               ; preds = %59, %47, %46, %25, %24, %14, %9
  %61 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  ret %struct.tl_act_extra* %61
}

declare dso_local i32 @tl_fetch_lookup_int(...) #1

declare dso_local i64 @tl_fetch_error(...) #1

declare dso_local i32 @tl_fetch_int(...) #1

declare dso_local i32 @tl_fetch_end(...) #1

declare dso_local %struct.tl_act_extra* @malloc(i32) #1

declare dso_local i32 @memset(%struct.tl_act_extra*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

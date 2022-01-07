; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_set_timezone.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_set_timezone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { i8 }
%struct.lev_timezone = type { i64 }
%struct.lev_timezone64 = type { i64 }

@ignore_set_timezone = common dso_local global i64 0, align 8
@LEV_STATS_TIMEZONE = common dso_local global i64 0, align 8
@LEV_STATS_TIMEZONE_64 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_timezone(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.counter*, align 8
  %9 = alloca %struct.lev_timezone*, align 8
  %10 = alloca %struct.lev_timezone64*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @ignore_set_timezone, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = call %struct.counter* @get_counter_f(i64 %15, i32 0)
  store %struct.counter* %16, %struct.counter** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = trunc i32 %17 to i8
  %19 = load %struct.counter*, %struct.counter** %8, align 8
  %20 = getelementptr inbounds %struct.counter, %struct.counter* %19, i32 0, i32 0
  store i8 %18, i8* %20, align 1
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %54, label %23

23:                                               ; preds = %14
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = trunc i64 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load i64, i64* @LEV_STATS_TIMEZONE, align 8
  %31 = load i32, i32* %6, align 4
  %32 = trunc i32 %31 to i8
  %33 = sext i8 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = load i64, i64* %5, align 8
  %36 = call i8* @alloc_log_event(i64 %34, i32 8, i64 %35)
  %37 = bitcast i8* %36 to %struct.lev_timezone*
  store %struct.lev_timezone* %37, %struct.lev_timezone** %9, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.lev_timezone*, %struct.lev_timezone** %9, align 8
  %40 = getelementptr inbounds %struct.lev_timezone, %struct.lev_timezone* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %53

41:                                               ; preds = %23
  %42 = load i64, i64* @LEV_STATS_TIMEZONE_64, align 8
  %43 = load i32, i32* %6, align 4
  %44 = trunc i32 %43 to i8
  %45 = sext i8 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = load i64, i64* %5, align 8
  %48 = call i8* @alloc_log_event(i64 %46, i32 8, i64 %47)
  %49 = bitcast i8* %48 to %struct.lev_timezone64*
  store %struct.lev_timezone64* %49, %struct.lev_timezone64** %10, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.lev_timezone64*, %struct.lev_timezone64** %10, align 8
  %52 = getelementptr inbounds %struct.lev_timezone64, %struct.lev_timezone64* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %41, %29
  br label %54

54:                                               ; preds = %53, %14
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %13
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.counter* @get_counter_f(i64, i32) #1

declare dso_local i8* @alloc_log_event(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

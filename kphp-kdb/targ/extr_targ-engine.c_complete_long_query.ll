; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_complete_long_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_complete_long_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@last_long_query_utime = common dso_local global i64* null, align 8
@long_query_buff_ptr = common dso_local global i64 0, align 8
@last_long_query_time = common dso_local global i64* null, align 8
@tot_long_queries_time = common dso_local global i32 0, align 4
@last_long_query_found = common dso_local global i32* null, align 8
@verbosity = common dso_local global i64 0, align 8
@log_long_queries = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"%.6lf %d (%d) %s\0A\00", align 1
@last_long_query_buff = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connection*, i32)* @complete_long_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_long_query(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %6 = call i64 @get_utime(i32 %5)
  %7 = load i64*, i64** @last_long_query_utime, align 8
  %8 = load i64, i64* @long_query_buff_ptr, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %6, %10
  %12 = load i64*, i64** @last_long_query_time, align 8
  %13 = load i64, i64* @long_query_buff_ptr, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  store i64 %11, i64* %14, align 8
  %15 = load i64*, i64** @last_long_query_time, align 8
  %16 = load i64, i64* @long_query_buff_ptr, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @tot_long_queries_time, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* @tot_long_queries_time, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32*, i32** @last_long_query_found, align 8
  %25 = load i64, i64* @long_query_buff_ptr, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %23, i32* %26, align 4
  %27 = load i64, i64* @verbosity, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i64, i64* @log_long_queries, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %29, %2
  %33 = load i64*, i64** @last_long_query_time, align 8
  %34 = load i64, i64* @long_query_buff_ptr, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.connection*, %struct.connection** %3, align 8
  %38 = icmp ne %struct.connection* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.connection*, %struct.connection** %3, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i32 [ %42, %39 ], [ -1, %43 ]
  %46 = load i32, i32* %4, align 4
  %47 = load i32*, i32** @last_long_query_buff, align 8
  %48 = load i64, i64* @long_query_buff_ptr, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @kprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %36, i32 %45, i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %44, %29
  ret void
}

declare dso_local i64 @get_utime(i32) #1

declare dso_local i32 @kprintf(i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

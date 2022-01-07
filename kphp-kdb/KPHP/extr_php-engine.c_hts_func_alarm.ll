; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_hts_func_alarm.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_hts_func_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64 }
%struct.hts_data = type { i32* }

@conn_expect_query = common dso_local global i64 0, align 8
@conn_wait_net = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"http connection alarm\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"worker is unfinished after alarm\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hts_func_alarm(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.hts_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %6 = load %struct.connection*, %struct.connection** %2, align 8
  %7 = call %struct.hts_data* @HTS_DATA(%struct.connection* %6)
  store %struct.hts_data* %7, %struct.hts_data** %3, align 8
  %8 = load %struct.connection*, %struct.connection** %2, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @conn_expect_query, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.connection*, %struct.connection** %2, align 8
  %15 = getelementptr inbounds %struct.connection, %struct.connection* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @conn_wait_net, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i1 [ true, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* @conn_expect_query, align 8
  %24 = load %struct.connection*, %struct.connection** %2, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.hts_data*, %struct.hts_data** %3, align 8
  %27 = getelementptr inbounds %struct.hts_data, %struct.hts_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @php_worker_terminate(i32* %29, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @php_worker_main(i32* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %19
  %36 = load %struct.connection*, %struct.connection** %2, align 8
  %37 = call i32 @hts_at_query_end(%struct.connection* %36, i32 1)
  br label %44

38:                                               ; preds = %19
  br i1 true, label %39, label %40

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39, %38
  %41 = phi i1 [ false, %38 ], [ false, %39 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  br label %44

44:                                               ; preds = %40, %35
  ret i32 0
}

declare dso_local %struct.hts_data* @HTS_DATA(%struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @php_worker_terminate(i32*, i32, i8*) #1

declare dso_local i32 @php_worker_main(i32*) #1

declare dso_local i32 @hts_at_query_end(%struct.connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

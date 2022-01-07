; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_run_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_run_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_4__ = type { i64 }

@php_script = common dso_local global i32 0, align 4
@query_stats_id = common dso_local global i32 0, align 4
@query_stats = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"PHPQX2\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"RPC_ANSWER\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"RPC_SEND_MESSAGE\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"NET\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"CREATE_QUEUE\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"HTTP_LOAD_POST\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"unknown php_query type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @php_worker_run_query(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @php_script, align 4
  %5 = call i64 @php_script_get_query(i32 %4)
  %6 = inttoptr i64 %5 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = call i32 (...) @qmem_free_ptrs()
  %8 = load i32, i32* @query_stats_id, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @query_stats, i32 0, i32 1), align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, -65536
  switch i32 %13, label %48 [
    i32 128, label %14
    i32 130, label %19
    i32 129, label %24
    i32 134, label %29
    i32 131, label %34
    i32 133, label %38
    i32 132, label %43
  ]

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @query_stats, i32 0, i32 0), align 8
  %15 = load i32*, i32** %2, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = bitcast %struct.TYPE_4__* %16 to i32*
  %18 = call i32 @php_worker_run_query_x2(i32* %15, i32* %17)
  br label %54

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @query_stats, i32 0, i32 0), align 8
  %20 = load i32*, i32** %2, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = bitcast %struct.TYPE_4__* %21 to i32*
  %23 = call i32 @php_worker_run_rpc_answer_query(i32* %20, i32* %22)
  br label %54

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @query_stats, i32 0, i32 0), align 8
  %25 = load i32*, i32** %2, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = bitcast %struct.TYPE_4__* %26 to i32*
  %28 = call i32 @php_worker_run_rpc_send_message(i32* %25, i32* %27)
  br label %54

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @query_stats, i32 0, i32 0), align 8
  %30 = load i32*, i32** %2, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = bitcast %struct.TYPE_4__* %31 to i32*
  %33 = call i32 @php_worker_run_query_connect(i32* %30, i32* %32)
  br label %54

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @query_stats, i32 0, i32 0), align 8
  %35 = load i32*, i32** %2, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = call i32 @php_worker_run_net_query(i32* %35, %struct.TYPE_4__* %36)
  br label %54

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @query_stats, i32 0, i32 0), align 8
  %39 = load i32*, i32** %2, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = bitcast %struct.TYPE_4__* %40 to i32*
  %42 = call i32 @php_worker_create_queue(i32* %39, i32* %41)
  br label %54

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @query_stats, i32 0, i32 0), align 8
  %44 = load i32*, i32** %2, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = bitcast %struct.TYPE_4__* %45 to i32*
  %47 = call i32 @php_worker_http_load_post(i32* %44, i32* %46)
  br label %54

48:                                               ; preds = %1
  br i1 true, label %49, label %50

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49, %48
  %51 = phi i1 [ false, %48 ], [ false, %49 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  br label %54

54:                                               ; preds = %50, %43, %38, %34, %29, %24, %19, %14
  ret void
}

declare dso_local i64 @php_script_get_query(i32) #1

declare dso_local i32 @qmem_free_ptrs(...) #1

declare dso_local i32 @php_worker_run_query_x2(i32*, i32*) #1

declare dso_local i32 @php_worker_run_rpc_answer_query(i32*, i32*) #1

declare dso_local i32 @php_worker_run_rpc_send_message(i32*, i32*) #1

declare dso_local i32 @php_worker_run_query_connect(i32*, i32*) #1

declare dso_local i32 @php_worker_run_net_query(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @php_worker_create_queue(i32*, i32*) #1

declare dso_local i32 @php_worker_http_load_post(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

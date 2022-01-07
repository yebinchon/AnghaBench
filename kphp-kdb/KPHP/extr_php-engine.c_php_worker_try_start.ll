; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_try_start.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_try_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.conn_query = type { %struct.TYPE_5__, i32*, %struct.TYPE_6__*, %struct.connection*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.connection = type { i32 }

@phpq_finish = common dso_local global i32 0, align 4
@php_worker_run_flag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"php script [req_id = %016llx] is waiting\0A\00", align 1
@pending_http_queue = common dso_local global i32 0, align 4
@pending_cq_func = common dso_local global i32 0, align 4
@conn_wait_net = common dso_local global i32 0, align 4
@phpq_init_script = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @php_worker_try_start(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.conn_query*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @phpq_finish, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  br label %57

12:                                               ; preds = %1
  %13 = load i32, i32* @php_worker_run_flag, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %12
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call %struct.conn_query* @zmalloc(i32 40)
  store %struct.conn_query* %20, %struct.conn_query** %3, align 8
  %21 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %22 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %24 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %23, i32 0, i32 3
  store %struct.connection* bitcast (i32* @pending_http_queue to %struct.connection*), %struct.connection** %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %35 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %34, i32 0, i32 2
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %35, align 8
  %36 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %37 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %36, i32 0, i32 1
  store i32* @pending_cq_func, i32** %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %42 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %45 = call i32 @insert_conn_query(%struct.conn_query* %44)
  %46 = load i32, i32* @conn_wait_net, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %57

53:                                               ; preds = %12
  store i32 1, i32* @php_worker_run_flag, align 4
  %54 = load i32, i32* @phpq_init_script, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %15, %8
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local %struct.conn_query* @zmalloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @insert_conn_query(%struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

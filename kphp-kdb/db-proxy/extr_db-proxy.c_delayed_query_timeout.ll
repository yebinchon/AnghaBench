; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_delayed_query_timeout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_delayed_query_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"delayed query %p timed out\0A\00", align 1
@query_wait_target = common dso_local global i64 0, align 8
@query_failed = common dso_local global i64 0, align 8
@active_queries = common dso_local global i32 0, align 4
@waiting_queries = common dso_local global i32 0, align 4
@expired_forwarded_queries = common dso_local global i32 0, align 4
@expired_delayed_queries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delayed_query_timeout(%struct.conn_query* %0) #0 {
  %2 = alloca %struct.conn_query*, align 8
  store %struct.conn_query* %0, %struct.conn_query** %2, align 8
  %3 = load i64, i64* @verbosity, align 8
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* @stderr, align 4
  %7 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %8 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.conn_query* %7)
  br label %9

9:                                                ; preds = %5, %1
  %10 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %11 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %9
  %15 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %16 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %21 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %14
  %25 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %26 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call %struct.TYPE_3__* @SQLS_DATA(%struct.TYPE_4__* %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @query_wait_target, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i64, i64* @query_failed, align 8
  %36 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %37 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = call %struct.TYPE_3__* @SQLS_DATA(%struct.TYPE_4__* %38)
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i64 %35, i64* %40, align 8
  br label %41

41:                                               ; preds = %24, %14, %9
  %42 = load i32, i32* @active_queries, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @active_queries, align 4
  %44 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %45 = call i32 @delete_query(%struct.conn_query* %44)
  %46 = load i32, i32* @waiting_queries, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* @waiting_queries, align 4
  %48 = load i32, i32* @expired_forwarded_queries, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @expired_forwarded_queries, align 4
  %50 = load i32, i32* @expired_delayed_queries, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @expired_delayed_queries, align 4
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, %struct.conn_query*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_3__* @SQLS_DATA(%struct.TYPE_4__*) #1

declare dso_local i32 @delete_query(%struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

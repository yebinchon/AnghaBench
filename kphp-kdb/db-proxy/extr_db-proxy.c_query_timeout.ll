; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_query_timeout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_query_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"query %p of connection %p (fd=%d) timed out, unreliability=%d\0A\00", align 1
@conn_error = common dso_local global i32 0, align 4
@C_FAILED = common dso_local global i32 0, align 4
@expired_forwarded_queries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @query_timeout(%struct.conn_query* %0) #0 {
  %2 = alloca %struct.conn_query*, align 8
  store %struct.conn_query* %0, %struct.conn_query** %2, align 8
  %3 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %4 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %3, i32 0, i32 0
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, 1000
  store i32 %8, i32* %6, align 8
  %9 = load i64, i64* @verbosity, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load i32, i32* @stderr, align 4
  %13 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %14 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %15 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %18 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %23 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), %struct.conn_query* %13, %struct.TYPE_5__* %16, i32 %21, i32 %26)
  br label %28

28:                                               ; preds = %11, %1
  %29 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %30 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = call i32 @assert(%struct.TYPE_5__* %31)
  %33 = load i32, i32* @conn_error, align 4
  %34 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %35 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 5
  store i32 %33, i32* %37, align 4
  %38 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %39 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i32 -239, i32* %41, align 8
  %42 = load i32, i32* @C_FAILED, align 4
  %43 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %44 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %42
  store i32 %48, i32* %46, align 8
  %49 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %50 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %28
  %58 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %59 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = call i32 @put_event_into_heap(%struct.TYPE_4__* %62)
  br label %64

64:                                               ; preds = %57, %28
  %65 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %66 = call i32 @delete_query(%struct.conn_query* %65)
  %67 = load i32, i32* @expired_forwarded_queries, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @expired_forwarded_queries, align 4
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, %struct.conn_query*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @put_event_into_heap(%struct.TYPE_4__*) #1

declare dso_local i32 @delete_query(%struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

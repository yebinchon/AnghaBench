; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-aio.c_aio_query_timeout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-aio.c_aio_query_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"query %p of connection %p (fd=%d) timed out, unreliability=%d\0A\00", align 1
@expired_aio_queries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aio_query_timeout(%struct.conn_query* %0) #0 {
  %2 = alloca %struct.conn_query*, align 8
  store %struct.conn_query* %0, %struct.conn_query** %2, align 8
  %3 = load i64, i64* @verbosity, align 8
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = load i32, i32* @stderr, align 4
  %7 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %8 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %9 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %12 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %17 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), %struct.conn_query* %7, %struct.TYPE_2__* %10, i32 %15, i32 %20)
  br label %22

22:                                               ; preds = %5, %1
  %23 = load i32, i32* @expired_aio_queries, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @expired_aio_queries, align 4
  %25 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %26 = call i32 @delete_aio_query(%struct.conn_query* %25)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, %struct.conn_query*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @delete_aio_query(%struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

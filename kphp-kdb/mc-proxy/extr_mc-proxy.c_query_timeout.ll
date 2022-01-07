; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_query_timeout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_query_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.conn_target* }
%struct.conn_target = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"query %p of connection %p (fd=%d) timed out, unreliability=%d\0A\00", align 1
@expired_forwarded_queries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @query_timeout(%struct.conn_query* %0) #0 {
  %2 = alloca %struct.conn_query*, align 8
  %3 = alloca %struct.conn_target*, align 8
  store %struct.conn_query* %0, %struct.conn_query** %2, align 8
  %4 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %5 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 1000
  store i32 %9, i32* %7, align 8
  %10 = load i64, i64* @verbosity, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load i32, i32* @stderr, align 4
  %14 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %15 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %16 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %19 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %24 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), %struct.conn_query* %14, %struct.TYPE_4__* %17, i32 %22, i32 %27)
  br label %29

29:                                               ; preds = %12, %1
  %30 = load i32, i32* @expired_forwarded_queries, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @expired_forwarded_queries, align 4
  %32 = load %struct.conn_query*, %struct.conn_query** %2, align 8
  %33 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load %struct.conn_target*, %struct.conn_target** %35, align 8
  store %struct.conn_target* %36, %struct.conn_target** %3, align 8
  %37 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %38 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ntohl(i32 %40)
  %42 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %43 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @store_expired_target(i32 %41, i32 %44)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, %struct.conn_query*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @store_expired_target(i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

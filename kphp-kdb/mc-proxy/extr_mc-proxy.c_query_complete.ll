; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_query_complete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_query_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, i32, %struct.conn_query* }
%struct.conn_query = type { i64, %struct.connection* }
%struct.TYPE_2__ = type { i32 }

@active_queries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @query_complete(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.conn_query*, align 8
  %6 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.connection*, %struct.connection** %3, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 3
  %9 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  store %struct.conn_query* %9, %struct.conn_query** %5, align 8
  %10 = load %struct.connection*, %struct.connection** %3, align 8
  %11 = getelementptr inbounds %struct.connection, %struct.connection* %10, i32 0, i32 3
  %12 = load %struct.conn_query*, %struct.conn_query** %11, align 8
  %13 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %12, i32 0, i32 1
  %14 = load %struct.connection*, %struct.connection** %13, align 8
  store %struct.connection* %14, %struct.connection** %6, align 8
  %15 = load %struct.connection*, %struct.connection** %6, align 8
  %16 = call i32 @assert(%struct.connection* %15)
  %17 = load %struct.connection*, %struct.connection** %6, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.connection*, %struct.connection** %3, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 3
  %22 = load %struct.conn_query*, %struct.conn_query** %21, align 8
  %23 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %19, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.connection*, %struct.connection** %6, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.connection*, %struct.connection** %6, align 8
  %33 = call %struct.TYPE_2__* @MCS_DATA(%struct.connection* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %26, %2
  %38 = load i32, i32* @active_queries, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @active_queries, align 4
  %40 = load %struct.connection*, %struct.connection** %3, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.conn_query*, %struct.conn_query** %5, align 8
  %45 = call i32 @delete_conn_query(%struct.conn_query* %44)
  %46 = load %struct.conn_query*, %struct.conn_query** %5, align 8
  %47 = call i32 @zfree(%struct.conn_query* %46, i32 16)
  ret i32 0
}

declare dso_local i32 @assert(%struct.connection*) #1

declare dso_local %struct.TYPE_2__* @MCS_DATA(%struct.connection*) #1

declare dso_local i32 @delete_conn_query(%struct.conn_query*) #1

declare dso_local i32 @zfree(%struct.conn_query*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

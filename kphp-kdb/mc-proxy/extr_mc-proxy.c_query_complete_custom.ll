; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_query_complete_custom.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_query_complete_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_query = type { i64, %struct.connection*, %struct.connection* }
%struct.connection = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@active_queries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @query_complete_custom(%struct.conn_query* %0, i32 %1) #0 {
  %3 = alloca %struct.conn_query*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.connection*, align 8
  store %struct.conn_query* %0, %struct.conn_query** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %8 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %7, i32 0, i32 2
  %9 = load %struct.connection*, %struct.connection** %8, align 8
  store %struct.connection* %9, %struct.connection** %5, align 8
  %10 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %11 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %10, i32 0, i32 1
  %12 = load %struct.connection*, %struct.connection** %11, align 8
  store %struct.connection* %12, %struct.connection** %6, align 8
  %13 = load %struct.connection*, %struct.connection** %6, align 8
  %14 = call i32 @assert(%struct.connection* %13)
  %15 = load %struct.connection*, %struct.connection** %5, align 8
  %16 = call i32 @assert(%struct.connection* %15)
  %17 = load %struct.connection*, %struct.connection** %6, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %21 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.connection*, %struct.connection** %6, align 8
  %27 = getelementptr inbounds %struct.connection, %struct.connection* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.connection*, %struct.connection** %6, align 8
  %31 = call %struct.TYPE_2__* @MCS_DATA(%struct.connection* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %24, %2
  %36 = load i32, i32* @active_queries, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* @active_queries, align 4
  %38 = load %struct.connection*, %struct.connection** %5, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %43 = call i32 @delete_conn_query(%struct.conn_query* %42)
  %44 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %45 = call i32 @zfree(%struct.conn_query* %44, i32 24)
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

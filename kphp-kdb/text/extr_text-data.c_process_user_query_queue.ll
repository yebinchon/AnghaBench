; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_process_user_query_queue.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_process_user_query_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.conn_query* }
%struct.conn_query = type { %struct.conn_query* }

@pending_http_queries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_user_query_queue(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.conn_query*, align 8
  %4 = alloca %struct.conn_query*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.conn_query*, %struct.conn_query** %6, align 8
  store %struct.conn_query* %7, %struct.conn_query** %3, align 8
  br label %8

8:                                                ; preds = %23, %1
  %9 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = call %struct.conn_query* @USER_CONN(%struct.TYPE_4__* %10)
  %12 = icmp ne %struct.conn_query* %9, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %15 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %14, i32 0, i32 0
  %16 = load %struct.conn_query*, %struct.conn_query** %15, align 8
  store %struct.conn_query* %16, %struct.conn_query** %4, align 8
  %17 = load i32, i32* @pending_http_queries, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* @pending_http_queries, align 4
  %19 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %20 = call i32 @delete_conn_query(%struct.conn_query* %19)
  %21 = load %struct.conn_query*, %struct.conn_query** %3, align 8
  %22 = call i32 @zfree(%struct.conn_query* %21, i32 8)
  br label %23

23:                                               ; preds = %13
  %24 = load %struct.conn_query*, %struct.conn_query** %4, align 8
  store %struct.conn_query* %24, %struct.conn_query** %3, align 8
  br label %8

25:                                               ; preds = %8
  ret i32 0
}

declare dso_local %struct.conn_query* @USER_CONN(%struct.TYPE_4__*) #1

declare dso_local i32 @delete_conn_query(%struct.conn_query*) #1

declare dso_local i32 @zfree(%struct.conn_query*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

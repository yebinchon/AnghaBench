; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_default_on_alarm.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_default_on_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_query = type { i64, i32, i32, i32 }

@timeouted_queries = common dso_local global i32 0, align 4
@rpc_answers_timedout = common dso_local global i32 0, align 4
@TL_ERROR_QUERY_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Query timeout: working_time = %lf\00", align 1
@precise_now = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @default_on_alarm(%struct.rpc_query* %0) #0 {
  %2 = alloca %struct.rpc_query*, align 8
  store %struct.rpc_query* %0, %struct.rpc_query** %2, align 8
  %3 = load i32, i32* @timeouted_queries, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @timeouted_queries, align 4
  %5 = load i32, i32* @rpc_answers_timedout, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @rpc_answers_timedout, align 4
  %7 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %8 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %11 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %10, i32 0, i32 2
  %12 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %13 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @tl_init_store(i32 %9, i32* %11, i32 %14)
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load i32, i32* @TL_ERROR_QUERY_TIMEOUT, align 4
  %19 = load i64, i64* @precise_now, align 8
  %20 = load %struct.rpc_query*, %struct.rpc_query** %2, align 8
  %21 = getelementptr inbounds %struct.rpc_query, %struct.rpc_query* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  %24 = call i32 @tl_fetch_set_error_format(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = call i32 (...) @tl_store_end()
  br label %26

26:                                               ; preds = %17, %1
  ret void
}

declare dso_local i64 @tl_init_store(i32, i32*, i32) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i64) #1

declare dso_local i32 @tl_store_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

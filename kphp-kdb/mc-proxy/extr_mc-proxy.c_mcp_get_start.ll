; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_mcp_get_start.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_mcp_get_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@get_targets = common dso_local global i64 0, align 8
@get_search_queries = common dso_local global i64 0, align 8
@get_keys = common dso_local global i64 0, align 8
@conn_generation = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcp_get_start(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  store i64 0, i64* @get_targets, align 8
  store i64 0, i64* @get_search_queries, align 8
  store i64 0, i64* @get_keys, align 8
  %3 = load i64, i64* @conn_generation, align 8
  %4 = add nsw i64 %3, 1
  store i64 %4, i64* @conn_generation, align 8
  %5 = load %struct.connection*, %struct.connection** %2, align 8
  %6 = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 1
  store i64 %4, i64* %6, align 8
  %7 = load %struct.connection*, %struct.connection** %2, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.connection*, %struct.connection** %2, align 8
  %10 = call %struct.TYPE_2__* @MCS_DATA(%struct.connection* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.connection*, %struct.connection** %2, align 8
  %14 = call %struct.TYPE_2__* @MCS_DATA(%struct.connection* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i64 %12, i64* %15, align 8
  %16 = load %struct.connection*, %struct.connection** %2, align 8
  %17 = call %struct.TYPE_2__* @MCS_DATA(%struct.connection* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @MCS_DATA(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

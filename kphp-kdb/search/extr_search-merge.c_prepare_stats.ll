; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_prepare_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_prepare_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@now = common dso_local global i32 0, align 4
@start_time = common dso_local global i32 0, align 4
@stats_buff = common dso_local global i32 0, align 4
@STATS_BUFF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [322 x i8] c"start_time\09%d\0Acurrent_time\09%d\0Auptime\09%d\0Anetwork_connections\09%d\0Amax_network_connections\09%d\0Aoutbound_connections_config\09%d\0Aoutbound_connections\09%d\0Aoutbound_connections_active\09%d\0Aactive_gathers\09%d\0Aactive_network_events\09%d\0Aused_network_buffers\09%d\0Amax_network_buffers\09%d\0Anetwork_buffer_size\09%d\0Aqueries_total\09%lld\0Aqps\09%.3f\0AEND\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@CSN = common dso_local global i32 0, align 4
@outbound_connections = common dso_local global i32 0, align 4
@active_outbound_connections = common dso_local global i32 0, align 4
@active_gathers = common dso_local global i32 0, align 4
@ev_heap_size = common dso_local global i32 0, align 4
@NB_used = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@NB_size = common dso_local global i32 0, align 4
@netw_queries = common dso_local global double 0.000000e+00, align 8
@stats_buff_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_stats() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @now, align 4
  %3 = load i32, i32* @start_time, align 4
  %4 = sub nsw i32 %2, %3
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @stats_buff, align 4
  %6 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %7 = load i32, i32* @start_time, align 4
  %8 = load i32, i32* @now, align 4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @active_connections, align 4
  %11 = load i32, i32* @maxconn, align 4
  %12 = load i32, i32* @CSN, align 4
  %13 = load i32, i32* @outbound_connections, align 4
  %14 = load i32, i32* @active_outbound_connections, align 4
  %15 = load i32, i32* @active_gathers, align 4
  %16 = load i32, i32* @ev_heap_size, align 4
  %17 = load i32, i32* @NB_used, align 4
  %18 = load i32, i32* @NB_max, align 4
  %19 = load i32, i32* @NB_size, align 4
  %20 = load double, double* @netw_queries, align 8
  %21 = load double, double* @netw_queries, align 8
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @safe_div(double %21, i32 %22)
  %24 = call i32 @snprintf(i32 %5, i32 %6, i8* getelementptr inbounds ([322 x i8], [322 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, double %20, i32 %23)
  store i32 %24, i32* @stats_buff_len, align 4
  ret i32 %24
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32) #1

declare dso_local i32 @safe_div(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

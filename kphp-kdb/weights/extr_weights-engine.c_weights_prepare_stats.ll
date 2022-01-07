; ModuleID = '/home/carl/AnghaBench/kphp-kdb/weights/extr_weights-engine.c_weights_prepare_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/weights/extr_weights-engine.c_weights_prepare_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@stats_buff = common dso_local global i32 0, align 4
@STATS_BUFF_SIZE = common dso_local global i32 0, align 4
@AM_GET_MEMORY_USAGE_SELF = common dso_local global i32 0, align 4
@SB_BINLOG = common dso_local global i32 0, align 4
@SB_INDEX = common dso_local global i32 0, align 4
@incr_queries = common dso_local global i32 0, align 4
@set_half_life_queries = common dso_local global i32 0, align 4
@at_queries = common dso_local global i32 0, align 4
@get_vector_queries = common dso_local global i32 0, align 4
@tot_vectors = common dso_local global i32 0, align 4
@tot_amortization_tables = common dso_local global i32 0, align 4
@tot_counters_arrays = common dso_local global i32 0, align 4
@tot_subscriptions = common dso_local global i32 0, align 4
@vector_hash_prime = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"half_life.avg\09%.3lf\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"version\09%s\0A\00", align 1
@FullVersionStr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @weights_prepare_stats(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %5 = load %struct.connection*, %struct.connection** %2, align 8
  %6 = load i32, i32* @stats_buff, align 4
  %7 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %8 = call i32 @sb_prepare(%struct.TYPE_8__* %3, %struct.connection* %5, i32 %6, i32 %7)
  %9 = load i32, i32* @AM_GET_MEMORY_USAGE_SELF, align 4
  %10 = call i32 @sb_memory(%struct.TYPE_8__* %3, i32 %9)
  %11 = load i32, i32* @SB_BINLOG, align 4
  %12 = load i32, i32* @SB_INDEX, align 4
  %13 = load i32, i32* @incr_queries, align 4
  %14 = call i32 @SB_PRINT_QUERIES(i32 %13)
  %15 = load i32, i32* @set_half_life_queries, align 4
  %16 = call i32 @SB_PRINT_QUERIES(i32 %15)
  %17 = load i32, i32* @at_queries, align 4
  %18 = call i32 @SB_PRINT_QUERIES(i32 %17)
  %19 = load i32, i32* @get_vector_queries, align 4
  %20 = call i32 @SB_PRINT_QUERIES(i32 %19)
  %21 = load i32, i32* @tot_vectors, align 4
  %22 = call i32 @SB_PRINT_I32(i32 %21)
  %23 = load i32, i32* @tot_amortization_tables, align 4
  %24 = call i32 @SB_PRINT_I32(i32 %23)
  %25 = load i32, i32* @tot_counters_arrays, align 4
  %26 = call i32 @SB_PRINT_I32(i32 %25)
  %27 = load i32, i32* @tot_subscriptions, align 4
  %28 = call i32 @SB_PRINT_I32(i32 %27)
  %29 = load i32, i32* @vector_hash_prime, align 4
  %30 = call i32 @SB_PRINT_I32(i32 %29)
  %31 = call i32 @weights_half_life_stats(%struct.TYPE_7__* %4)
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @SB_PRINT_I32(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SB_PRINT_I32(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sb_printf(%struct.TYPE_8__* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @FullVersionStr, align 4
  %42 = call i32 @sb_printf(%struct.TYPE_8__* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  ret i32 %44
}

declare dso_local i32 @sb_prepare(%struct.TYPE_8__*, %struct.connection*, i32, i32) #1

declare dso_local i32 @sb_memory(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @SB_PRINT_QUERIES(i32) #1

declare dso_local i32 @SB_PRINT_I32(i32) #1

declare dso_local i32 @weights_half_life_stats(%struct.TYPE_7__*) #1

declare dso_local i32 @sb_printf(%struct.TYPE_8__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

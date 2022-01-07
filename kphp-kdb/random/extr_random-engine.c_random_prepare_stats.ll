; ModuleID = '/home/carl/AnghaBench/kphp-kdb/random/extr_random-engine.c_random_prepare_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/random/extr_random-engine.c_random_prepare_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_5__ = type { i32 }

@stats_buff = common dso_local global i32 0, align 4
@STATS_BUFF_SIZE = common dso_local global i32 0, align 4
@AM_GET_MEMORY_USAGE_SELF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"version\09%s\0A\00", align 1
@FullVersionStr = common dso_local global i32 0, align 4
@get_queries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @random_prepare_stats(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = call i32 (...) @dyn_update_stats()
  %5 = load %struct.connection*, %struct.connection** %2, align 8
  %6 = load i32, i32* @stats_buff, align 4
  %7 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %8 = call i32 @sb_prepare(%struct.TYPE_5__* %3, %struct.connection* %5, i32 %6, i32 %7)
  %9 = load i32, i32* @AM_GET_MEMORY_USAGE_SELF, align 4
  %10 = call i32 @sb_memory(%struct.TYPE_5__* %3, i32 %9)
  %11 = load i32, i32* @FullVersionStr, align 4
  %12 = call i32 @sb_printf(%struct.TYPE_5__* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @get_queries, align 4
  %14 = call i32 @SB_PRINT_QUERIES(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  ret i32 %16
}

declare dso_local i32 @dyn_update_stats(...) #1

declare dso_local i32 @sb_prepare(%struct.TYPE_5__*, %struct.connection*, i32, i32) #1

declare dso_local i32 @sb_memory(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @sb_printf(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @SB_PRINT_QUERIES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

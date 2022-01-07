; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-simulator.c_params.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-simulator.c_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"disk_size\09%lld(%s)\0A\00", align 1
@simulation_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"download_speed\09%lld(%s/sec)\0A\00", align 1
@delay_between_priority_lists_requests = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"default_file_size\09%lld(%s)\0A\00", align 1
@init_using_greedy_strategy = common dso_local global i32 0, align 4
@amortization_counters_initialization_string = common dso_local global i32 0, align 4
@optimization = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @params() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_params, i32 0, i32 2), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_params, i32 0, i32 2), align 4
  %4 = call i32 @human_readable_size(i32 %3)
  %5 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %4)
  %6 = load i32, i32* @stderr, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_params, i32 0, i32 1), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_params, i32 0, i32 1), align 4
  %9 = call i32 @human_readable_size(i32 %8)
  %10 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 %9)
  %11 = load i32, i32* @delay_between_priority_lists_requests, align 4
  %12 = call i32 @PRINT_PARAM_I64(i32 %11)
  %13 = load i32, i32* @stderr, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_params, i32 0, i32 0), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_params, i32 0, i32 0), align 4
  %16 = call i32 @human_readable_size(i32 %15)
  %17 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %14, i32 %16)
  %18 = load i32, i32* @init_using_greedy_strategy, align 4
  %19 = call i32 @PRINT_PARAM_I32(i32 %18)
  %20 = load i32, i32* @amortization_counters_initialization_string, align 4
  %21 = call i32 @PRINT_PARAM_STR(i32 %20)
  %22 = load i32, i32* @optimization, align 4
  %23 = call i32 @PRINT_PARAM_I32(i32 %22)
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fflush(i32 %24)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @human_readable_size(i32) #1

declare dso_local i32 @PRINT_PARAM_I64(i32) #1

declare dso_local i32 @PRINT_PARAM_I32(i32) #1

declare dso_local i32 @PRINT_PARAM_STR(i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

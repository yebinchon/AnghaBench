; ModuleID = '/home/carl/AnghaBench/jemalloc/test/unit/extr_prof_log.c_assert_log_empty.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/unit/extr_prof_log.c_assert_log_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"The log has backtraces; it isn't empty\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"The log has threads; it isn't empty\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"The log has allocations; it isn't empty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @assert_log_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_log_empty() #0 {
  %1 = call i32 (...) @prof_log_bt_count()
  %2 = call i32 @assert_zu_eq(i32 %1, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (...) @prof_log_thr_count()
  %4 = call i32 @assert_zu_eq(i32 %3, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 (...) @prof_log_alloc_count()
  %6 = call i32 @assert_zu_eq(i32 %5, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert_zu_eq(i32, i32, i8*) #1

declare dso_local i32 @prof_log_bt_count(...) #1

declare dso_local i32 @prof_log_thr_count(...) #1

declare dso_local i32 @prof_log_alloc_count(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

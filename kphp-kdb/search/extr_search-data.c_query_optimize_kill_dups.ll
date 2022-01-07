; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_query_optimize_kill_dups.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_query_optimize_kill_dups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tot_query_nodes_list = common dso_local global i64 0, align 8
@tot_query_nodes_kill_dup = common dso_local global i64 0, align 8
@Q_root = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @query_optimize_kill_dups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_optimize_kill_dups() #0 {
  store i64 0, i64* @tot_query_nodes_list, align 8
  store i64 0, i64* @tot_query_nodes_kill_dup, align 8
  %1 = load i32, i32* @Q_root, align 4
  %2 = call i32 @query_convert_to_cumulatative_expression(i32 %1)
  %3 = load i32, i32* @Q_root, align 4
  %4 = call i32 @query_kill_duplicate_words(i32 %3)
  store i32 %4, i32* @Q_root, align 4
  ret void
}

declare dso_local i32 @query_convert_to_cumulatative_expression(i32) #1

declare dso_local i32 @query_kill_duplicate_words(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

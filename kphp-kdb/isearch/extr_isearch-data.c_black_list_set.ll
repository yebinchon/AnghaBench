; ModuleID = '/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_black_list_set.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_black_list_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_isearch_black_list = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @black_list_set(%struct.lev_isearch_black_list* %0) #0 {
  %2 = alloca %struct.lev_isearch_black_list*, align 8
  store %struct.lev_isearch_black_list* %0, %struct.lev_isearch_black_list** %2, align 8
  %3 = load %struct.lev_isearch_black_list*, %struct.lev_isearch_black_list** %2, align 8
  %4 = getelementptr inbounds %struct.lev_isearch_black_list, %struct.lev_isearch_black_list* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.lev_isearch_black_list*, %struct.lev_isearch_black_list** %2, align 8
  %7 = getelementptr inbounds %struct.lev_isearch_black_list, %struct.lev_isearch_black_list* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 1
  %10 = call i32 @black_list_set_string(i32 %5, i32 %9)
  ret i32 1
}

declare dso_local i32 @black_list_set_string(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

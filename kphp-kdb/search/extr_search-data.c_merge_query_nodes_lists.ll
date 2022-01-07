; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_merge_query_nodes_lists.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_merge_query_nodes_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_nodes_list = type { %struct.query_nodes_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.query_nodes_list*, %struct.query_nodes_list*)* @merge_query_nodes_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_query_nodes_lists(%struct.query_nodes_list* %0, %struct.query_nodes_list* %1) #0 {
  %3 = alloca %struct.query_nodes_list*, align 8
  %4 = alloca %struct.query_nodes_list*, align 8
  store %struct.query_nodes_list* %0, %struct.query_nodes_list** %3, align 8
  store %struct.query_nodes_list* %1, %struct.query_nodes_list** %4, align 8
  br label %5

5:                                                ; preds = %10, %2
  %6 = load %struct.query_nodes_list*, %struct.query_nodes_list** %3, align 8
  %7 = getelementptr inbounds %struct.query_nodes_list, %struct.query_nodes_list* %6, i32 0, i32 0
  %8 = load %struct.query_nodes_list*, %struct.query_nodes_list** %7, align 8
  %9 = icmp ne %struct.query_nodes_list* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load %struct.query_nodes_list*, %struct.query_nodes_list** %3, align 8
  %12 = getelementptr inbounds %struct.query_nodes_list, %struct.query_nodes_list* %11, i32 0, i32 0
  %13 = load %struct.query_nodes_list*, %struct.query_nodes_list** %12, align 8
  store %struct.query_nodes_list* %13, %struct.query_nodes_list** %3, align 8
  br label %5

14:                                               ; preds = %5
  %15 = load %struct.query_nodes_list*, %struct.query_nodes_list** %4, align 8
  %16 = load %struct.query_nodes_list*, %struct.query_nodes_list** %3, align 8
  %17 = getelementptr inbounds %struct.query_nodes_list, %struct.query_nodes_list* %16, i32 0, i32 0
  store %struct.query_nodes_list* %15, %struct.query_nodes_list** %17, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

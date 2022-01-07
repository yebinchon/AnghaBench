; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_binlog_wait_time_restart_all_finished.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_binlog_wait_time_restart_all_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binlog_wait_query = type { {}*, %struct.binlog_wait_query* }

@next_binlog_wait_time = common dso_local global i32 0, align 4
@binlog_wait_time_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_binlog_wait_time_restart_all_finished() #0 {
  %1 = alloca %struct.binlog_wait_query*, align 8
  br label %2

2:                                                ; preds = %6, %0
  %3 = load i32, i32* @next_binlog_wait_time, align 4
  %4 = call i64 @lookup_binlog_time(i32 %3)
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  %7 = load i32, i32* @binlog_wait_time_tree, align 4
  %8 = call %struct.binlog_wait_query* @tree_get_min_binlog_wait(i32 %7)
  %9 = call i32 @assert(%struct.binlog_wait_query* %8)
  %10 = load i32, i32* @binlog_wait_time_tree, align 4
  %11 = call %struct.binlog_wait_query* @tree_get_min_binlog_wait(i32 %10)
  %12 = getelementptr inbounds %struct.binlog_wait_query, %struct.binlog_wait_query* %11, i32 0, i32 1
  %13 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %12, align 8
  store %struct.binlog_wait_query* %13, %struct.binlog_wait_query** %1, align 8
  %14 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %1, align 8
  %15 = call i32 @assert(%struct.binlog_wait_query* %14)
  %16 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %1, align 8
  %17 = getelementptr inbounds %struct.binlog_wait_query, %struct.binlog_wait_query* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.binlog_wait_query*)**
  %19 = load i32 (%struct.binlog_wait_query*)*, i32 (%struct.binlog_wait_query*)** %18, align 8
  %20 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %1, align 8
  %21 = call i32 %19(%struct.binlog_wait_query* %20)
  %22 = load i32, i32* @binlog_wait_time_tree, align 4
  %23 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %1, align 8
  %24 = call i32 @tree_delete_binlog_wait(i32 %22, %struct.binlog_wait_query* %23)
  store i32 %24, i32* @binlog_wait_time_tree, align 4
  %25 = call i32 (...) @tl_update_next_binlog_wait_time()
  %26 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %1, align 8
  %27 = call i32 @zfree(%struct.binlog_wait_query* %26, i32 16)
  br label %2

28:                                               ; preds = %2
  ret void
}

declare dso_local i64 @lookup_binlog_time(i32) #1

declare dso_local i32 @assert(%struct.binlog_wait_query*) #1

declare dso_local %struct.binlog_wait_query* @tree_get_min_binlog_wait(i32) #1

declare dso_local i32 @tree_delete_binlog_wait(i32, %struct.binlog_wait_query*) #1

declare dso_local i32 @tl_update_next_binlog_wait_time(...) #1

declare dso_local i32 @zfree(%struct.binlog_wait_query*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

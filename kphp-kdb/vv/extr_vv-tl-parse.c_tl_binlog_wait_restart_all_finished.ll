; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_binlog_wait_restart_all_finished.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_binlog_wait_restart_all_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binlog_wait_query = type { i32 (%struct.binlog_wait_query*)* }
%struct.TYPE_2__ = type { %struct.binlog_wait_query* }

@next_binlog_wait_pos = common dso_local global i64 0, align 8
@binlog_wait_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_binlog_wait_restart_all_finished() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.binlog_wait_query*, align 8
  %3 = call i64 (...) @log_last_pos()
  store i64 %3, i64* %1, align 8
  br label %4

4:                                                ; preds = %8, %0
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @next_binlog_wait_pos, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %8, label %26

8:                                                ; preds = %4
  %9 = load i32, i32* @binlog_wait_tree, align 4
  %10 = call %struct.TYPE_2__* @tree_get_min_binlog_wait(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %11, align 8
  store %struct.binlog_wait_query* %12, %struct.binlog_wait_query** %2, align 8
  %13 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %2, align 8
  %14 = call i32 @assert(%struct.binlog_wait_query* %13)
  %15 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %2, align 8
  %16 = getelementptr inbounds %struct.binlog_wait_query, %struct.binlog_wait_query* %15, i32 0, i32 0
  %17 = load i32 (%struct.binlog_wait_query*)*, i32 (%struct.binlog_wait_query*)** %16, align 8
  %18 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %2, align 8
  %19 = call i32 %17(%struct.binlog_wait_query* %18)
  %20 = load i32, i32* @binlog_wait_tree, align 4
  %21 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %2, align 8
  %22 = call i32 @tree_delete_binlog_wait(i32 %20, %struct.binlog_wait_query* %21)
  store i32 %22, i32* @binlog_wait_tree, align 4
  %23 = call i32 (...) @tl_update_next_binlog_wait_pos()
  %24 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %2, align 8
  %25 = call i32 @zfree(%struct.binlog_wait_query* %24, i32 8)
  br label %4

26:                                               ; preds = %4
  ret void
}

declare dso_local i64 @log_last_pos(...) #1

declare dso_local %struct.TYPE_2__* @tree_get_min_binlog_wait(i32) #1

declare dso_local i32 @assert(%struct.binlog_wait_query*) #1

declare dso_local i32 @tree_delete_binlog_wait(i32, %struct.binlog_wait_query*) #1

declare dso_local i32 @tl_update_next_binlog_wait_pos(...) #1

declare dso_local i32 @zfree(%struct.binlog_wait_query*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

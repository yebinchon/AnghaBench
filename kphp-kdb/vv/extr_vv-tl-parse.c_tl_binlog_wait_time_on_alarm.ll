; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_binlog_wait_time_on_alarm.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_binlog_wait_time_on_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binlog_wait_query = type { %struct.tl_saved_query* }
%struct.tl_saved_query = type { i32, i32 (%struct.tl_saved_query*)*, i32, i32 }

@binlog_wait_time_tree = common dso_local global i32 0, align 4
@expired_aio_queries = common dso_local global i32 0, align 4
@TL_ERROR_BINLOG_WAIT_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_binlog_wait_time_on_alarm(%struct.binlog_wait_query* %0) #0 {
  %2 = alloca %struct.binlog_wait_query*, align 8
  %3 = alloca %struct.tl_saved_query*, align 8
  store %struct.binlog_wait_query* %0, %struct.binlog_wait_query** %2, align 8
  %4 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %2, align 8
  %5 = getelementptr inbounds %struct.binlog_wait_query, %struct.binlog_wait_query* %4, i32 0, i32 0
  %6 = load %struct.tl_saved_query*, %struct.tl_saved_query** %5, align 8
  store %struct.tl_saved_query* %6, %struct.tl_saved_query** %3, align 8
  %7 = load i32, i32* @binlog_wait_time_tree, align 4
  %8 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %2, align 8
  %9 = call i32 @tree_delete_binlog_wait(i32 %7, %struct.binlog_wait_query* %8)
  store i32 %9, i32* @binlog_wait_time_tree, align 4
  %10 = call i32 (...) @tl_update_next_binlog_wait_time()
  %11 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %12 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 8
  %15 = load i32, i32* @expired_aio_queries, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @expired_aio_queries, align 4
  %17 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %18 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @TL_ERROR_BINLOG_WAIT_TIMEOUT, align 4
  %23 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %24 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %26 = call i32 @tl_aio_fail_start(%struct.tl_saved_query* %25)
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %29 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %31 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  %35 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %36 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %35, i32 0, i32 1
  %37 = load i32 (%struct.tl_saved_query*)*, i32 (%struct.tl_saved_query*)** %36, align 8
  %38 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %39 = call i32 %37(%struct.tl_saved_query* %38)
  %40 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %41 = call i32 @zfree(%struct.tl_saved_query* %40, i32 24)
  br label %42

42:                                               ; preds = %34, %27
  ret void
}

declare dso_local i32 @tree_delete_binlog_wait(i32, %struct.binlog_wait_query*) #1

declare dso_local i32 @tl_update_next_binlog_wait_time(...) #1

declare dso_local i32 @tl_aio_fail_start(%struct.tl_saved_query*) #1

declare dso_local i32 @zfree(%struct.tl_saved_query*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

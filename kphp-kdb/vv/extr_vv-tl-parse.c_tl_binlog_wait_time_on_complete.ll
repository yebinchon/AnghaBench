; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_binlog_wait_time_on_complete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_binlog_wait_time_on_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binlog_wait_query = type { i64, i64, i32, i32, %struct.tl_saved_query* }
%struct.tl_saved_query = type { i32, i32 }

@precise_now = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_binlog_wait_time_on_complete(%struct.binlog_wait_query* %0) #0 {
  %2 = alloca %struct.binlog_wait_query*, align 8
  %3 = alloca %struct.tl_saved_query*, align 8
  %4 = alloca i64, align 8
  store %struct.binlog_wait_query* %0, %struct.binlog_wait_query** %2, align 8
  %5 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %2, align 8
  %6 = getelementptr inbounds %struct.binlog_wait_query, %struct.binlog_wait_query* %5, i32 0, i32 4
  %7 = load %struct.tl_saved_query*, %struct.tl_saved_query** %6, align 8
  store %struct.tl_saved_query* %7, %struct.tl_saved_query** %3, align 8
  %8 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %2, align 8
  %9 = getelementptr inbounds %struct.binlog_wait_query, %struct.binlog_wait_query* %8, i32 0, i32 3
  %10 = call i32 @remove_event_timer(i32* %9)
  %11 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %12 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %2, align 8
  %16 = getelementptr inbounds %struct.binlog_wait_query, %struct.binlog_wait_query* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @lookup_binlog_time(i32 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call i64 (...) @log_last_pos()
  %24 = load i64, i64* %4, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %1
  %27 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %28 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %2, align 8
  %35 = getelementptr inbounds %struct.binlog_wait_query, %struct.binlog_wait_query* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %2, align 8
  %38 = getelementptr inbounds %struct.binlog_wait_query, %struct.binlog_wait_query* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load i64, i64* @precise_now, align 8
  %42 = sub nsw i64 %40, %41
  %43 = call i32 @tl_binlog_wait_pos_add(%struct.tl_saved_query* %32, i64 %33, i64 %42)
  br label %44

44:                                               ; preds = %31, %26, %1
  %45 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %46 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %51 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load %struct.tl_saved_query*, %struct.tl_saved_query** %3, align 8
  %56 = call i32 @add_finished_query(%struct.tl_saved_query* %55)
  br label %57

57:                                               ; preds = %54, %49, %44
  ret void
}

declare dso_local i32 @remove_event_timer(i32*) #1

declare dso_local i64 @lookup_binlog_time(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @log_last_pos(...) #1

declare dso_local i32 @tl_binlog_wait_pos_add(%struct.tl_saved_query*, i64, i64) #1

declare dso_local i32 @add_finished_query(%struct.tl_saved_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_changed.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.string_list_item* }
%struct.string_list_item = type { %struct.wt_status_change_data* }
%struct.wt_status_change_data = type { i64 }

@DIFF_STATUS_UNMERGED = common dso_local global i64 0, align 8
@WT_STATUS_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*)* @wt_longstatus_print_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_longstatus_print_changed(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wt_status_change_data*, align 8
  %7 = alloca %struct.string_list_item*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  %8 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %9 = call i32 @wt_status_check_worktree_changes(%struct.wt_status* %8, i32* %4)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %60

13:                                               ; preds = %1
  %14 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @wt_longstatus_print_dirty_header(%struct.wt_status* %14, i32 %17, i32 %18)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %54, %13
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %23 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %20
  %28 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %29 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.string_list_item*, %struct.string_list_item** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %31, i64 %33
  store %struct.string_list_item* %34, %struct.string_list_item** %7, align 8
  %35 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %36 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %35, i32 0, i32 0
  %37 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %36, align 8
  store %struct.wt_status_change_data* %37, %struct.wt_status_change_data** %6, align 8
  %38 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %6, align 8
  %39 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %27
  %43 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %6, align 8
  %44 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DIFF_STATUS_UNMERGED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %27
  br label %54

49:                                               ; preds = %42
  %50 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %51 = load i32, i32* @WT_STATUS_CHANGED, align 4
  %52 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %53 = call i32 @wt_longstatus_print_change_data(%struct.wt_status* %50, i32 %51, %struct.string_list_item* %52)
  br label %54

54:                                               ; preds = %49, %48
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %20

57:                                               ; preds = %20
  %58 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %59 = call i32 @wt_longstatus_print_trailer(%struct.wt_status* %58)
  br label %60

60:                                               ; preds = %57, %12
  ret void
}

declare dso_local i32 @wt_status_check_worktree_changes(%struct.wt_status*, i32*) #1

declare dso_local i32 @wt_longstatus_print_dirty_header(%struct.wt_status*, i32, i32) #1

declare dso_local i32 @wt_longstatus_print_change_data(%struct.wt_status*, i32, %struct.string_list_item*) #1

declare dso_local i32 @wt_longstatus_print_trailer(%struct.wt_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

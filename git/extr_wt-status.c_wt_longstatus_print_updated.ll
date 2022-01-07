; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_updated.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_updated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.string_list_item* }
%struct.string_list_item = type { %struct.wt_status_change_data* }
%struct.wt_status_change_data = type { i64 }

@DIFF_STATUS_UNMERGED = common dso_local global i64 0, align 8
@WT_STATUS_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*)* @wt_longstatus_print_updated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_longstatus_print_updated(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.wt_status_change_data*, align 8
  %6 = alloca %struct.string_list_item*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %47, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %10 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %7
  %15 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %16 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.string_list_item*, %struct.string_list_item** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %18, i64 %20
  store %struct.string_list_item* %21, %struct.string_list_item** %6, align 8
  %22 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %23 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %22, i32 0, i32 0
  %24 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %23, align 8
  store %struct.wt_status_change_data* %24, %struct.wt_status_change_data** %5, align 8
  %25 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %26 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %14
  %30 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %31 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DIFF_STATUS_UNMERGED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %14
  br label %47

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %41 = call i32 @wt_longstatus_print_cached_header(%struct.wt_status* %40)
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %44 = load i32, i32* @WT_STATUS_UPDATED, align 4
  %45 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %46 = call i32 @wt_longstatus_print_change_data(%struct.wt_status* %43, i32 %44, %struct.string_list_item* %45)
  br label %47

47:                                               ; preds = %42, %35
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %7

50:                                               ; preds = %7
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %55 = call i32 @wt_longstatus_print_trailer(%struct.wt_status* %54)
  br label %56

56:                                               ; preds = %53, %50
  ret void
}

declare dso_local i32 @wt_longstatus_print_cached_header(%struct.wt_status*) #1

declare dso_local i32 @wt_longstatus_print_change_data(%struct.wt_status*, i32, %struct.string_list_item*) #1

declare dso_local i32 @wt_longstatus_print_trailer(%struct.wt_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

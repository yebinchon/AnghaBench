; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_check_worktree_changes.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_check_worktree_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wt_status_change_data* }
%struct.wt_status_change_data = type { i64, i64 }

@DIFF_STATUS_UNMERGED = common dso_local global i64 0, align 8
@DIFF_STATUS_DELETED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wt_status*, i32*)* @wt_status_check_worktree_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wt_status_check_worktree_changes(%struct.wt_status* %0, i32* %1) #0 {
  %3 = alloca %struct.wt_status*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wt_status_change_data*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %56, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %12 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %9
  %17 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %18 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %24, align 8
  store %struct.wt_status_change_data* %25, %struct.wt_status_change_data** %7, align 8
  %26 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %7, align 8
  %27 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %16
  %31 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %7, align 8
  %32 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DIFF_STATUS_UNMERGED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %16
  br label %56

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %7, align 8
  %43 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32*, i32** %4, align 8
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %46, %41
  %49 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %7, align 8
  %50 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DIFF_STATUS_DELETED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 -1, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %48
  br label %56

56:                                               ; preds = %55, %36
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %9

59:                                               ; preds = %9
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

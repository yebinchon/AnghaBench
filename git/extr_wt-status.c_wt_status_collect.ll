; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_collect.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i32, %struct.TYPE_2__, i64, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"worktrees\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"initial\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"untracked\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wt_status_collect(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  %3 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %4 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @trace2_region_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %5)
  %7 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %8 = call i32 @wt_status_collect_changes_worktree(%struct.wt_status* %7)
  %9 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %10 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @trace2_region_leave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %14 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %19 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @trace2_region_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %23 = call i32 @wt_status_collect_changes_initial(%struct.wt_status* %22)
  %24 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %25 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @trace2_region_leave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  br label %39

28:                                               ; preds = %1
  %29 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %30 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @trace2_region_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %34 = call i32 @wt_status_collect_changes_index(%struct.wt_status* %33)
  %35 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %36 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @trace2_region_leave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %28, %17
  %40 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %41 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @trace2_region_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %45 = call i32 @wt_status_collect_untracked(%struct.wt_status* %44)
  %46 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %47 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @trace2_region_leave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %51 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %54 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %53, i32 0, i32 1
  %55 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %56 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %39
  %60 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %61 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @strcmp(i64 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %59, %39
  %67 = phi i1 [ false, %39 ], [ %65, %59 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @wt_status_get_state(i32 %52, %struct.TYPE_2__* %54, i32 %68)
  %70 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %71 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %77 = call i32 @has_unmerged(%struct.wt_status* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %81 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %75, %66
  ret void
}

declare dso_local i32 @trace2_region_enter(i8*, i8*, i32) #1

declare dso_local i32 @wt_status_collect_changes_worktree(%struct.wt_status*) #1

declare dso_local i32 @trace2_region_leave(i8*, i8*, i32) #1

declare dso_local i32 @wt_status_collect_changes_initial(%struct.wt_status*) #1

declare dso_local i32 @wt_status_collect_changes_index(%struct.wt_status*) #1

declare dso_local i32 @wt_status_collect_untracked(%struct.wt_status*) #1

declare dso_local i32 @wt_status_get_state(i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @has_unmerged(%struct.wt_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

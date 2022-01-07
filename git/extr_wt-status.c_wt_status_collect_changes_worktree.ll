; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_collect_changes_worktree.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_collect_changes_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.rev_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i64, %struct.wt_status*, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@DIFF_FORMAT_CALLBACK = common dso_local global i32 0, align 4
@wt_status_collect_changed_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*)* @wt_status_collect_changes_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_status_collect_changes_worktree(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  %3 = alloca %struct.rev_info, align 8
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  %4 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %5 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @repo_init_revisions(i32 %6, %struct.rev_info* %3, i32* null)
  %8 = call i32 @setup_revisions(i32 0, i32* null, %struct.rev_info* %3, i32* null)
  %9 = load i32, i32* @DIFF_FORMAT_CALLBACK, align 4
  %10 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %20 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %29 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32 1, i32* %35, align 4
  %36 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %37 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %38 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @handle_ignore_submodules_arg(%struct.TYPE_4__* %36, i32 %39)
  br label %41

41:                                               ; preds = %32, %27
  %42 = load i32, i32* @wt_status_collect_changed_cb, align 4
  %43 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %46 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  store %struct.wt_status* %45, %struct.wt_status** %47, align 8
  %48 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %49 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %54 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  br label %60

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i64 [ %55, %52 ], [ %59, %56 ]
  %62 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %65 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %70 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  br label %76

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i64 [ %71, %68 ], [ %75, %72 ]
  %78 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %81 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %86 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  br label %92

88:                                               ; preds = %76
  %89 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  br label %92

92:                                               ; preds = %88, %84
  %93 = phi i64 [ %87, %84 ], [ %91, %88 ]
  %94 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  %96 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 0
  %97 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %98 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %97, i32 0, i32 3
  %99 = call i32 @copy_pathspec(i32* %96, i32* %98)
  %100 = call i32 @run_diff_files(%struct.rev_info* %3, i32 0)
  ret void
}

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i32*) #1

declare dso_local i32 @setup_revisions(i32, i32*, %struct.rev_info*, i32*) #1

declare dso_local i32 @handle_ignore_submodules_arg(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @copy_pathspec(i32*, i32*) #1

declare dso_local i32 @run_diff_files(%struct.rev_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

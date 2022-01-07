; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_collect_changes_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_collect_changes_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i8*, i64, i64, i64, i32, i32, i64, i32 }
%struct.rev_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i64, %struct.wt_status*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.setup_revision_opt = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@DIFF_FORMAT_CALLBACK = common dso_local global i32 0, align 4
@wt_status_collect_updated_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*)* @wt_status_collect_changes_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_status_collect_changes_index(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  %3 = alloca %struct.rev_info, align 8
  %4 = alloca %struct.setup_revision_opt, align 4
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  %5 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %6 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @repo_init_revisions(i32 %7, %struct.rev_info* %3, i32* null)
  %9 = call i32 @memset(%struct.setup_revision_opt* %4, i32 0, i32 4)
  %10 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %11 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (...) @empty_tree_oid_hex()
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %18 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  br label %20

20:                                               ; preds = %16, %14
  %21 = phi i32 [ %15, %14 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.setup_revision_opt, %struct.setup_revision_opt* %4, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = call i32 @setup_revisions(i32 0, i32* null, %struct.rev_info* %3, %struct.setup_revision_opt* %4)
  %24 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %30 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %35 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %36 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @handle_ignore_submodules_arg(%struct.TYPE_4__* %34, i8* %37)
  br label %42

39:                                               ; preds = %20
  %40 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %41 = call i32 @handle_ignore_submodules_arg(%struct.TYPE_4__* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %33
  %43 = load i32, i32* @DIFF_FORMAT_CALLBACK, align 4
  %44 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @wt_status_collect_updated_cb, align 4
  %49 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %52 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  store %struct.wt_status* %51, %struct.wt_status** %53, align 8
  %54 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %55 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %42
  %59 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %60 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  br label %66

62:                                               ; preds = %42
  %63 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i64 [ %61, %58 ], [ %65, %62 ]
  %68 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %71 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %76 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  br label %82

78:                                               ; preds = %66
  %79 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi i64 [ %77, %74 ], [ %81, %78 ]
  %84 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %87 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp sge i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %92 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  br label %98

94:                                               ; preds = %82
  %95 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i64 [ %93, %90 ], [ %97, %94 ]
  %100 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  store i64 %99, i64* %101, align 8
  %102 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 0
  %103 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %104 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %103, i32 0, i32 4
  %105 = call i32 @copy_pathspec(i32* %102, i32* %104)
  %106 = call i32 @run_diff_index(%struct.rev_info* %3, i32 1)
  ret void
}

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i32*) #1

declare dso_local i32 @memset(%struct.setup_revision_opt*, i32, i32) #1

declare dso_local i32 @empty_tree_oid_hex(...) #1

declare dso_local i32 @setup_revisions(i32, i32*, %struct.rev_info*, %struct.setup_revision_opt*) #1

declare dso_local i32 @handle_ignore_submodules_arg(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @copy_pathspec(i32*, i32*) #1

declare dso_local i32 @run_diff_index(%struct.rev_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_verbose.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_verbose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i64, i64, i64, i64, i32, i64, i32, i64, i32 }
%struct.rev_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i64, i8*, i8*, i64, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.setup_revision_opt = type { i32 }

@WT_STATUS_HEADER = common dso_local global i32 0, align 4
@DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4
@stdout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Changes to be committed:\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"c/\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"i/\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"--------------------------------------------------\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Changes not staged for commit:\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"w/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*)* @wt_longstatus_print_verbose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_longstatus_print_verbose(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  %3 = alloca %struct.rev_info, align 8
  %4 = alloca %struct.setup_revision_opt, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  %7 = load i32, i32* @WT_STATUS_HEADER, align 4
  %8 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %9 = call i8* @color(i32 %7, %struct.wt_status* %8)
  store i8* %9, i8** %6, align 8
  %10 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %11 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @repo_init_revisions(i32 %12, %struct.rev_info* %3, i32* null)
  %14 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 10
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = call i32 @memset(%struct.setup_revision_opt* %4, i32 0, i32 4)
  %20 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %21 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 (...) @empty_tree_oid_hex()
  br label %30

26:                                               ; preds = %1
  %27 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %28 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  br label %30

30:                                               ; preds = %26, %24
  %31 = phi i32 [ %25, %24 ], [ %29, %26 ]
  %32 = getelementptr inbounds %struct.setup_revision_opt, %struct.setup_revision_opt* %4, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = call i32 @setup_revisions(i32 0, i32* null, %struct.rev_info* %3, %struct.setup_revision_opt* %4)
  %34 = load i32, i32* @DIFF_FORMAT_PATCH, align 4
  %35 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %40 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %45 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  br label %51

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i64 [ %46, %43 ], [ %50, %47 ]
  %53 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %56 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %61 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  br label %67

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i64 [ %62, %59 ], [ %66, %63 ]
  %69 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %72 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %77 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  br label %83

79:                                               ; preds = %67
  %80 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  br label %83

83:                                               ; preds = %79, %75
  %84 = phi i64 [ %78, %75 ], [ %82, %79 ]
  %85 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %88 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 4
  store i64 %89, i64* %91, align 8
  %92 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 8
  store i64 0, i64* %93, align 8
  %94 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %95 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @stdout, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %83
  %100 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 7
  store i64 0, i64* %101, align 8
  %102 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %103 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @wt_status_add_cut_line(i64 %104)
  br label %106

106:                                              ; preds = %99, %83
  %107 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %108 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %134

111:                                              ; preds = %106
  %112 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %113 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %111
  %117 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %118 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @stdout, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %124 = call i32 @wt_longstatus_print_trailer(%struct.wt_status* %123)
  br label %125

125:                                              ; preds = %122, %116
  %126 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %129 = call i32 @status_printf_ln(%struct.wt_status* %126, i8* %127, i8* %128)
  %130 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 5
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %131, align 8
  %132 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 6
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %133, align 8
  br label %134

134:                                              ; preds = %125, %111, %106
  %135 = call i32 @run_diff_index(%struct.rev_info* %3, i32 1)
  %136 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %137 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = icmp sgt i32 %138, 1
  br i1 %139, label %140, label %158

140:                                              ; preds = %134
  %141 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %142 = call i64 @wt_status_check_worktree_changes(%struct.wt_status* %141, i32* %5)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %140
  %145 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = call i32 @status_printf_ln(%struct.wt_status* %145, i8* %146, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %148 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %151 = call i32 @status_printf_ln(%struct.wt_status* %148, i8* %149, i8* %150)
  %152 = call i32 (...) @setup_work_tree()
  %153 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 5
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %154, align 8
  %155 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %3, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 6
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %156, align 8
  %157 = call i32 @run_diff_files(%struct.rev_info* %3, i32 0)
  br label %158

158:                                              ; preds = %144, %140, %134
  ret void
}

declare dso_local i8* @color(i32, %struct.wt_status*) #1

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i32*) #1

declare dso_local i32 @memset(%struct.setup_revision_opt*, i32, i32) #1

declare dso_local i32 @empty_tree_oid_hex(...) #1

declare dso_local i32 @setup_revisions(i32, i32*, %struct.rev_info*, %struct.setup_revision_opt*) #1

declare dso_local i32 @wt_status_add_cut_line(i64) #1

declare dso_local i32 @wt_longstatus_print_trailer(%struct.wt_status*) #1

declare dso_local i32 @status_printf_ln(%struct.wt_status*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @run_diff_index(%struct.rev_info*, i32) #1

declare dso_local i64 @wt_status_check_worktree_changes(%struct.wt_status*, i32*) #1

declare dso_local i32 @setup_work_tree(...) #1

declare dso_local i32 @run_diff_files(%struct.rev_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

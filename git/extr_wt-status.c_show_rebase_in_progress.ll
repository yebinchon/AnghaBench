; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_show_rebase_in_progress.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_show_rebase_in_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"  (fix conflicts and then run \22git rebase --continue\22)\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"  (use \22git rebase --skip\22 to skip this patch)\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"  (use \22git rebase --abort\22 to check out the original branch)\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"  (all conflicts fixed: run \22git rebase --continue\22)\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"You are currently splitting a commit while rebasing branch '%s' on '%s'.\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"You are currently splitting a commit during a rebase.\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"  (Once your working directory is clean, run \22git rebase --continue\22)\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"You are currently editing a commit while rebasing branch '%s' on '%s'.\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"You are currently editing a commit during a rebase.\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"  (use \22git commit --amend\22 to amend the current commit)\00", align 1
@.str.10 = private unnamed_addr constant [73 x i8] c"  (use \22git rebase --continue\22 once you are satisfied with your changes)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*, i8*)* @show_rebase_in_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_rebase_in_progress(%struct.wt_status* %0, i8* %1) #0 {
  %3 = alloca %struct.wt_status*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 4
  store %struct.wt_status* %0, %struct.wt_status** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @show_rebase_information(%struct.wt_status* %6, i8* %7)
  %9 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %10 = call i64 @has_unmerged(%struct.wt_status* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @print_rebase_state(%struct.wt_status* %13, i8* %14)
  %16 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %17 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %12
  %21 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %21, i8* %22, i32 %23)
  %25 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %25, i8* %26, i32 %27)
  %29 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %29, i8* %30, i32 %31)
  br label %33

33:                                               ; preds = %20, %12
  br label %146

34:                                               ; preds = %2
  %35 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %36 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %34
  %41 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %42 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @git_path_merge_msg(i32 %43)
  %45 = call i32 @stat(i32 %44, %struct.stat* %5)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %40, %34
  %48 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @print_rebase_state(%struct.wt_status* %48, i8* %49)
  %51 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %52 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %59 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %56, i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %47
  br label %145

61:                                               ; preds = %40
  %62 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %63 = call i64 @split_commit_in_progress(%struct.wt_status* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %100

65:                                               ; preds = %61
  %66 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %67 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  %75 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %76 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %80 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %72, i8* %73, i32 %74, i64 %78, i32 %82)
  br label %89

84:                                               ; preds = %65
  %85 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %88 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %85, i8* %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %71
  %90 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %91 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0))
  %98 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %95, i8* %96, i32 %97)
  br label %99

99:                                               ; preds = %94, %89
  br label %144

100:                                              ; preds = %61
  %101 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %102 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %100
  %107 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %108 = load i8*, i8** %4, align 8
  %109 = call i32 @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0))
  %110 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %111 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %115 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %107, i8* %108, i32 %109, i64 %113, i32 %117)
  br label %124

119:                                              ; preds = %100
  %120 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  %123 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %120, i8* %121, i32 %122)
  br label %124

124:                                              ; preds = %119, %106
  %125 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %126 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %124
  %130 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %131 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %129
  %135 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %136 = load i8*, i8** %4, align 8
  %137 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  %138 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %135, i8* %136, i32 %137)
  %139 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %140 = load i8*, i8** %4, align 8
  %141 = call i32 @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.10, i64 0, i64 0))
  %142 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %139, i8* %140, i32 %141)
  br label %143

143:                                              ; preds = %134, %129, %124
  br label %144

144:                                              ; preds = %143, %99
  br label %145

145:                                              ; preds = %144, %60
  br label %146

146:                                              ; preds = %145, %33
  %147 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %148 = call i32 @wt_longstatus_print_trailer(%struct.wt_status* %147)
  ret void
}

declare dso_local i32 @show_rebase_information(%struct.wt_status*, i8*) #1

declare dso_local i64 @has_unmerged(%struct.wt_status*) #1

declare dso_local i32 @print_rebase_state(%struct.wt_status*, i8*) #1

declare dso_local i32 @status_printf_ln(%struct.wt_status*, i8*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @stat(i32, %struct.stat*) #1

declare dso_local i32 @git_path_merge_msg(i32) #1

declare dso_local i64 @split_commit_in_progress(%struct.wt_status*) #1

declare dso_local i32 @wt_longstatus_print_trailer(%struct.wt_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

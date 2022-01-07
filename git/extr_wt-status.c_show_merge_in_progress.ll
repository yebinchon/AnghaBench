; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_show_merge_in_progress.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_show_merge_in_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"You have unmerged paths.\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"  (fix conflicts and run \22git commit\22)\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"  (use \22git merge --abort\22 to abort the merge)\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"All conflicts fixed but you are still merging.\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"  (use \22git commit\22 to conclude merge)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*, i8*)* @show_merge_in_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_merge_in_progress(%struct.wt_status* %0, i8* %1) #0 {
  %3 = alloca %struct.wt_status*, align 8
  %4 = alloca i8*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %6 = call i64 @has_unmerged(%struct.wt_status* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @status_printf_ln(%struct.wt_status* %9, i8* %10, i32 %11)
  %13 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %14 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %8
  %18 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @status_printf_ln(%struct.wt_status* %18, i8* %19, i32 %20)
  %22 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @status_printf_ln(%struct.wt_status* %22, i8* %23, i32 %24)
  br label %26

26:                                               ; preds = %17, %8
  br label %42

27:                                               ; preds = %2
  %28 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 @status_printf_ln(%struct.wt_status* %28, i8* %29, i32 %30)
  %32 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %33 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %40 = call i32 @status_printf_ln(%struct.wt_status* %37, i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %27
  br label %42

42:                                               ; preds = %41, %26
  %43 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %44 = call i32 @wt_longstatus_print_trailer(%struct.wt_status* %43)
  ret void
}

declare dso_local i64 @has_unmerged(%struct.wt_status*) #1

declare dso_local i32 @status_printf_ln(%struct.wt_status*, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @wt_longstatus_print_trailer(%struct.wt_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

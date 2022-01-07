; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_show_revert_in_progress.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_show_revert_in_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Revert currently in progress.\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"You are currently reverting commit %s.\00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"  (fix conflicts and run \22git revert --continue\22)\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"  (run \22git revert --continue\22 to continue)\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"  (all conflicts fixed: run \22git revert --continue\22)\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"  (use \22git revert --skip\22 to skip this patch)\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"  (use \22git revert --abort\22 to cancel the revert operation)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*, i8*)* @show_revert_in_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_revert_in_progress(%struct.wt_status* %0, i8* %1) #0 {
  %3 = alloca %struct.wt_status*, align 8
  %4 = alloca i8*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %6 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i64 @is_null_oid(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %11, i8* %12, i32 %13)
  br label %25

15:                                               ; preds = %2
  %16 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %20 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* @DEFAULT_ABBREV, align 4
  %23 = call i32 @find_unique_abbrev(i32* %21, i32 %22)
  %24 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %16, i8* %17, i32 %18, i32 %23)
  br label %25

25:                                               ; preds = %15, %10
  %26 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %27 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %25
  %31 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %32 = call i64 @has_unmerged(%struct.wt_status* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %35, i8* %36, i32 %37)
  br label %56

39:                                               ; preds = %30
  %40 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %41 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i64 @is_null_oid(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %49 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %46, i8* %47, i32 %48)
  br label %55

50:                                               ; preds = %39
  %51 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %54 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %51, i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  br label %56

56:                                               ; preds = %55, %34
  %57 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %60 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %57, i8* %58, i32 %59)
  %61 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  %64 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %61, i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %56, %25
  %66 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %67 = call i32 @wt_longstatus_print_trailer(%struct.wt_status* %66)
  ret void
}

declare dso_local i64 @is_null_oid(i32*) #1

declare dso_local i32 @status_printf_ln(%struct.wt_status*, i8*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @find_unique_abbrev(i32*, i32) #1

declare dso_local i64 @has_unmerged(%struct.wt_status*) #1

declare dso_local i32 @wt_longstatus_print_trailer(%struct.wt_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

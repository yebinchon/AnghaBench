; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_show_am_in_progress.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_show_am_in_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"You are in the middle of an am session.\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"The current patch is empty.\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"  (fix conflicts and then run \22git am --continue\22)\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"  (use \22git am --skip\22 to skip this patch)\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"  (use \22git am --abort\22 to restore the original branch)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*, i8*)* @show_am_in_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_am_in_progress(%struct.wt_status* %0, i8* %1) #0 {
  %3 = alloca %struct.wt_status*, align 8
  %4 = alloca i8*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @status_printf_ln(%struct.wt_status* %5, i8* %6, i32 %7)
  %9 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %10 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @status_printf_ln(%struct.wt_status* %15, i8* %16, i32 %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %21 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %26 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @status_printf_ln(%struct.wt_status* %31, i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 @status_printf_ln(%struct.wt_status* %36, i8* %37, i32 %38)
  %40 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %43 = call i32 @status_printf_ln(%struct.wt_status* %40, i8* %41, i32 %42)
  br label %44

44:                                               ; preds = %35, %19
  %45 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %46 = call i32 @wt_longstatus_print_trailer(%struct.wt_status* %45)
  ret void
}

declare dso_local i32 @status_printf_ln(%struct.wt_status*, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @wt_longstatus_print_trailer(%struct.wt_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

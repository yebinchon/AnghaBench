; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_show_bisect_in_progress.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_show_bisect_in_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [55 x i8] c"You are currently bisecting, started from branch '%s'.\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"You are currently bisecting.\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"  (use \22git bisect reset\22 to get back to the original branch)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*, i8*)* @show_bisect_in_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_bisect_in_progress(%struct.wt_status* %0, i8* %1) #0 {
  %3 = alloca %struct.wt_status*, align 8
  %4 = alloca i8*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %6 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %15 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %11, i8* %12, i32 %13, i64 %17)
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %20, i8* %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %10
  %25 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %26 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %30, i8* %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %36 = call i32 @wt_longstatus_print_trailer(%struct.wt_status* %35)
  ret void
}

declare dso_local i32 @status_printf_ln(%struct.wt_status*, i8*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @wt_longstatus_print_trailer(%struct.wt_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

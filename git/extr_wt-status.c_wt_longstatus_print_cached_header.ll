; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_cached_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_cached_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i64, i32, i32, i32 }

@WT_STATUS_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Changes to be committed:\00", align 1
@FROM_COMMIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"  (use \22git restore --staged <file>...\22 to unstage)\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"  (use \22git restore --source=%s --staged <file>...\22 to unstage)\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"  (use \22git rm --cached <file>...\22 to unstage)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*)* @wt_longstatus_print_cached_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_longstatus_print_cached_header(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  %3 = alloca i8*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  %4 = load i32, i32* @WT_STATUS_HEADER, align 4
  %5 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %6 = call i8* @color(i32 %4, %struct.wt_status* %5)
  store i8* %6, i8** %3, align 8
  %7 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %7, i8* %8, i32 %9)
  %11 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %12 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %54

16:                                               ; preds = %1
  %17 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %18 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FROM_COMMIT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %54

23:                                               ; preds = %16
  %24 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %25 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %23
  %29 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %30 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @strcmp(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %35, i8* %36, i32 %37)
  br label %47

39:                                               ; preds = %28
  %40 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %44 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %40, i8* %41, i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %39, %34
  br label %53

48:                                               ; preds = %23
  %49 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %52 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %49, i8* %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %47
  br label %54

54:                                               ; preds = %15, %53, %22
  ret void
}

declare dso_local i8* @color(i32, %struct.wt_status*) #1

declare dso_local i32 @status_printf_ln(%struct.wt_status*, i8*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

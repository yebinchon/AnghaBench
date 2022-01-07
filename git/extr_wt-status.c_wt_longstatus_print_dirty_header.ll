; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_dirty_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_dirty_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i32 }

@WT_STATUS_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Changes not staged for commit:\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"  (use \22git add <file>...\22 to update what will be committed)\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"  (use \22git add/rm <file>...\22 to update what will be committed)\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"  (use \22git restore <file>...\22 to discard changes in working directory)\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"  (commit or discard the untracked or modified content in submodules)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*, i32, i32)* @wt_longstatus_print_dirty_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_longstatus_print_dirty_header(%struct.wt_status* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wt_status*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @WT_STATUS_HEADER, align 4
  %9 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %10 = call i8* @color(i32 %8, %struct.wt_status* %9)
  store i8* %10, i8** %7, align 8
  %11 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @status_printf_ln(%struct.wt_status* %11, i8* %12, i32 %13)
  %15 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %16 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %45

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @status_printf_ln(%struct.wt_status* %24, i8* %25, i32 %26)
  br label %33

28:                                               ; preds = %20
  %29 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 @status_printf_ln(%struct.wt_status* %29, i8* %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0))
  %37 = call i32 @status_printf_ln(%struct.wt_status* %34, i8* %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0))
  %44 = call i32 @status_printf_ln(%struct.wt_status* %41, i8* %42, i32 %43)
  br label %45

45:                                               ; preds = %19, %40, %33
  ret void
}

declare dso_local i8* @color(i32, %struct.wt_status*) #1

declare dso_local i32 @status_printf_ln(%struct.wt_status*, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

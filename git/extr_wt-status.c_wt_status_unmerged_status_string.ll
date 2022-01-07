; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_unmerged_status_string.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_unmerged_status_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"both deleted:\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"added by us:\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"deleted by them:\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"added by them:\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"deleted by us:\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"both added:\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"both modified:\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"unhandled unmerged status %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @wt_status_unmerged_status_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wt_status_unmerged_status_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %19 [
    i32 1, label %5
    i32 2, label %7
    i32 3, label %9
    i32 4, label %11
    i32 5, label %13
    i32 6, label %15
    i32 7, label %17
  ]

5:                                                ; preds = %1
  %6 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %2, align 8
  br label %22

7:                                                ; preds = %1
  %8 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %8, i8** %2, align 8
  br label %22

9:                                                ; preds = %1
  %10 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i8* %10, i8** %2, align 8
  br label %22

11:                                               ; preds = %1
  %12 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i8* %12, i8** %2, align 8
  br label %22

13:                                               ; preds = %1
  %14 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  br label %22

15:                                               ; preds = %1
  %16 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i8* %16, i8** %2, align 8
  br label %22

17:                                               ; preds = %1
  %18 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i8* %18, i8** %2, align 8
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @BUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %5, %7, %9, %11, %13, %15, %17, %19
  %23 = load i8*, i8** %2, align 8
  ret i8* %23
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @BUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

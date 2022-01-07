; ModuleID = '/home/carl/AnghaBench/git/extr_diff-no-index.c_get_mode.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff-no-index.c_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@file_from_standard_input = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Could not access '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mode(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stat, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9, %2
  %14 = load i32*, i32** %5, align 8
  store i32 0, i32* %14, align 4
  br label %35

15:                                               ; preds = %9
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** @file_from_standard_input, align 8
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = call i32 @create_ce_mode(i32 438)
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  br label %34

22:                                               ; preds = %15
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @lstat(i8* %23, %struct.stat* %6)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %19
  br label %35

35:                                               ; preds = %34, %13
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @create_ce_mode(i32) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

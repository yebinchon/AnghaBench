; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_check_filename.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_check_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c":/\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c":!\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c":^\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"failed to stat '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_filename(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @skip_prefix(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %5)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %57

16:                                               ; preds = %11
  store i8* null, i8** %4, align 8
  br label %32

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @skip_prefix(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %5)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @skip_prefix(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %5)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21, %17
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %57

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %21
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i8* @prefix_filename(i8* %36, i8* %37)
  store i8* %38, i8** %6, align 8
  store i8* %38, i8** %5, align 8
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @lstat(i8* %40, %struct.stat* %7)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @free(i8* %44)
  store i32 1, i32* %3, align 4
  br label %57

46:                                               ; preds = %39
  %47 = load i32, i32* @errno, align 4
  %48 = call i64 @is_missing_file_error(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @free(i8* %51)
  store i32 0, i32* %3, align 4
  br label %57

53:                                               ; preds = %46
  %54 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @die_errno(i32 %54, i8* %55)
  br label %57

57:                                               ; preds = %53, %50, %43, %29, %15
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i8* @prefix_filename(i8*, i8*) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @is_missing_file_error(i32) #1

declare dso_local i32 @die_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_crlf.c_check_crlf.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_crlf.c_check_crlf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_CRLF_TEXT = common dso_local global i32 0, align 4
@GIT_CRLF_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@GIT_CRLF_TEXT_INPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@GIT_CRLF_AUTO = common dso_local global i32 0, align 4
@GIT_CRLF_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @check_crlf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_crlf(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @GIT_ATTR_IS_TRUE(i8* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @GIT_CRLF_TEXT, align 4
  store i32 %8, i32* %2, align 4
  br label %38

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @GIT_ATTR_IS_FALSE(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @GIT_CRLF_BINARY, align 4
  store i32 %14, i32* %2, align 4
  br label %38

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @GIT_ATTR_IS_UNSPECIFIED(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %34

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @GIT_CRLF_TEXT_INPUT, align 4
  store i32 %25, i32* %2, align 4
  br label %38

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @GIT_CRLF_AUTO, align 4
  store i32 %31, i32* %2, align 4
  br label %38

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33, %19
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* @GIT_CRLF_UNDEFINED, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %30, %24, %13, %7
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @GIT_ATTR_IS_TRUE(i8*) #1

declare dso_local i64 @GIT_ATTR_IS_FALSE(i8*) #1

declare dso_local i64 @GIT_ATTR_IS_UNSPECIFIED(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

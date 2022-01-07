; ModuleID = '/home/carl/AnghaBench/git/extr_write-or-die.c_maybe_flush_or_die.c'
source_filename = "/home/carl/AnghaBench/git/extr_write-or-die.c_maybe_flush_or_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@maybe_flush_or_die.skip_stdout_flush = internal global i32 -1, align 4
@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"GIT_FLUSH\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"write failure on '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @maybe_flush_or_die(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32*, i32** @stdout, align 8
  %9 = icmp eq i32* %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %2
  %11 = load i32, i32* @maybe_flush_or_die.skip_stdout_flush, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @atoi(i8* %18)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* @maybe_flush_or_die.skip_stdout_flush, align 4
  br label %35

22:                                               ; preds = %13
  %23 = load i32*, i32** @stdout, align 8
  %24 = call i32 @fileno(i32* %23)
  %25 = call i64 @fstat(i32 %24, %struct.stat* %5)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @S_ISREG(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* @maybe_flush_or_die.skip_stdout_flush, align 4
  br label %34

33:                                               ; preds = %27, %22
  store i32 0, i32* @maybe_flush_or_die.skip_stdout_flush, align 4
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %34, %17
  br label %36

36:                                               ; preds = %35, %10
  %37 = load i32, i32* @maybe_flush_or_die.skip_stdout_flush, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @ferror(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %54

44:                                               ; preds = %39, %36
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i32*, i32** %3, align 8
  %47 = call i64 @fflush(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @check_pipe(i32 %50)
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @die_errno(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %43, %49, %45
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @ferror(i32*) #1

declare dso_local i64 @fflush(i32*) #1

declare dso_local i32 @check_pipe(i32) #1

declare dso_local i32 @die_errno(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

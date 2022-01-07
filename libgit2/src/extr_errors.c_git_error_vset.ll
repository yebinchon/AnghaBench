; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_errors.c_git_error_vset.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_errors.c_git_error_vset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@GIT_ERROR_OS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@GIT_GLOBAL = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c": \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @git_error_vset(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @GIT_ERROR_OS, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @errno, align 4
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 0, %14 ]
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GIT_GLOBAL, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @git_buf_clear(i32* %19)
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load i32*, i32** %8, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @git_buf_vprintf(i32* %24, i8* %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @GIT_ERROR_OS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @git_buf_PUTS(i32* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %23
  br label %35

35:                                               ; preds = %34, %15
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @GIT_ERROR_OS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i8* @strerror(i32 %44)
  %46 = call i32 @git_buf_puts(i32* %43, i8* %45)
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* @errno, align 4
  br label %51

51:                                               ; preds = %50, %47
  br label %52

52:                                               ; preds = %51, %35
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @git_buf_oom(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @set_error_from_buffer(i32 %57)
  br label %59

59:                                               ; preds = %56, %52
  ret void
}

declare dso_local i32 @git_buf_clear(i32*) #1

declare dso_local i32 @git_buf_vprintf(i32*, i8*, i32) #1

declare dso_local i32 @git_buf_PUTS(i32*, i8*) #1

declare dso_local i32 @git_buf_puts(i32*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @git_buf_oom(i32*) #1

declare dso_local i32 @set_error_from_buffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

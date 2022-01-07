; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_print.c_git_diff_print_callback__to_buf.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_print.c_git_diff_print_callback__to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"buffer pointer must be provided\00", align 1
@GIT_DIFF_LINE_ADDITION = common dso_local global i32 0, align 4
@GIT_DIFF_LINE_DELETION = common dso_local global i32 0, align 4
@GIT_DIFF_LINE_CONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_print_callback__to_buf(i32* %0, i32* %1, %struct.TYPE_3__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @GIT_UNUSED(i32* %13)
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @GIT_UNUSED(i32* %15)
  %17 = load i32*, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %21 = call i32 @git_error_set(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %55

22:                                               ; preds = %4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GIT_DIFF_LINE_ADDITION, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GIT_DIFF_LINE_DELETION, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @GIT_DIFF_LINE_CONTEXT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34, %28, %22
  %41 = load i32*, i32** %10, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @git_buf_putc(i32* %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @git_buf_put(i32* %47, i32 %50, i32 %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %46, %19
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @GIT_UNUSED(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_buf_putc(i32*, i32) #1

declare dso_local i32 @git_buf_put(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

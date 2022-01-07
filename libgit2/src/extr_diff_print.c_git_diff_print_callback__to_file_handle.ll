; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_print.c_git_diff_print_callback__to_file_handle.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_print.c_git_diff_print_callback__to_file_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@stdout = common dso_local global i8* null, align 8
@GIT_DIFF_LINE_CONTEXT = common dso_local global i64 0, align 8
@GIT_DIFF_LINE_ADDITION = common dso_local global i64 0, align 8
@GIT_DIFF_LINE_DELETION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_print_callback__to_file_handle(i32* %0, i32* %1, %struct.TYPE_3__* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i8*, i8** %8, align 8
  br label %16

14:                                               ; preds = %4
  %15 = load i8*, i8** @stdout, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i8* [ %13, %12 ], [ %15, %14 ]
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @GIT_UNUSED(i32* %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @GIT_UNUSED(i32* %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GIT_DIFF_LINE_CONTEXT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %16
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GIT_DIFF_LINE_ADDITION, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GIT_DIFF_LINE_DELETION, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34, %28, %16
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @fputc(i64 %43, i32* %44)
  br label %46

46:                                               ; preds = %40, %34
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @fwrite(i32 %49, i32 1, i32 %52, i32* %53)
  ret i32 0
}

declare dso_local i32 @GIT_UNUSED(i32*) #1

declare dso_local i32 @fputc(i64, i32*) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

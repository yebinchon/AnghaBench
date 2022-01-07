; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_futils.c_git_futils_readbuffer_fd.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_futils.c_git_futils_readbuffer_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64 }

@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"read too large\00", align 1
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to read descriptor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_futils_readbuffer_fd(%struct.TYPE_6__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = call i32 @git_buf_clear(%struct.TYPE_6__* %10)
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @git__is_ssizet(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %17 = call i32 @git_error_set(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %50

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %9, i64 %19, i32 1)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i64 @git_buf_grow(%struct.TYPE_6__* %21, i64 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %50

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @p_read(i32 %27, i8* %30, i64 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load i32, i32* @GIT_ERROR_OS, align 4
  %38 = call i32 @git_error_set(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = call i32 @git_buf_dispose(%struct.TYPE_6__* %39)
  store i32 -1, i32* %4, align 4
  br label %50

41:                                               ; preds = %26
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %41, %36, %25, %15
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @git_buf_clear(%struct.TYPE_6__*) #1

declare dso_local i32 @git__is_ssizet(i64) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local i64 @git_buf_grow(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @p_read(i32, i8*, i64) #1

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

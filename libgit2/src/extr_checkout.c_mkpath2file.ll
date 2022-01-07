; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_mkpath2file.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_mkpath2file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.stat = type { i32 }

@MKDIR_REMOVE_EXISTING = common dso_local global i32 0, align 4
@MKDIR_NORMAL = common dso_local global i32 0, align 4
@GIT_MKDIR_SKIP_LAST = common dso_local global i32 0, align 4
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to stat '%s'\00", align 1
@GIT_EEXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32)* @mkpath2file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkpath2file(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = call i32 @should_remove_existing(%struct.TYPE_9__* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @MKDIR_REMOVE_EXISTING, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @MKDIR_NORMAL, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = load i32, i32* @GIT_MKDIR_SKIP_LAST, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @checkout_mkdir(%struct.TYPE_9__* %24, i8* %25, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %4, align 4
  br label %67

36:                                               ; preds = %20
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %36
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @p_lstat(i8* %45, %struct.stat* %8)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %51 = call i32 @git_futils_rmdir_r(i8* %49, i32* null, i32 %50)
  store i32 %51, i32* %11, align 4
  br label %64

52:                                               ; preds = %39
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @ENOENT, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32, i32* @GIT_ERROR_OS, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @git_error_set(i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @GIT_EEXISTS, align 4
  store i32 %60, i32* %4, align 4
  br label %67

61:                                               ; preds = %52
  %62 = call i32 (...) @git_error_clear()
  br label %63

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63, %48
  br label %65

65:                                               ; preds = %64, %36
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %56, %34
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @should_remove_existing(%struct.TYPE_9__*) #1

declare dso_local i32 @checkout_mkdir(%struct.TYPE_9__*, i8*, i32, i32, i32) #1

declare dso_local i64 @p_lstat(i8*, %struct.stat*) #1

declare dso_local i32 @git_futils_rmdir_r(i8*, i32*, i32) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

declare dso_local i32 @git_error_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_futils.c_git_futils_cp_r.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_futils.c_git_futils_cp_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i32, i32, %struct.TYPE_10__, i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GIT_CPDIR_CREATE_EMPTY_DIRS = common dso_local global i32 0, align 4
@GIT_MKDIR_PATH = common dso_local global i32 0, align 4
@GIT_MKDIR_SKIP_LAST = common dso_local global i32 0, align 4
@GIT_CPDIR_CHMOD_DIRS = common dso_local global i32 0, align 4
@GIT_MKDIR_CHMOD_PATH = common dso_local global i32 0, align 4
@GIT_MKDIR_CHMOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_futils_cp_r(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca %struct.TYPE_11__, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @git_buf_joinpath(%struct.TYPE_10__* %11, i8* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %67

18:                                               ; preds = %4
  %19 = call i32 @memset(%struct.TYPE_11__* %12, i32 0, i32 32)
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 5
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 4
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %30 = call i32 @git_buf_init(%struct.TYPE_10__* %29, i32 0)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @GIT_CPDIR_CREATE_EMPTY_DIRS, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %18
  %36 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %37 = load i32, i32* @GIT_MKDIR_SKIP_LAST, align 4
  %38 = or i32 %36, %37
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @GIT_CPDIR_CHMOD_DIRS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load i32, i32* @GIT_MKDIR_CHMOD_PATH, align 4
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44, %35
  br label %61

50:                                               ; preds = %18
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @GIT_CPDIR_CHMOD_DIRS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @GIT_MKDIR_CHMOD, align 4
  br label %58

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %49
  %62 = call i32 @_cp_r_callback(%struct.TYPE_11__* %12, %struct.TYPE_10__* %11)
  store i32 %62, i32* %10, align 4
  %63 = call i32 @git_buf_dispose(%struct.TYPE_10__* %11)
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %65 = call i32 @git_buf_dispose(%struct.TYPE_10__* %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %61, %17
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @git_buf_joinpath(%struct.TYPE_10__*, i8*, i8*) #2

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @git_buf_init(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @_cp_r_callback(%struct.TYPE_11__*, %struct.TYPE_10__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

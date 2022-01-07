; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_futils.c_git_futils_readbuffer_updated.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_futils.c_git_futils_readbuffer_updated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.stat = type { i64, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"requested file is a directory\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"invalid regular file stat for '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_futils_readbuffer_updated(%struct.TYPE_8__* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 8
  %13 = alloca %struct.TYPE_8__, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = bitcast %struct.TYPE_8__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %21, %18, %4
  %27 = phi i1 [ false, %18 ], [ false, %4 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32*, i32** %9, align 8
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @p_stat(i8* %35, %struct.stat* %12)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @errno, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @git_path_set_error(i32 %39, i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %41, i32* %5, align 4
  br label %114

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @S_ISDIR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %49 = call i32 (i32, i8*, ...) @git_error_set(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %50, i32* %5, align 4
  br label %114

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  %55 = call i32 @git__is_sizet(i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @GIT_ERROR_OS, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 (i32, i8*, ...) @git_error_set(i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  store i32 -1, i32* %5, align 4
  br label %114

61:                                               ; preds = %51
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @git_futils_open_ro(i8* %62)
  store i32 %63, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %5, align 4
  br label %114

67:                                               ; preds = %61
  %68 = load i32, i32* %11, align 4
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @git_futils_readbuffer_fd(%struct.TYPE_8__* %13, i32 %68, i64 %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @p_close(i32 %74)
  store i32 -1, i32* %5, align 4
  br label %114

76:                                               ; preds = %67
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @p_close(i32 %77)
  %79 = load i32*, i32** %8, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %105

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @git_hash_buf(i32* %14, i32 %83, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = call i32 @git_buf_dispose(%struct.TYPE_8__* %13)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %5, align 4
  br label %114

91:                                               ; preds = %81
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @git_oid__cmp(i32* %92, i32* %14)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %91
  %96 = call i32 @git_buf_dispose(%struct.TYPE_8__* %13)
  %97 = load i32*, i32** %9, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32*, i32** %9, align 8
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %99, %95
  store i32 0, i32* %5, align 4
  br label %114

102:                                              ; preds = %91
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @git_oid_cpy(i32* %103, i32* %14)
  br label %105

105:                                              ; preds = %102, %76
  %106 = load i32*, i32** %9, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32*, i32** %9, align 8
  store i32 1, i32* %109, align 4
  br label %110

110:                                              ; preds = %108, %105
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %112 = call i32 @git_buf_swap(%struct.TYPE_8__* %111, %struct.TYPE_8__* %13)
  %113 = call i32 @git_buf_dispose(%struct.TYPE_8__* %13)
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %101, %88, %73, %65, %57, %47, %38
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @p_stat(i8*, %struct.stat*) #2

declare dso_local i32 @git_path_set_error(i32, i8*, i8*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @git_error_set(i32, i8*, ...) #2

declare dso_local i32 @git__is_sizet(i64) #2

declare dso_local i32 @git_futils_open_ro(i8*) #2

declare dso_local i64 @git_futils_readbuffer_fd(%struct.TYPE_8__*, i32, i64) #2

declare dso_local i32 @p_close(i32) #2

declare dso_local i32 @git_hash_buf(i32*, i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_8__*) #2

declare dso_local i32 @git_oid__cmp(i32*, i32*) #2

declare dso_local i32 @git_oid_cpy(i32*, i32*) #2

declare dso_local i32 @git_buf_swap(%struct.TYPE_8__*, %struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

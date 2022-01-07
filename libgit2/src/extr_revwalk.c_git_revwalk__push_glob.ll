; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revwalk.c_git_revwalk__push_glob.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revwalk.c_git_revwalk__push_glob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@GIT_REVWALK__PUSH_OPTIONS_INIT = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@GIT_REFS_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"?*[\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_revwalk__push_glob(%struct.TYPE_18__* %0, i8* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %13 = bitcast %struct.TYPE_17__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_17__* @GIT_REVWALK__PUSH_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %8, align 4
  %14 = bitcast %struct.TYPE_19__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_19__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = icmp ne %struct.TYPE_18__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br label %20

20:                                               ; preds = %17, %3
  %21 = phi i1 [ false, %3 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = icmp ne %struct.TYPE_17__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %28 = call i32 @memcpy(%struct.TYPE_17__* %7, %struct.TYPE_17__* %27, i32 4)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @GIT_REFS_DIR, align 4
  %32 = call i64 @git__prefixcmp(i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @GIT_REFS_DIR, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @git_buf_joinpath(%struct.TYPE_19__* %9, i32 %35, i8* %36)
  br label %41

38:                                               ; preds = %29
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @git_buf_puts(%struct.TYPE_19__* %9, i8* %39)
  br label %41

41:                                               ; preds = %38, %34
  %42 = call i32 @GIT_ERROR_CHECK_ALLOC_BUF(%struct.TYPE_19__* %9)
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @strcspn(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i64 %44, i64* %12, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  %51 = call i32 @git_buf_put(%struct.TYPE_19__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  br label %52

52:                                               ; preds = %50, %41
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @git_reference_iterator_glob_new(i32** %11, i32 %55, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %86

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %77, %61
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @git_reference_next(i32** %10, i32* %64)
  store i32 %65, i32* %8, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @git_reference_name(i32* %69)
  %71 = call i32 @git_revwalk__push_ref(%struct.TYPE_18__* %68, i32 %70, %struct.TYPE_17__* %7)
  store i32 %71, i32* %8, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @git_reference_free(i32* %72)
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %78

77:                                               ; preds = %67
  br label %63

78:                                               ; preds = %76, %63
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @git_reference_iterator_free(i32* %79)
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @GIT_ITEROVER, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %84, %78
  br label %86

86:                                               ; preds = %85, %60
  %87 = call i32 @git_buf_dispose(%struct.TYPE_19__* %9)
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #2

declare dso_local i64 @git__prefixcmp(i8*, i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_19__*, i32, i8*) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_19__*, i8*) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_BUF(%struct.TYPE_19__*) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i32 @git_buf_put(%struct.TYPE_19__*, i8*, i32) #2

declare dso_local i32 @git_reference_iterator_glob_new(i32**, i32, i32) #2

declare dso_local i32 @git_reference_next(i32**, i32*) #2

declare dso_local i32 @git_revwalk__push_ref(%struct.TYPE_18__*, i32, %struct.TYPE_17__*) #2

declare dso_local i32 @git_reference_name(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_reference_iterator_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_19__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

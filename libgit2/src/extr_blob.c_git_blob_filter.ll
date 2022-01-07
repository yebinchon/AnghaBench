; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_blob.c_git_blob_filter.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_blob.c_git_blob_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@GIT_BLOB_FILTER_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@GIT_FILTER_DEFAULT = common dso_local global i32 0, align 4
@GIT_BLOB_FILTER_OPTIONS_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"git_blob_filter_options\00", align 1
@GIT_BLOB_FILTER_CHECK_FOR_BINARY = common dso_local global i32 0, align 4
@GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES = common dso_local global i32 0, align 4
@GIT_FILTER_NO_SYSTEM_ATTRIBUTES = common dso_local global i32 0, align 4
@GIT_BLOB_FILTER_ATTTRIBUTES_FROM_HEAD = common dso_local global i32 0, align 4
@GIT_FILTER_ATTRIBUTES_FROM_HEAD = common dso_local global i32 0, align 4
@GIT_FILTER_TO_WORKTREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_blob_filter(i32* %0, i32* %1, i8* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %14 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BLOB_FILTER_OPTIONS_INIT to i8*), i64 4, i1 false)
  %15 = load i32, i32* @GIT_FILTER_DEFAULT, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br label %24

24:                                               ; preds = %21, %18, %4
  %25 = phi i1 [ false, %18 ], [ false, %4 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @git_buf_sanitize(i32* %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = load i32, i32* @GIT_BLOB_FILTER_OPTIONS_VERSION, align 4
  %32 = call i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_7__* %30, i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = call i32 @memcpy(%struct.TYPE_7__* %12, %struct.TYPE_7__* %36, i32 4)
  br label %38

38:                                               ; preds = %35, %24
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GIT_BLOB_FILTER_CHECK_FOR_BINARY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @git_blob_is_binary(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %87

49:                                               ; preds = %44, %38
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* @GIT_FILTER_NO_SYSTEM_ATTRIBUTES, align 4
  %57 = load i32, i32* %13, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %55, %49
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GIT_BLOB_FILTER_ATTTRIBUTES_FROM_HEAD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* @GIT_FILTER_ATTRIBUTES_FROM_HEAD, align 4
  %67 = load i32, i32* %13, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %65, %59
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @git_blob_owner(i32* %70)
  %72 = load i32*, i32** %7, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* @GIT_FILTER_TO_WORKTREE, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @git_filter_list_load(i32** %11, i32 %71, i32* %72, i8* %73, i32 %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %69
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @git_filter_list_apply_to_blob(i32* %79, i32* %80, i32* %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @git_filter_list_free(i32* %83)
  br label %85

85:                                               ; preds = %78, %69
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %48
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @git_buf_sanitize(i32*) #2

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_7__*, i32, i8*) #2

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #2

declare dso_local i64 @git_blob_is_binary(i32*) #2

declare dso_local i32 @git_filter_list_load(i32**, i32, i32*, i8*, i32, i32) #2

declare dso_local i32 @git_blob_owner(i32*) #2

declare dso_local i32 @git_filter_list_apply_to_blob(i32*, i32*, i32*) #2

declare dso_local i32 @git_filter_list_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

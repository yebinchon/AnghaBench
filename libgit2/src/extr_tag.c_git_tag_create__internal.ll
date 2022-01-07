; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tag.c_git_tag_create__internal.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tag.c_git_tag_create__internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"the given target does not belong to this repository\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ERROR_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"tag already exists\00", align 1
@GIT_EEXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32*, i32*, i8*, i32, i32)* @git_tag_create__internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_tag_create__internal(i32* %0, i32* %1, i8* %2, i32* %3, i32* %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_5__, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32* null, i32** %18, align 8
  %21 = bitcast %struct.TYPE_5__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %22 = load i32*, i32** %11, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** %13, align 8
  %29 = icmp ne i32* %28, null
  br label %30

30:                                               ; preds = %27, %24, %8
  %31 = phi i1 [ false, %24 ], [ false, %8 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i32*, i32** %14, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %15, align 8
  %41 = icmp ne i8* %40, null
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i1 [ false, %36 ], [ %41, %39 ]
  br label %44

44:                                               ; preds = %42, %30
  %45 = phi i1 [ true, %30 ], [ %43, %42 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32*, i32** %13, align 8
  %49 = call i32* @git_object_owner(i32* %48)
  %50 = load i32*, i32** %11, align 8
  %51 = icmp ne i32* %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %54 = call i32 @git_error_set(i32 %53, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %109

55:                                               ; preds = %44
  %56 = load i32*, i32** %10, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @retrieve_tag_reference_oid(i32* %56, %struct.TYPE_5__* %19, i32* %57, i8* %58)
  store i32 %59, i32* %20, align 4
  %60 = load i32, i32* %20, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* @GIT_ENOTFOUND, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %104

67:                                               ; preds = %62, %55
  %68 = load i32, i32* %20, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = call i32 @git_buf_dispose(%struct.TYPE_5__* %19)
  %75 = load i32, i32* @GIT_ERROR_TAG, align 4
  %76 = call i32 @git_error_set(i32 %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @GIT_EEXISTS, align 4
  store i32 %77, i32* %9, align 4
  br label %109

78:                                               ; preds = %70, %67
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load i32*, i32** %10, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = load i32*, i32** %14, align 8
  %87 = load i8*, i8** %15, align 8
  %88 = call i64 @write_tag_annotation(i32* %82, i32* %83, i8* %84, i32* %85, i32* %86, i8* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  store i32 -1, i32* %9, align 4
  br label %109

91:                                               ; preds = %81
  br label %97

92:                                               ; preds = %78
  %93 = load i32*, i32** %10, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @git_object_id(i32* %94)
  %96 = call i32 @git_oid_cpy(i32* %93, i32 %95)
  br label %97

97:                                               ; preds = %92, %91
  %98 = load i32*, i32** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @git_reference_create(i32** %18, i32* %98, i32 %100, i32* %101, i32 %102, i32* null)
  store i32 %103, i32* %20, align 4
  br label %104

104:                                              ; preds = %97, %66
  %105 = load i32*, i32** %18, align 8
  %106 = call i32 @git_reference_free(i32* %105)
  %107 = call i32 @git_buf_dispose(%struct.TYPE_5__* %19)
  %108 = load i32, i32* %20, align 4
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %104, %90, %73, %52
  %110 = load i32, i32* %9, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @git_object_owner(i32*) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i32 @retrieve_tag_reference_oid(i32*, %struct.TYPE_5__*, i32*, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i64 @write_tag_annotation(i32*, i32*, i8*, i32*, i32*, i8*) #2

declare dso_local i32 @git_oid_cpy(i32*, i32) #2

declare dso_local i32 @git_object_id(i32*) #2

declare dso_local i32 @git_reference_create(i32**, i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

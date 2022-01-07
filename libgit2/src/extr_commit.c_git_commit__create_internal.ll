; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_commit.c_git_commit__create_internal.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_commit.c_git_commit__create_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GIT_ARRAY_INIT = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32*, i32*, i8*, i8*, i32*, i32, i8*, i32)* @git_commit__create_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_commit__create_internal(i32* %0, i32* %1, i8* %2, i32* %3, i32* %4, i8* %5, i8* %6, i32* %7, i32 %8, i8* %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_5__, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i8* %2, i8** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32 %8, i32* %21, align 4
  store i8* %9, i8** %22, align 8
  store i32 %10, i32* %23, align 4
  store i32* null, i32** %26, align 8
  %30 = bitcast %struct.TYPE_5__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store i32* null, i32** %28, align 8
  %31 = load i32, i32* @GIT_ARRAY_INIT, align 4
  store i32 %31, i32* %29, align 4
  %32 = load i8*, i8** %15, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %11
  %35 = load i32*, i32** %14, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = call i32 @git_reference_lookup_resolved(i32** %26, i32* %35, i8* %36, i32 10)
  store i32 %37, i32* %24, align 4
  %38 = load i32, i32* %24, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32, i32* %24, align 4
  %42 = load i32, i32* @GIT_ENOTFOUND, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %24, align 4
  store i32 %45, i32* %12, align 4
  br label %113

46:                                               ; preds = %40, %34
  br label %47

47:                                               ; preds = %46, %11
  %48 = call i32 (...) @git_error_clear()
  %49 = load i32*, i32** %26, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32*, i32** %26, align 8
  %53 = call i32* @git_reference_target(i32* %52)
  store i32* %53, i32** %28, align 8
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i32*, i32** %14, align 8
  %56 = load i32*, i32** %20, align 8
  %57 = load i32, i32* %21, align 4
  %58 = load i8*, i8** %22, align 8
  %59 = load i32*, i32** %28, align 8
  %60 = load i32, i32* %23, align 4
  %61 = call i32 @validate_tree_and_parents(i32* %29, i32* %55, i32* %56, i32 %57, i8* %58, i32* %59, i32 %60)
  store i32 %61, i32* %24, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %106

64:                                               ; preds = %54
  %65 = load i32*, i32** %16, align 8
  %66 = load i32*, i32** %17, align 8
  %67 = load i8*, i8** %18, align 8
  %68 = load i8*, i8** %19, align 8
  %69 = load i32*, i32** %20, align 8
  %70 = call i32 @git_commit__create_buffer_internal(%struct.TYPE_5__* %27, i32* %65, i32* %66, i8* %67, i8* %68, i32* %69, i32* %29)
  store i32 %70, i32* %24, align 4
  %71 = load i32, i32* %24, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %106

74:                                               ; preds = %64
  %75 = load i32*, i32** %14, align 8
  %76 = call i64 @git_repository_odb__weakptr(i32** %25, i32* %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %106

79:                                               ; preds = %74
  %80 = load i32*, i32** %25, align 8
  %81 = load i32*, i32** %20, align 8
  %82 = call i64 @git_odb__freshen(i32* %80, i32* %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %106

85:                                               ; preds = %79
  %86 = load i32*, i32** %13, align 8
  %87 = load i32*, i32** %25, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %93 = call i64 @git_odb_write(i32* %86, i32* %87, i32 %89, i32 %91, i32 %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %106

96:                                               ; preds = %85
  %97 = load i8*, i8** %15, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32*, i32** %14, align 8
  %101 = load i32*, i32** %26, align 8
  %102 = load i8*, i8** %15, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = call i32 @git_reference__update_for_commit(i32* %100, i32* %101, i8* %102, i32* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %104, i32* %24, align 4
  br label %106

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %99, %95, %84, %78, %73, %63
  %107 = load i32, i32* %29, align 4
  %108 = call i32 @git_array_clear(i32 %107)
  %109 = load i32*, i32** %26, align 8
  %110 = call i32 @git_reference_free(i32* %109)
  %111 = call i32 @git_buf_dispose(%struct.TYPE_5__* %27)
  %112 = load i32, i32* %24, align 4
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %106, %44
  %114 = load i32, i32* %12, align 4
  ret i32 %114
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_reference_lookup_resolved(i32**, i32*, i8*, i32) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i32* @git_reference_target(i32*) #2

declare dso_local i32 @validate_tree_and_parents(i32*, i32*, i32*, i32, i8*, i32*, i32) #2

declare dso_local i32 @git_commit__create_buffer_internal(%struct.TYPE_5__*, i32*, i32*, i8*, i8*, i32*, i32*) #2

declare dso_local i64 @git_repository_odb__weakptr(i32**, i32*) #2

declare dso_local i64 @git_odb__freshen(i32*, i32*) #2

declare dso_local i64 @git_odb_write(i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @git_reference__update_for_commit(i32*, i32*, i8*, i32*, i8*) #2

declare dso_local i32 @git_array_clear(i32) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

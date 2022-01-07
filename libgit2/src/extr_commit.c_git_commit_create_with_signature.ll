; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_commit.c_git_commit_create_with_signature.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_commit.c_git_commit_create_with_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@GIT_ARRAY_INIT = common dso_local global i32 0, align 4
@commit_parent_from_commit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"malformed commit contents\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"gpgsig\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_commit_create_with_signature(i32* %0, i32* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_15__, align 4
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %13, align 4
  %19 = bitcast %struct.TYPE_15__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.TYPE_15__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %20 = load i32, i32* @GIT_ARRAY_INIT, align 4
  store i32 %20, i32* %18, align 4
  %21 = call %struct.TYPE_14__* @git__calloc(i32 1, i32 4)
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %17, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %23 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_14__* %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = call i32 @commit_parse(%struct.TYPE_14__* %24, i8* %25, i32 %27, i32 0)
  store i32 %28, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  br label %97

31:                                               ; preds = %5
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* @commit_parent_from_commit, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %37 = call i32 @validate_tree_and_parents(i32* %18, i32* %32, i32* %34, i32 %35, %struct.TYPE_14__* %36, i32* null, i32 1)
  store i32 %37, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %97

40:                                               ; preds = %31
  %41 = load i32, i32* %18, align 4
  %42 = call i32 @git_array_clear(i32 %41)
  %43 = load i8*, i8** %9, align 8
  %44 = call i8* @strstr(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %44, i8** %15, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %49 = call i32 @git_error_set(i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %13, align 4
  br label %97

50:                                               ; preds = %40
  %51 = load i8*, i8** %15, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %15, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = call i32 @git_buf_put(%struct.TYPE_15__* %16, i8* %53, i32 %59)
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %50
  %64 = load i8*, i8** %11, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i8*, i8** %11, align 8
  br label %69

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i8* [ %67, %66 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %68 ]
  store i8* %70, i8** %14, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @format_header_field(%struct.TYPE_15__* %16, i8* %71, i8* %72)
  br label %74

74:                                               ; preds = %69, %50
  %75 = load i8*, i8** %15, align 8
  %76 = call i32 @git_buf_puts(%struct.TYPE_15__* %16, i8* %75)
  %77 = call i64 @git_buf_oom(%struct.TYPE_15__* %16)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 -1, i32* %6, align 4
  br label %102

80:                                               ; preds = %74
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @git_repository_odb__weakptr(i32** %12, i32* %81)
  store i32 %82, i32* %13, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %97

85:                                               ; preds = %80
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %93 = call i32 @git_odb_write(i32* %86, i32* %87, i32 %89, i32 %91, i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %97

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %95, %84, %47, %39, %30
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %99 = call i32 @git_commit__free(%struct.TYPE_14__* %98)
  %100 = call i32 @git_buf_dispose(%struct.TYPE_15__* %16)
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %97, %79
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_14__* @git__calloc(i32, i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_14__*) #2

declare dso_local i32 @commit_parse(%struct.TYPE_14__*, i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @validate_tree_and_parents(i32*, i32*, i32*, i32, %struct.TYPE_14__*, i32*, i32) #2

declare dso_local i32 @git_array_clear(i32) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i32 @git_buf_put(%struct.TYPE_15__*, i8*, i32) #2

declare dso_local i32 @format_header_field(%struct.TYPE_15__*, i8*, i8*) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_15__*, i8*) #2

declare dso_local i64 @git_buf_oom(%struct.TYPE_15__*) #2

declare dso_local i32 @git_repository_odb__weakptr(i32**, i32*) #2

declare dso_local i32 @git_odb_write(i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @git_commit__free(%struct.TYPE_14__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

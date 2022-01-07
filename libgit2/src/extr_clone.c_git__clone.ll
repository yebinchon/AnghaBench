; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_clone.c_git__clone.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_clone.c_git__clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (i32**, i8*, i32, i32)*, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@GIT_CLONE_OPTIONS_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4
@GIT_CLONE_OPTIONS_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"git_clone_options\00", align 1
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"'%s' exists and is not an empty directory\00", align 1
@GIT_EEXISTS = common dso_local global i32 0, align 4
@GIT_RMDIR_SKIP_ROOT = common dso_local global i32 0, align 4
@GIT_CLONE_LOCAL_NO_LINKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i8*, %struct.TYPE_12__*, i32)* @git__clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git__clone(i32** %0, i8* %1, i8* %2, %struct.TYPE_12__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_12__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32 (i32**, i8*, i32, i32)*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_11__, align 4
  store i32** %0, i32*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %21 = bitcast %struct.TYPE_12__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_CLONE_OPTIONS_INIT to i8*), i64 40, i1 false)
  %22 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i32**, i32*** %7, align 8
  %24 = icmp ne i32** %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br label %31

31:                                               ; preds = %28, %25, %5
  %32 = phi i1 [ false, %25 ], [ false, %5 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %36 = icmp ne %struct.TYPE_12__* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %39 = call i32 @memcpy(%struct.TYPE_12__* %15, %struct.TYPE_12__* %38, i32 40)
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i32, i32* @GIT_CLONE_OPTIONS_VERSION, align 4
  %42 = call i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_12__* %15, i32 %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %43 = load i8*, i8** %9, align 8
  %44 = call i64 @git_path_exists(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @git_path_is_empty_dir(i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @git_error_set(i32 %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @GIT_EEXISTS, align 4
  store i32 %57, i32* %6, align 4
  br label %144

58:                                               ; preds = %49, %46, %40
  %59 = load i8*, i8** %9, align 8
  %60 = call i64 @git_path_exists(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @GIT_RMDIR_SKIP_ROOT, align 4
  %64 = load i32, i32* %16, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %62, %58
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %68 = load i32 (i32**, i8*, i32, i32)*, i32 (i32**, i8*, i32, i32)** %67, align 8
  %69 = icmp ne i32 (i32**, i8*, i32, i32)* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %72 = load i32 (i32**, i8*, i32, i32)*, i32 (i32**, i8*, i32, i32)** %71, align 8
  store i32 (i32**, i8*, i32, i32)* %72, i32 (i32**, i8*, i32, i32)** %17, align 8
  br label %74

73:                                               ; preds = %66
  store i32 (i32**, i8*, i32, i32)* @default_repository_create, i32 (i32**, i8*, i32, i32)** %17, align 8
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i32 (i32**, i8*, i32, i32)*, i32 (i32**, i8*, i32, i32)** %17, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = call i32 %75(i32** %13, i8* %76, i32 %78, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %6, align 4
  br label %144

85:                                               ; preds = %74
  %86 = load i32*, i32** %13, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @create_and_configure_origin(i32** %14, i32* %86, i8* %87, %struct.TYPE_12__* %15)
  store i32 %88, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %127, label %90

90:                                               ; preds = %85
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @git_clone__should_clone_local(i8* %91, i64 %93)
  store i32 %94, i32* %18, align 4
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @GIT_CLONE_LOCAL_NO_LINKS, align 8
  %98 = icmp ne i64 %96, %97
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %19, align 4
  %100 = load i32, i32* %18, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %111

102:                                              ; preds = %90
  %103 = load i32*, i32** %13, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %19, align 4
  %110 = call i32 @clone_local_into(i32* %103, i32* %104, i32* %105, i32* %106, i32 %108, i32 %109)
  store i32 %110, i32* %12, align 4
  br label %124

111:                                              ; preds = %90
  %112 = load i32, i32* %18, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load i32*, i32** %13, align 8
  %116 = load i32*, i32** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @clone_into(i32* %115, i32* %116, i32* %117, i32* %118, i32 %120)
  store i32 %121, i32* %12, align 4
  br label %123

122:                                              ; preds = %111
  store i32 -1, i32* %12, align 4
  br label %123

123:                                              ; preds = %122, %114
  br label %124

124:                                              ; preds = %123, %102
  %125 = load i32*, i32** %14, align 8
  %126 = call i32 @git_remote_free(i32* %125)
  br label %127

127:                                              ; preds = %124, %85
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %127
  %131 = bitcast %struct.TYPE_11__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %131, i8 0, i64 4, i1 false)
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @git_error_state_capture(%struct.TYPE_11__* %20, i32 %132)
  %134 = load i32*, i32** %13, align 8
  %135 = call i32 @git_repository_free(i32* %134)
  store i32* null, i32** %13, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @git_futils_rmdir_r(i8* %136, i32* null, i32 %137)
  %139 = call i32 @git_error_state_restore(%struct.TYPE_11__* %20)
  br label %140

140:                                              ; preds = %130, %127
  %141 = load i32*, i32** %13, align 8
  %142 = load i32**, i32*** %7, align 8
  store i32* %141, i32** %142, align 8
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %140, %83, %53
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_12__*, i32, i8*) #2

declare dso_local i64 @git_path_exists(i8*) #2

declare dso_local i32 @git_path_is_empty_dir(i8*) #2

declare dso_local i32 @git_error_set(i32, i8*, i8*) #2

declare dso_local i32 @default_repository_create(i32**, i8*, i32, i32) #2

declare dso_local i32 @create_and_configure_origin(i32**, i32*, i8*, %struct.TYPE_12__*) #2

declare dso_local i32 @git_clone__should_clone_local(i8*, i64) #2

declare dso_local i32 @clone_local_into(i32*, i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @clone_into(i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @git_remote_free(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_error_state_capture(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_futils_rmdir_r(i8*, i32*, i32) #2

declare dso_local i32 @git_error_state_restore(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

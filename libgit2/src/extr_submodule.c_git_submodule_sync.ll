; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_sync.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@GIT_ERROR_SUBMODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"no URL configured for submodule '%s'\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"submodule.%s.url\00", align 1
@GIT_SUBMODULE_STATUS_IN_WD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"remote.origin.url\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"url\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_submodule_sync(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %9 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** %7, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @GIT_ERROR_SUBMODULE, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @git_error_set(i32 %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 -1, i32* %2, align 4
  br label %90

20:                                               ; preds = %1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @git_repository_config__weakptr(i32** %5, i32* %23)
  store i32 %24, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @git_buf_printf(%struct.TYPE_12__* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %26
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @git_config__update_entry(i32* %33, i32 %35, i32 %38, i32 1, i32 1)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %32, %26, %20
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %87, label %43

43:                                               ; preds = %40
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_WD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %87

50:                                               ; preds = %43
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = call i32 @git_submodule_open(i32** %7, %struct.TYPE_11__* %51)
  store i32 %52, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %87, label %54

54:                                               ; preds = %50
  %55 = bitcast %struct.TYPE_12__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @git_repository_config__weakptr(i32** %5, i32* %56)
  store i32 %57, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %73

60:                                               ; preds = %54
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @lookup_head_remote_key(%struct.TYPE_12__* %8, i32* %61)
  store i32 %62, i32* %4, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = call i32 (...) @git_error_clear()
  %66 = call i32 @git_buf_sets(%struct.TYPE_12__* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 %66, i32* %4, align 4
  br label %72

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @git_buf_join3(%struct.TYPE_12__* %6, i8 signext 46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %70, i32* %4, align 4
  %71 = call i32 @git_buf_dispose(%struct.TYPE_12__* %8)
  br label %72

72:                                               ; preds = %67, %64
  br label %73

73:                                               ; preds = %72, %59
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @git_config__update_entry(i32* %77, i32 %79, i32 %82, i32 1, i32 0)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %76, %73
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @git_repository_free(i32* %85)
  br label %87

87:                                               ; preds = %84, %50, %43, %40
  %88 = call i32 @git_buf_dispose(%struct.TYPE_12__* %6)
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %87, %14
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_error_set(i32, i8*, i32) #2

declare dso_local i32 @git_repository_config__weakptr(i32**, i32*) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_12__*, i8*, i32) #2

declare dso_local i32 @git_config__update_entry(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @git_submodule_open(i32**, %struct.TYPE_11__*) #2

declare dso_local i32 @lookup_head_remote_key(%struct.TYPE_12__*, i32*) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i32 @git_buf_sets(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @git_buf_join3(%struct.TYPE_12__*, i8 signext, i8*, i32, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_12__*) #2

declare dso_local i32 @git_repository_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

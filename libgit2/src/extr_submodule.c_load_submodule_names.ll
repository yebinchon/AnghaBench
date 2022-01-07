; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_load_submodule_names.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_load_submodule_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"submodule\\..*\\.path\00", align 1
@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GIT_ERROR_SUBMODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"duplicated submodule path '%s'\00", align 1
@GIT_ERROR_NOMEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"error inserting submodule into hash table\00", align 1
@GIT_ITEROVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*)* @load_submodule_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_submodule_names(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i32* null, i32** %8, align 8
  %16 = bitcast %struct.TYPE_10__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %17 = load i32**, i32*** %4, align 8
  store i32* null, i32** %17, align 8
  %18 = call i32 @git_strmap_new(i32** %11)
  store i32 %18, i32* %13, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %98

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @git_config_iterator_glob_new(i32** %8, i32* %22, i8* %23)
  store i32 %24, i32* %13, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %98

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %89, %76, %27
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @git_config_next(%struct.TYPE_9__** %9, i32* %29)
  store i32 %30, i32* %13, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %90

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @strchr(i32 %35, i8 signext 46)
  store i8* %36, i8** %14, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @strrchr(i32 %39, i8 signext 46)
  store i8* %40, i8** %15, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @git_strmap_exists(i32* %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %32
  %48 = load i32, i32* @GIT_ERROR_SUBMODULE, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @git_error_set(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  store i32 -1, i32* %13, align 4
  br label %98

53:                                               ; preds = %32
  %54 = call i32 @git_buf_clear(%struct.TYPE_10__* %10)
  %55 = load i8*, i8** %14, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8*, i8** %15, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sub nsw i64 %61, 1
  %63 = trunc i64 %62 to i32
  %64 = call i32 @git_buf_put(%struct.TYPE_10__* %10, i8* %56, i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @git_submodule_name_is_valid(i32* %65, i32 %67, i32 0)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %53
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %13, align 4
  br label %98

73:                                               ; preds = %53
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  br label %28

77:                                               ; preds = %73
  %78 = load i32*, i32** %11, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @git__strdup(i32 %81)
  %83 = call i32 @git_buf_detach(%struct.TYPE_10__* %10)
  %84 = call i32 @git_strmap_set(i32* %78, i32 %82, i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load i32, i32* @GIT_ERROR_NOMEMORY, align 4
  %88 = call i32 (i32, i8*, ...) @git_error_set(i32 %87, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %13, align 4
  br label %98

89:                                               ; preds = %77
  br label %28

90:                                               ; preds = %28
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @GIT_ITEROVER, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 0, i32* %13, align 4
  br label %95

95:                                               ; preds = %94, %90
  %96 = load i32*, i32** %11, align 8
  %97 = load i32**, i32*** %4, align 8
  store i32* %96, i32** %97, align 8
  store i32* null, i32** %11, align 8
  br label %98

98:                                               ; preds = %95, %86, %71, %47, %26, %20
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @free_submodule_names(i32* %99)
  %101 = call i32 @git_buf_dispose(%struct.TYPE_10__* %10)
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @git_config_iterator_free(i32* %102)
  %104 = load i32, i32* %13, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_strmap_new(i32**) #2

declare dso_local i32 @git_config_iterator_glob_new(i32**, i32*, i8*) #2

declare dso_local i32 @git_config_next(%struct.TYPE_9__**, i32*) #2

declare dso_local i8* @strchr(i32, i8 signext) #2

declare dso_local i8* @strrchr(i32, i8 signext) #2

declare dso_local i64 @git_strmap_exists(i32*, i32) #2

declare dso_local i32 @git_error_set(i32, i8*, ...) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_10__*) #2

declare dso_local i32 @git_buf_put(%struct.TYPE_10__*, i8*, i32) #2

declare dso_local i32 @git_submodule_name_is_valid(i32*, i32, i32) #2

declare dso_local i32 @git_strmap_set(i32*, i32, i32) #2

declare dso_local i32 @git__strdup(i32) #2

declare dso_local i32 @git_buf_detach(%struct.TYPE_10__*) #2

declare dso_local i32 @free_submodule_names(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_10__*) #2

declare dso_local i32 @git_config_iterator_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

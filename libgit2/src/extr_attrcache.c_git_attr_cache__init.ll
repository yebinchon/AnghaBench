; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_attrcache.c_git_attr_cache__init.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_attrcache.c_git_attr_cache__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }

@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unable to initialize lock for attr cache\00", align 1
@GIT_ATTR_CONFIG = common dso_local global i32 0, align 4
@GIT_ATTR_FILE_XDG = common dso_local global i32 0, align 4
@GIT_IGNORE_CONFIG = common dso_local global i32 0, align 4
@GIT_IGNORE_FILE_XDG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"-diff -crlf -text\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_attr_cache__init(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = call %struct.TYPE_15__* @git_repository_attr_cache(%struct.TYPE_14__* %7)
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %5, align 8
  store i32* null, i32** %6, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %10 = icmp ne %struct.TYPE_15__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %83

12:                                               ; preds = %1
  %13 = call %struct.TYPE_15__* @git__calloc(i32 1, i32 24)
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %5, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_15__* %14)
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 5
  %18 = call i64 @git_mutex_init(i32* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load i32, i32* @GIT_ERROR_OS, align 4
  %22 = call i32 @git_error_set(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = call i32 @git__free(%struct.TYPE_15__* %23)
  store i32 -1, i32* %2, align 4
  br label %83

25:                                               ; preds = %12
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = call i32 @git_repository_config_snapshot(i32** %6, %struct.TYPE_14__* %26)
  store i32 %27, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %77

30:                                               ; preds = %25
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @GIT_ATTR_CONFIG, align 4
  %35 = load i32, i32* @GIT_ATTR_FILE_XDG, align 4
  %36 = call i32 @attr_cache__lookup_path(i32* %32, i32* %33, i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %77

40:                                               ; preds = %30
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 3
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @GIT_IGNORE_CONFIG, align 4
  %45 = load i32, i32* @GIT_IGNORE_FILE_XDG, align 4
  %46 = call i32 @attr_cache__lookup_path(i32* %42, i32* %43, i32 %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %77

50:                                               ; preds = %40
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = call i32 @git_strmap_new(i32* %52)
  store i32 %53, i32* %4, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = call i32 @git_strmap_new(i32* %57)
  store i32 %58, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %50
  br label %77

61:                                               ; preds = %55
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = call i32 @git_pool_init(i32* %63, i32 1)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %68 = call %struct.TYPE_15__* @git__compare_and_swap(i32* %66, i32* null, %struct.TYPE_15__* %67)
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %5, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = icmp ne %struct.TYPE_15__* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %77

72:                                               ; preds = %61
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @git_config_free(i32* %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = call i32 @git_attr_add_macro(%struct.TYPE_14__* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 %76, i32* %2, align 4
  br label %83

77:                                               ; preds = %71, %60, %49, %39, %29
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = call i32 @attr_cache__free(%struct.TYPE_15__* %78)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @git_config_free(i32* %80)
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %77, %72, %20, %11
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_15__* @git_repository_attr_cache(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_15__*) #1

declare dso_local i64 @git_mutex_init(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git__free(%struct.TYPE_15__*) #1

declare dso_local i32 @git_repository_config_snapshot(i32**, %struct.TYPE_14__*) #1

declare dso_local i32 @attr_cache__lookup_path(i32*, i32*, i32, i32) #1

declare dso_local i32 @git_strmap_new(i32*) #1

declare dso_local i32 @git_pool_init(i32*, i32) #1

declare dso_local %struct.TYPE_15__* @git__compare_and_swap(i32*, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_attr_add_macro(%struct.TYPE_14__*, i8*, i8*) #1

declare dso_local i32 @attr_cache__free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

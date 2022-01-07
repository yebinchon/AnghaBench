; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_load_config.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_load_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@GIT_REPOSITORY_ITEM_CONFIG = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_LOCAL = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_XDG = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_SYSTEM = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_PROGRAMDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i8*, i8*, i8*, i8*)* @load_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_config(i32** %0, i32* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__, align 8
  %16 = alloca i32*, align 8
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = bitcast %struct.TYPE_5__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store i32* null, i32** %16, align 8
  %18 = load i32**, i32*** %8, align 8
  %19 = call i32 @assert(i32** %18)
  %20 = call i32 @git_config_new(i32** %16)
  store i32 %20, i32* %14, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %7, align 4
  br label %119

24:                                               ; preds = %6
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @GIT_REPOSITORY_ITEM_CONFIG, align 4
  %30 = call i32 @git_repository_item_path(%struct.TYPE_5__* %15, i32* %28, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32*, i32** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* @GIT_CONFIG_LEVEL_LOCAL, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @git_config_add_file_ondisk(i32* %33, i8* %35, i32 %36, i32* %37, i32 0)
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @GIT_ENOTFOUND, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %113

47:                                               ; preds = %42, %39
  %48 = call i32 @git_buf_dispose(%struct.TYPE_5__* %15)
  br label %49

49:                                               ; preds = %47, %24
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i32*, i32** %16, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @git_config_add_file_ondisk(i32* %53, i8* %54, i32 %55, i32* %56, i32 0)
  store i32 %57, i32* %14, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @GIT_ENOTFOUND, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %113

64:                                               ; preds = %59, %52, %49
  %65 = load i8*, i8** %11, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load i32*, i32** %16, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load i32, i32* @GIT_CONFIG_LEVEL_XDG, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @git_config_add_file_ondisk(i32* %68, i8* %69, i32 %70, i32* %71, i32 0)
  store i32 %72, i32* %14, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @GIT_ENOTFOUND, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %113

79:                                               ; preds = %74, %67, %64
  %80 = load i8*, i8** %12, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load i32*, i32** %16, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = load i32, i32* @GIT_CONFIG_LEVEL_SYSTEM, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @git_config_add_file_ondisk(i32* %83, i8* %84, i32 %85, i32* %86, i32 0)
  store i32 %87, i32* %14, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @GIT_ENOTFOUND, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %113

94:                                               ; preds = %89, %82, %79
  %95 = load i8*, i8** %13, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load i32*, i32** %16, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = load i32, i32* @GIT_CONFIG_LEVEL_PROGRAMDATA, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @git_config_add_file_ondisk(i32* %98, i8* %99, i32 %100, i32* %101, i32 0)
  store i32 %102, i32* %14, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @GIT_ENOTFOUND, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %113

109:                                              ; preds = %104, %97, %94
  %110 = call i32 (...) @git_error_clear()
  %111 = load i32*, i32** %16, align 8
  %112 = load i32**, i32*** %8, align 8
  store i32* %111, i32** %112, align 8
  store i32 0, i32* %7, align 4
  br label %119

113:                                              ; preds = %108, %93, %78, %63, %46
  %114 = call i32 @git_buf_dispose(%struct.TYPE_5__* %15)
  %115 = load i32*, i32** %16, align 8
  %116 = call i32 @git_config_free(i32* %115)
  %117 = load i32**, i32*** %8, align 8
  store i32* null, i32** %117, align 8
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %113, %109, %22
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32**) #2

declare dso_local i32 @git_config_new(i32**) #2

declare dso_local i32 @git_repository_item_path(%struct.TYPE_5__*, i32*, i32) #2

declare dso_local i32 @git_config_add_file_ondisk(i32*, i8*, i32, i32*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i32 @git_config_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

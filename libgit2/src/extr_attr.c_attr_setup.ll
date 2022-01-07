; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_attr.c_attr_setup.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_attr.c_attr_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i8* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GIT_ATTR_FILE__FROM_FILE = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_REPOSITORY_ITEM_INFO = common dso_local global i32 0, align 4
@GIT_ATTR_FILE_INREPO = common dso_local global i8* null, align 8
@GIT_ATTR_FILE = common dso_local global i8* null, align 8
@GIT_ATTR_FILE__FROM_INDEX = common dso_local global i32 0, align 4
@GIT_ATTR_CHECK_INCLUDE_HEAD = common dso_local global i32 0, align 4
@GIT_ATTR_FILE__FROM_HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*, i32)* @attr_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attr_setup(i32* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = bitcast %struct.TYPE_12__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store i32* null, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = icmp ne %struct.TYPE_13__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %125

21:                                               ; preds = %15, %3
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @git_attr_cache__init(i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %4, align 4
  br label %125

27:                                               ; preds = %21
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = call i32 @system_attr_file(%struct.TYPE_12__* %8, %struct.TYPE_13__* %28)
  store i32 %29, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = load i32, i32* @GIT_ATTR_FILE__FROM_FILE, align 4
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @preload_attr_file(i32* %32, %struct.TYPE_13__* %33, i32 %34, i8* null, i8* %36, i32 1)
  store i32 %37, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31, %27
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @GIT_ENOTFOUND, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %122

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %31
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = load i32, i32* @GIT_ATTR_FILE__FROM_FILE, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = call %struct.TYPE_14__* @git_repository_attr_cache(i32* %49)
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @preload_attr_file(i32* %46, %struct.TYPE_13__* %47, i32 %48, i8* null, i8* %52, i32 1)
  store i32 %53, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %122

56:                                               ; preds = %45
  %57 = call i32 @git_buf_clear(%struct.TYPE_12__* %8)
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @GIT_REPOSITORY_ITEM_INFO, align 4
  %60 = call i32 @git_repository_item_path(%struct.TYPE_12__* %8, i32* %58, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %56
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = load i32, i32* @GIT_ATTR_FILE__FROM_FILE, align 4
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** @GIT_ATTR_FILE_INREPO, align 8
  %69 = call i32 @preload_attr_file(i32* %63, %struct.TYPE_13__* %64, i32 %65, i8* %67, i8* %68, i32 1)
  store i32 %69, i32* %11, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %62, %56
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @GIT_ENOTFOUND, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %122

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %62
  %78 = load i32*, i32** %5, align 8
  %79 = call i8* @git_repository_workdir(i32* %78)
  store i8* %79, i8** %10, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i32*, i32** %5, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = load i32, i32* @GIT_ATTR_FILE__FROM_FILE, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = load i8*, i8** @GIT_ATTR_FILE, align 8
  %87 = call i32 @preload_attr_file(i32* %82, %struct.TYPE_13__* %83, i32 %84, i8* %85, i8* %86, i32 1)
  store i32 %87, i32* %11, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %122

90:                                               ; preds = %81, %77
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @git_repository_index__weakptr(i32** %9, i32* %91)
  store i32 %92, i32* %11, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %90
  %95 = load i32*, i32** %5, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %97 = load i32, i32* @GIT_ATTR_FILE__FROM_INDEX, align 4
  %98 = load i8*, i8** @GIT_ATTR_FILE, align 8
  %99 = call i32 @preload_attr_file(i32* %95, %struct.TYPE_13__* %96, i32 %97, i8* null, i8* %98, i32 1)
  store i32 %99, i32* %11, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94, %90
  br label %122

102:                                              ; preds = %94
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @GIT_ATTR_CHECK_INCLUDE_HEAD, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load i32*, i32** %5, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = load i32, i32* @GIT_ATTR_FILE__FROM_HEAD, align 4
  %111 = load i8*, i8** @GIT_ATTR_FILE, align 8
  %112 = call i32 @preload_attr_file(i32* %108, %struct.TYPE_13__* %109, i32 %110, i8* null, i8* %111, i32 1)
  store i32 %112, i32* %11, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %122

115:                                              ; preds = %107, %102
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %117 = icmp ne %struct.TYPE_13__* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  store i32 1, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %121, %114, %101, %89, %75, %55, %43
  %123 = call i32 @git_buf_dispose(%struct.TYPE_12__* %8)
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %122, %25, %20
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_attr_cache__init(i32*) #2

declare dso_local i32 @system_attr_file(%struct.TYPE_12__*, %struct.TYPE_13__*) #2

declare dso_local i32 @preload_attr_file(i32*, %struct.TYPE_13__*, i32, i8*, i8*, i32) #2

declare dso_local %struct.TYPE_14__* @git_repository_attr_cache(i32*) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_12__*) #2

declare dso_local i32 @git_repository_item_path(%struct.TYPE_12__*, i32*, i32) #2

declare dso_local i8* @git_repository_workdir(i32*) #2

declare dso_local i32 @git_repository_index__weakptr(i32**, i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

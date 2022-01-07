; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_attr.c_collect_attr_files.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_attr.c_collect_attr_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { i32, i8*, i32*, i32, i32*, i32*, i32* }
%struct.TYPE_16__ = type { i32* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GIT_REPOSITORY_ITEM_INFO = common dso_local global i32 0, align 4
@GIT_ATTR_FILE__FROM_FILE = common dso_local global i32 0, align 4
@GIT_ATTR_FILE_INREPO = common dso_local global i32* null, align 8
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GIT_ATTR_CHECK_NO_SYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i8*, i32*)* @collect_attr_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_attr_files(i32* %0, i32* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca %struct.TYPE_14__, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_15__, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = bitcast %struct.TYPE_14__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %18 = bitcast %struct.TYPE_14__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %19 = load i32*, i32** %7, align 8
  %20 = call i8* @git_repository_workdir(i32* %19)
  store i8* %20, i8** %15, align 8
  %21 = bitcast %struct.TYPE_15__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 56, i1 false)
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @attr_setup(i32* %22, i32* %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %6, align 4
  br label %151

29:                                               ; preds = %5
  %30 = load i8*, i8** %15, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = call i32 @git_path_find_dir(%struct.TYPE_14__* %13, i8* %33, i8* %34)
  store i32 %35, i32* %12, align 4
  br label %39

36:                                               ; preds = %29
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @git_path_dirname_r(%struct.TYPE_14__* %13, i8* %37)
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %141

43:                                               ; preds = %39
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @GIT_REPOSITORY_ITEM_INFO, align 4
  %46 = call i32 @git_repository_item_path(%struct.TYPE_14__* %14, i32* %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* @GIT_ATTR_FILE__FROM_FILE, align 4
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32*, i32** @GIT_ATTR_FILE_INREPO, align 8
  %56 = call i32 @push_attr_file(i32* %49, i32* %50, i32* %51, i32 %52, i32* %54, i32* %55, i32 1)
  store i32 %56, i32* %12, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %48, %43
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @GIT_ENOTFOUND, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %141

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %48
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 5
  store i32* %65, i32** %66, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 4
  store i32* %67, i32** %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  store i8* %71, i8** %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 3
  %74 = load i32*, i32** %7, align 8
  %75 = call i64 @git_repository_index__weakptr(i32* %73, i32* %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %64
  %78 = call i32 (...) @git_error_clear()
  br label %79

79:                                               ; preds = %77, %64
  %80 = load i32*, i32** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  store i32* %80, i32** %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @strcmp(i32* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %79
  %87 = call i32 @push_one_attr(%struct.TYPE_15__* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 %87, i32* %12, align 4
  br label %91

88:                                               ; preds = %79
  %89 = load i8*, i8** %15, align 8
  %90 = call i32 @git_path_walk_up(%struct.TYPE_14__* %13, i8* %89, i32 (%struct.TYPE_15__*, i8*)* @push_one_attr, %struct.TYPE_15__* %16)
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %88, %86
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %141

95:                                               ; preds = %91
  %96 = load i32*, i32** %7, align 8
  %97 = call %struct.TYPE_16__* @git_repository_attr_cache(i32* %96)
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %115

101:                                              ; preds = %95
  %102 = load i32*, i32** %7, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* @GIT_ATTR_FILE__FROM_FILE, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = call %struct.TYPE_16__* @git_repository_attr_cache(i32* %106)
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @push_attr_file(i32* %102, i32* %103, i32* %104, i32 %105, i32* null, i32* %109, i32 1)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %101
  br label %141

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114, %95
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @GIT_ATTR_CHECK_NO_SYSTEM, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %115
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 @system_attr_file(%struct.TYPE_14__* %13, i32* %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %120
  %126 = load i32*, i32** %7, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* @GIT_ATTR_FILE__FROM_FILE, align 4
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @push_attr_file(i32* %126, i32* %127, i32* %128, i32 %129, i32* null, i32* %131, i32 1)
  store i32 %132, i32* %12, align 4
  br label %139

133:                                              ; preds = %120
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @GIT_ENOTFOUND, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 0, i32* %12, align 4
  br label %138

138:                                              ; preds = %137, %133
  br label %139

139:                                              ; preds = %138, %125
  br label %140

140:                                              ; preds = %139, %115
  br label %141

141:                                              ; preds = %140, %113, %94, %62, %42
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32*, i32** %11, align 8
  %146 = call i32 @release_attr_files(i32* %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = call i32 @git_buf_dispose(%struct.TYPE_14__* %14)
  %149 = call i32 @git_buf_dispose(%struct.TYPE_14__* %13)
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %147, %27
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @git_repository_workdir(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @attr_setup(i32*, i32*, i32) #2

declare dso_local i32 @git_path_find_dir(%struct.TYPE_14__*, i8*, i8*) #2

declare dso_local i32 @git_path_dirname_r(%struct.TYPE_14__*, i8*) #2

declare dso_local i32 @git_repository_item_path(%struct.TYPE_14__*, i32*, i32) #2

declare dso_local i32 @push_attr_file(i32*, i32*, i32*, i32, i32*, i32*, i32) #2

declare dso_local i64 @git_repository_index__weakptr(i32*, i32*) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i32 @strcmp(i32*, i8*) #2

declare dso_local i32 @push_one_attr(%struct.TYPE_15__*, i8*) #2

declare dso_local i32 @git_path_walk_up(%struct.TYPE_14__*, i8*, i32 (%struct.TYPE_15__*, i8*)*, %struct.TYPE_15__*) #2

declare dso_local %struct.TYPE_16__* @git_repository_attr_cache(i32*) #2

declare dso_local i32 @system_attr_file(%struct.TYPE_14__*, i32*) #2

declare dso_local i32 @release_attr_files(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

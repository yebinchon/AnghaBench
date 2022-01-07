; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_load_workdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_load_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i32, i64, i64 }
%struct.TYPE_16__ = type { i64 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@.str = private unnamed_addr constant [14 x i8] c"core.worktree\00", align 1
@GIT_GITDIR_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*, %struct.TYPE_17__*)* @load_workdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_workdir(%struct.TYPE_15__* %0, i32* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__, align 4
  %11 = alloca %struct.TYPE_17__, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %13 = bitcast %struct.TYPE_17__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_17__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %14 = bitcast %struct.TYPE_17__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_17__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %117

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @git_config__lookup_entry(%struct.TYPE_16__** %9, i32* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %22, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %117

26:                                               ; preds = %20
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %26
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GIT_GITDIR_FILE, align 4
  %36 = call i8* @git_worktree__read_link(i32 %34, i32 %35)
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store i32 -1, i32* %8, align 4
  br label %112

40:                                               ; preds = %31
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @git_buf_attach(%struct.TYPE_17__* %10, i8* %41, i32 0)
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @git_path_dirname_r(%struct.TYPE_17__* %10, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = call i64 @git_path_to_dir(%struct.TYPE_17__* %10)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %40
  store i32 -1, i32* %8, align 4
  br label %112

51:                                               ; preds = %47
  %52 = call i8* @git_buf_detach(%struct.TYPE_17__* %10)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %107

55:                                               ; preds = %26
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %57 = icmp ne %struct.TYPE_16__* %56, null
  br i1 %57, label %58, label %77

58:                                               ; preds = %55
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %58
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @git_path_prettify_dir(%struct.TYPE_17__* %10, i64 %66, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %112

73:                                               ; preds = %63
  %74 = call i8* @git_buf_detach(%struct.TYPE_17__* %10)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %106

77:                                               ; preds = %58, %55
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %79 = icmp ne %struct.TYPE_17__* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @git_path_isdir(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %88 = call i8* @git_buf_detach(%struct.TYPE_17__* %87)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  br label %105

91:                                               ; preds = %80, %77
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @git_path_dirname_r(%struct.TYPE_17__* %10, i32 %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = call i64 @git_path_to_dir(%struct.TYPE_17__* %10)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97, %91
  store i32 -1, i32* %8, align 4
  br label %112

101:                                              ; preds = %97
  %102 = call i8* @git_buf_detach(%struct.TYPE_17__* %10)
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %101, %86
  br label %106

106:                                              ; preds = %105, %73
  br label %107

107:                                              ; preds = %106, %51
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %110)
  br label %112

112:                                              ; preds = %107, %100, %72, %50, %39
  %113 = call i32 @git_buf_dispose(%struct.TYPE_17__* %11)
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %115 = call i32 @git_config_entry_free(%struct.TYPE_16__* %114)
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %112, %24, %19
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_config__lookup_entry(%struct.TYPE_16__**, i32*, i8*, i32) #2

declare dso_local i8* @git_worktree__read_link(i32, i32) #2

declare dso_local i32 @git_buf_attach(%struct.TYPE_17__*, i8*, i32) #2

declare dso_local i64 @git_path_dirname_r(%struct.TYPE_17__*, i32) #2

declare dso_local i64 @git_path_to_dir(%struct.TYPE_17__*) #2

declare dso_local i8* @git_buf_detach(%struct.TYPE_17__*) #2

declare dso_local i32 @git_path_prettify_dir(%struct.TYPE_17__*, i64, i32) #2

declare dso_local i64 @git_path_isdir(i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_17__*) #2

declare dso_local i32 @git_config_entry_free(%struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

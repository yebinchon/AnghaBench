; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_sysdir.c_git_sysdir_set.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_sysdir.c_git_sysdir_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 (%struct.TYPE_14__*)* }
%struct.TYPE_14__ = type { i8* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@PATH_MAGIC = common dso_local global i32 0, align 4
@git_sysdir__dirs = common dso_local global %struct.TYPE_15__* null, align 8
@GIT_PATH_LIST_SEPARATOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_sysdir_set(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_13__, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = bitcast %struct.TYPE_13__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_13__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @git_sysdir_check_selector(i64 %9)
  %11 = call i32 @GIT_ERROR_CHECK_ERROR(i32 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @PATH_MAGIC, align 4
  %17 = call i8* @strstr(i8* %15, i32 %16)
  store i8* %17, i8** %6, align 8
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** @git_sysdir__dirs, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %25, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** @git_sysdir__dirs, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = call i32 %26(%struct.TYPE_14__* %30)
  br label %32

32:                                               ; preds = %21, %18
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** @git_sysdir__dirs, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @git_buf_sets(%struct.TYPE_14__* %42, i8* %43)
  br label %45

45:                                               ; preds = %38, %35
  br label %99

46:                                               ; preds = %32
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = icmp ugt i8* %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @git_buf_set(%struct.TYPE_13__* %7, i8* %51, i32 %57)
  br label %59

59:                                               ; preds = %50, %46
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** @git_sysdir__dirs, align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = call i64 @git_buf_len(%struct.TYPE_14__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %59
  %67 = load i32, i32* @GIT_PATH_LIST_SEPARATOR, align 4
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** @git_sysdir__dirs, align 8
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @git_buf_join(%struct.TYPE_13__* %7, i32 %67, i32 %69, i8* %75)
  br label %77

77:                                               ; preds = %66, %59
  %78 = load i32, i32* @PATH_MAGIC, align 4
  %79 = call i32 @strlen(i32 %78)
  %80 = load i8*, i8** %6, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %6, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %77
  %87 = load i32, i32* @GIT_PATH_LIST_SEPARATOR, align 4
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @git_buf_join(%struct.TYPE_13__* %7, i32 %87, i32 %89, i8* %90)
  br label %92

92:                                               ; preds = %86, %77
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** @git_sysdir__dirs, align 8
  %94 = load i64, i64* %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = call i32 @git_buf_swap(%struct.TYPE_14__* %96, %struct.TYPE_13__* %7)
  %98 = call i32 @git_buf_dispose(%struct.TYPE_13__* %7)
  br label %99

99:                                               ; preds = %92, %45
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** @git_sysdir__dirs, align 8
  %101 = load i64, i64* %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = call i64 @git_buf_oom(%struct.TYPE_14__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store i32 -1, i32* %3, align 4
  br label %108

107:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %106
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GIT_ERROR_CHECK_ERROR(i32) #2

declare dso_local i32 @git_sysdir_check_selector(i64) #2

declare dso_local i8* @strstr(i8*, i32) #2

declare dso_local i32 @git_buf_sets(%struct.TYPE_14__*, i8*) #2

declare dso_local i32 @git_buf_set(%struct.TYPE_13__*, i8*, i32) #2

declare dso_local i64 @git_buf_len(%struct.TYPE_14__*) #2

declare dso_local i32 @git_buf_join(%struct.TYPE_13__*, i32, i32, i8*) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @git_buf_swap(%struct.TYPE_14__*, %struct.TYPE_13__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_13__*) #2

declare dso_local i64 @git_buf_oom(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

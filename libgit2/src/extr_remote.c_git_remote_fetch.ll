; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote_fetch.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32* }
%struct.TYPE_15__ = type { i32, i64, i64, i32 }
%struct.TYPE_16__ = type { i32, i64, i32, i32, i32, i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_REMOTE_CONNECTION_OPTIONS_INIT = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GIT_REMOTE_CALLBACKS_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"git_remote_callbacks\00", align 1
@GIT_PROXY_OPTIONS_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"git_proxy_options\00", align 1
@GIT_DIRECTION_FETCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"fetch %s\00", align 1
@GIT_FETCH_PRUNE = common dso_local global i64 0, align 8
@GIT_FETCH_PRUNE_UNSPECIFIED = common dso_local global i64 0, align 8
@GIT_FETCH_NO_PRUNE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_remote_fetch(%struct.TYPE_15__* %0, i32* %1, %struct.TYPE_16__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 1, i32* %11, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %20, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %21 = bitcast %struct.TYPE_14__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.TYPE_14__* @GIT_REMOTE_CONNECTION_OPTIONS_INIT to i8*), i64 16, i1 false)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %23 = icmp ne %struct.TYPE_16__* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 5
  %27 = load i32, i32* @GIT_REMOTE_CALLBACKS_VERSION, align 4
  %28 = call i32 @GIT_ERROR_CHECK_VERSION(i32* %26, i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 5
  store i32* %30, i32** %15, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  store i32* %32, i32** %33, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 2
  %42 = load i32, i32* @GIT_PROXY_OPTIONS_VERSION, align 4
  %43 = call i32 @GIT_ERROR_CHECK_VERSION(i32* %41, i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store i32* %45, i32** %46, align 8
  br label %47

47:                                               ; preds = %24, %4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = load i32, i32* @GIT_DIRECTION_FETCH, align 4
  %50 = load i32*, i32** %15, align 8
  %51 = call i32 @git_remote__connect(%struct.TYPE_15__* %48, i32 %49, i32* %50, %struct.TYPE_14__* %16)
  store i32 %51, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  br label %150

55:                                               ; preds = %47
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %59 = call i32 @git_remote_download(%struct.TYPE_15__* %56, i32* %57, %struct.TYPE_16__* %58)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = call i32 @git_remote_disconnect(%struct.TYPE_15__* %60)
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %150

66:                                               ; preds = %55
  %67 = load i8*, i8** %9, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @git_buf_sets(i32* %14, i8* %70)
  br label %88

72:                                               ; preds = %66
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  br label %85

81:                                               ; preds = %72
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i64 [ %80, %77 ], [ %84, %81 ]
  %87 = call i32 @git_buf_printf(i32* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %86)
  br label %88

88:                                               ; preds = %85, %69
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = load i32*, i32** %15, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @git_buf_cstr(i32* %14)
  %94 = call i32 @git_remote_update_tips(%struct.TYPE_15__* %89, i32* %90, i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = call i32 @git_buf_dispose(i32* %14)
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %5, align 4
  br label %150

100:                                              ; preds = %88
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %102 = icmp ne %struct.TYPE_16__* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @GIT_FETCH_PRUNE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 1, i32* %13, align 4
  br label %141

110:                                              ; preds = %103, %100
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %112 = icmp ne %struct.TYPE_16__* %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %110
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @GIT_FETCH_PRUNE_UNSPECIFIED, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i32 1, i32* %13, align 4
  br label %140

125:                                              ; preds = %119, %113, %110
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %127 = icmp ne %struct.TYPE_16__* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @GIT_FETCH_NO_PRUNE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i32 0, i32* %13, align 4
  br label %139

135:                                              ; preds = %128, %125
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %13, align 4
  br label %139

139:                                              ; preds = %135, %134
  br label %140

140:                                              ; preds = %139, %124
  br label %141

141:                                              ; preds = %140, %109
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %146 = load i32*, i32** %15, align 8
  %147 = call i32 @git_remote_prune(%struct.TYPE_15__* %145, i32* %146)
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %144, %141
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %148, %98, %64, %53
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(i32*, i32, i8*) #2

declare dso_local i32 @git_remote__connect(%struct.TYPE_15__*, i32, i32*, %struct.TYPE_14__*) #2

declare dso_local i32 @git_remote_download(%struct.TYPE_15__*, i32*, %struct.TYPE_16__*) #2

declare dso_local i32 @git_remote_disconnect(%struct.TYPE_15__*) #2

declare dso_local i32 @git_buf_sets(i32*, i8*) #2

declare dso_local i32 @git_buf_printf(i32*, i8*, i64) #2

declare dso_local i32 @git_remote_update_tips(%struct.TYPE_15__*, i32*, i32, i32, i32) #2

declare dso_local i32 @git_buf_cstr(i32*) #2

declare dso_local i32 @git_buf_dispose(i32*) #2

declare dso_local i32 @git_remote_prune(%struct.TYPE_15__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote__connect.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote__connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 (%struct.TYPE_26__*, i32, i32*, i8*, %struct.TYPE_29__*, i32, i32)*, i32 (%struct.TYPE_26__*)* }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_26__**, %struct.TYPE_27__*, i8*)*, i8*, i32* }
%struct.TYPE_28__ = type { %struct.TYPE_29__*, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_30__ zeroinitializer, align 4
@GIT_TRANSPORTFLAGS_NONE = common dso_local global i32 0, align 4
@GIT_REMOTE_CALLBACKS_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"git_remote_callbacks\00", align 1
@GIT_PROXY_OPTIONS_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"git_proxy_options\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_remote__connect(%struct.TYPE_27__* %0, i32 %1, %struct.TYPE_29__* %2, %struct.TYPE_28__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_30__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32 (%struct.TYPE_26__**, %struct.TYPE_27__*, i8*)*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %8, align 8
  store %struct.TYPE_28__* %3, %struct.TYPE_28__** %9, align 8
  %17 = bitcast %struct.TYPE_30__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.TYPE_30__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %18 = load i32, i32* @GIT_TRANSPORTFLAGS_NONE, align 4
  store i32 %18, i32* %12, align 4
  store i8* null, i8** %14, align 8
  store i32* null, i32** %15, align 8
  store i32 (%struct.TYPE_26__**, %struct.TYPE_27__*, i8*)* null, i32 (%struct.TYPE_26__**, %struct.TYPE_27__*, i8*)** %16, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %20 = call i32 @assert(%struct.TYPE_27__* %19)
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %22 = icmp ne %struct.TYPE_29__* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %4
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %25 = load i32, i32* @GIT_REMOTE_CALLBACKS_VERSION, align 4
  %26 = call i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_29__* %24, i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %15, align 8
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_26__**, %struct.TYPE_27__*, i8*)*, i32 (%struct.TYPE_26__**, %struct.TYPE_27__*, i8*)** %31, align 8
  store i32 (%struct.TYPE_26__**, %struct.TYPE_27__*, i8*)* %32, i32 (%struct.TYPE_26__**, %struct.TYPE_27__*, i8*)** %16, align 8
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %14, align 8
  br label %36

36:                                               ; preds = %23, %4
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %38, align 8
  %40 = icmp ne %struct.TYPE_29__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %43, align 8
  %45 = load i32, i32* @GIT_PROXY_OPTIONS_VERSION, align 4
  %46 = call i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_29__* %44, i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %41, %36
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %49, align 8
  store %struct.TYPE_26__* %50, %struct.TYPE_26__** %10, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %54 = call i32 @git_remote__urlfordirection(%struct.TYPE_30__* %11, %struct.TYPE_27__* %51, i32 %52, %struct.TYPE_29__* %53)
  store i32 %54, i32* %13, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %115

57:                                               ; preds = %47
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %59 = icmp ne %struct.TYPE_26__* %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %57
  %61 = load i32 (%struct.TYPE_26__**, %struct.TYPE_27__*, i8*)*, i32 (%struct.TYPE_26__**, %struct.TYPE_27__*, i8*)** %16, align 8
  %62 = icmp ne i32 (%struct.TYPE_26__**, %struct.TYPE_27__*, i8*)* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32 (%struct.TYPE_26__**, %struct.TYPE_27__*, i8*)*, i32 (%struct.TYPE_26__**, %struct.TYPE_27__*, i8*)** %16, align 8
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = call i32 %64(%struct.TYPE_26__** %10, %struct.TYPE_27__* %65, i8* %66)
  store i32 %67, i32* %13, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %115

70:                                               ; preds = %63, %60, %57
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %72 = icmp ne %struct.TYPE_26__* %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @git_transport_new(%struct.TYPE_26__** %10, %struct.TYPE_27__* %74, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %115

80:                                               ; preds = %73, %70
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @set_transport_custom_headers(%struct.TYPE_26__* %81, i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %115

88:                                               ; preds = %80
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %91 = call i32 @set_transport_callbacks(%struct.TYPE_26__* %89, %struct.TYPE_29__* %90)
  store i32 %91, i32* %13, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %88
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 0
  %96 = load i32 (%struct.TYPE_26__*, i32, i32*, i8*, %struct.TYPE_29__*, i32, i32)*, i32 (%struct.TYPE_26__*, i32, i32*, i8*, %struct.TYPE_29__*, i32, i32)** %95, align 8
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %15, align 8
  %101 = load i8*, i8** %14, align 8
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 %96(%struct.TYPE_26__* %97, i32 %99, i32* %100, i8* %101, %struct.TYPE_29__* %104, i32 %105, i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %93, %88
  br label %115

110:                                              ; preds = %93
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 0
  store %struct.TYPE_26__* %111, %struct.TYPE_26__** %113, align 8
  %114 = call i32 @git_buf_dispose(%struct.TYPE_30__* %11)
  store i32 0, i32* %5, align 4
  br label %136

115:                                              ; preds = %109, %87, %79, %69, %56
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %117 = icmp ne %struct.TYPE_26__* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 1
  %121 = load i32 (%struct.TYPE_26__*)*, i32 (%struct.TYPE_26__*)** %120, align 8
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %123 = call i32 %121(%struct.TYPE_26__* %122)
  br label %124

124:                                              ; preds = %118, %115
  %125 = call i32 @git_buf_dispose(%struct.TYPE_30__* %11)
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %128, align 8
  %130 = icmp eq %struct.TYPE_26__* %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 0
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %133, align 8
  br label %134

134:                                              ; preds = %131, %124
  %135 = load i32, i32* %13, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %134, %110
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(%struct.TYPE_27__*) #2

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_29__*, i32, i8*) #2

declare dso_local i32 @git_remote__urlfordirection(%struct.TYPE_30__*, %struct.TYPE_27__*, i32, %struct.TYPE_29__*) #2

declare dso_local i32 @git_transport_new(%struct.TYPE_26__**, %struct.TYPE_27__*, i32) #2

declare dso_local i32 @set_transport_custom_headers(%struct.TYPE_26__*, i32) #2

declare dso_local i32 @set_transport_callbacks(%struct.TYPE_26__*, %struct.TYPE_29__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_30__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

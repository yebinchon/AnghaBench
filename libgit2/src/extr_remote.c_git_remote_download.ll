; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote_download.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i32* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__, i32 }

@GIT_VECTOR_INIT = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cannot download detached remote\00", align 1
@GIT_REMOTE_CALLBACKS_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"git_remote_callbacks\00", align 1
@GIT_PROXY_OPTIONS_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"git_proxy_options\00", align 1
@GIT_DIRECTION_FETCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_remote_download(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store i32 -1, i32* %8, align 4
  %16 = load i32, i32* @GIT_VECTOR_INIT, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @GIT_VECTOR_INIT, align 4
  store i32 %17, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %14, align 8
  store i32* null, i32** %15, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = call i32 @assert(%struct.TYPE_16__* %18)
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %26 = call i32 @git_error_set(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %158

27:                                               ; preds = %3
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %29 = icmp ne %struct.TYPE_17__* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %33 = load i32, i32* @GIT_REMOTE_CALLBACKS_VERSION, align 4
  %34 = call i32 @GIT_ERROR_CHECK_VERSION(i32* %32, i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 2
  store i32* %36, i32** %13, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %14, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* @GIT_PROXY_OPTIONS_VERSION, align 4
  %42 = call i32 @GIT_ERROR_CHECK_VERSION(i32* %40, i32 %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  store i32* %44, i32** %15, align 8
  br label %45

45:                                               ; preds = %30, %27
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = call i32 @git_remote_connected(%struct.TYPE_16__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %45
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = load i32, i32* @GIT_DIRECTION_FETCH, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %55 = call i32 @git_remote_connect(%struct.TYPE_16__* %50, i32 %51, i32* %52, i32* %53, %struct.TYPE_15__* %54)
  store i32 %55, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %153

58:                                               ; preds = %49, %45
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = call i64 @ls_to_vector(i32* %12, %struct.TYPE_16__* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %158

63:                                               ; preds = %58
  %64 = call i64 @git_vector_init(i32* %11, i32 0, i32* null)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %153

67:                                               ; preds = %63
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %71 = icmp ne %struct.TYPE_15__* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 3
  store i32* %79, i32** %10, align 8
  br label %104

80:                                               ; preds = %72
  store i64 0, i64* %9, align 8
  br label %81

81:                                               ; preds = %98, %80
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ult i64 %82, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %81
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @add_refspec_to(i32* %11, i32 %93, i32 1)
  store i32 %94, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %153

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %9, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %9, align 8
  br label %81

101:                                              ; preds = %81
  store i32* %11, i32** %10, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %101, %77
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 4
  %107 = call i32 @free_refspecs(i32* %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 3
  %112 = call i32 @dwim_refspecs(i32* %109, i32* %111, i32* %12)
  store i32 %112, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %153

115:                                              ; preds = %104
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  %118 = call i32 @free_refspecs(i32* %117)
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 2
  %121 = load i32*, i32** %10, align 8
  %122 = call i32 @dwim_refspecs(i32* %120, i32* %121, i32* %12)
  store i32 %122, i32* %8, align 4
  %123 = call i32 @git_vector_free(i32* %12)
  %124 = call i32 @free_refspecs(i32* %11)
  %125 = call i32 @git_vector_free(i32* %11)
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %115
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %4, align 4
  br label %158

130:                                              ; preds = %115
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @git_push_free(i32* %138)
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  store i32* null, i32** %141, align 8
  br label %142

142:                                              ; preds = %135, %130
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %145 = call i32 @git_fetch_negotiate(%struct.TYPE_16__* %143, %struct.TYPE_17__* %144)
  store i32 %145, i32* %8, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %4, align 4
  br label %158

149:                                              ; preds = %142
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %151 = load i32*, i32** %13, align 8
  %152 = call i32 @git_fetch_download_pack(%struct.TYPE_16__* %150, i32* %151)
  store i32 %152, i32* %4, align 4
  br label %158

153:                                              ; preds = %114, %96, %66, %57
  %154 = call i32 @git_vector_free(i32* %12)
  %155 = call i32 @free_refspecs(i32* %11)
  %156 = call i32 @git_vector_free(i32* %11)
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %153, %149, %147, %128, %62, %24
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @assert(%struct.TYPE_16__*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(i32*, i32, i8*) #1

declare dso_local i32 @git_remote_connected(%struct.TYPE_16__*) #1

declare dso_local i32 @git_remote_connect(%struct.TYPE_16__*, i32, i32*, i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @ls_to_vector(i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @git_vector_init(i32*, i32, i32*) #1

declare dso_local i32 @add_refspec_to(i32*, i32, i32) #1

declare dso_local i32 @free_refspecs(i32*) #1

declare dso_local i32 @dwim_refspecs(i32*, i32*, i32*) #1

declare dso_local i32 @git_vector_free(i32*) #1

declare dso_local i32 @git_push_free(i32*) #1

declare dso_local i32 @git_fetch_negotiate(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @git_fetch_download_pack(%struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

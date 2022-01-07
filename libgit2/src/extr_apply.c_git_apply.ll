; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_apply.c_git_apply.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_apply.c_git_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@GIT_INDEXWRITER_INIT = common dso_local global i32 0, align 4
@GIT_APPLY_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GIT_EINVALID = common dso_local global i32 0, align 4
@GIT_APPLY_OPTIONS_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"git_apply_options\00", align 1
@GIT_APPLY_CHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_apply(i32* %0, i32* %1, i32 %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_10__, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %8, align 8
  %17 = load i32, i32* @GIT_INDEXWRITER_INIT, align 4
  store i32 %17, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %18 = bitcast %struct.TYPE_10__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_APPLY_OPTIONS_INIT to i8*), i64 4, i1 false)
  %19 = load i32, i32* @GIT_EINVALID, align 4
  store i32 %19, i32* %16, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br label %25

25:                                               ; preds = %22, %4
  %26 = phi i1 [ false, %4 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = load i32, i32* @GIT_APPLY_OPTIONS_VERSION, align 4
  %31 = call i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_10__* %29, i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = icmp ne %struct.TYPE_10__* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = call i32 @memcpy(%struct.TYPE_10__* %15, %struct.TYPE_10__* %35, i32 4)
  br label %37

37:                                               ; preds = %34, %25
  %38 = load i32, i32* %7, align 4
  switch i32 %38, label %48 [
    i32 130, label %39
    i32 129, label %42
    i32 128, label %45
  ]

39:                                               ; preds = %37
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @git_reader_for_workdir(i32** %13, i32* %40, i32 1)
  store i32 %41, i32* %16, align 4
  br label %50

42:                                               ; preds = %37
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @git_reader_for_index(i32** %13, i32* %43, i32* null)
  store i32 %44, i32* %16, align 4
  br label %50

45:                                               ; preds = %37
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @git_reader_for_workdir(i32** %13, i32* %46, i32 0)
  store i32 %47, i32* %16, align 4
  br label %50

48:                                               ; preds = %37
  %49 = call i32 @assert(i32 0)
  br label %50

50:                                               ; preds = %48, %45, %42, %39
  %51 = load i32, i32* %16, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %129

54:                                               ; preds = %50
  %55 = call i32 @git_index_new(i32** %11)
  store i32 %55, i32* %16, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = call i32 @git_index_new(i32** %12)
  store i32 %58, i32* %16, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load i32*, i32** %5, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @git_reader_for_index(i32** %14, i32* %61, i32* %62)
  store i32 %63, i32* %16, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %57, %54
  br label %129

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @GIT_APPLY_CHECK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %66
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @git_repository_index(i32** %10, i32* %73)
  store i32 %74, i32* %16, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @git_indexwriter_init(i32* %9, i32* %77)
  store i32 %78, i32* %16, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %72
  br label %129

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %66
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32*, i32** %14, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @apply_deltas(i32* %83, i32* %84, i32* %85, i32* %86, i32* %87, i32* %88, %struct.TYPE_10__* %15)
  store i32 %89, i32* %16, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %129

92:                                               ; preds = %82
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @GIT_APPLY_CHECK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %129

99:                                               ; preds = %92
  %100 = load i32, i32* %7, align 4
  switch i32 %100, label %121 [
    i32 130, label %101
    i32 129, label %108
    i32 128, label %114
  ]

101:                                              ; preds = %99
  %102 = load i32*, i32** %5, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load i32*, i32** %12, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @git_apply__to_workdir(i32* %102, i32* %103, i32* %104, i32* %105, i32 %106, %struct.TYPE_10__* %15)
  store i32 %107, i32* %16, align 4
  br label %123

108:                                              ; preds = %99
  %109 = load i32*, i32** %5, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = call i32 @git_apply__to_index(i32* %109, i32* %110, i32* %111, i32* %112, %struct.TYPE_10__* %15)
  store i32 %113, i32* %16, align 4
  br label %123

114:                                              ; preds = %99
  %115 = load i32*, i32** %5, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @git_apply__to_workdir(i32* %115, i32* %116, i32* %117, i32* %118, i32 %119, %struct.TYPE_10__* %15)
  store i32 %120, i32* %16, align 4
  br label %123

121:                                              ; preds = %99
  %122 = call i32 @assert(i32 0)
  br label %123

123:                                              ; preds = %121, %114, %108, %101
  %124 = load i32, i32* %16, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %129

127:                                              ; preds = %123
  %128 = call i32 @git_indexwriter_commit(i32* %9)
  store i32 %128, i32* %16, align 4
  br label %129

129:                                              ; preds = %127, %126, %98, %91, %80, %65, %53
  %130 = call i32 @git_indexwriter_cleanup(i32* %9)
  %131 = load i32*, i32** %12, align 8
  %132 = call i32 @git_index_free(i32* %131)
  %133 = load i32*, i32** %11, align 8
  %134 = call i32 @git_index_free(i32* %133)
  %135 = load i32*, i32** %10, align 8
  %136 = call i32 @git_index_free(i32* %135)
  %137 = load i32*, i32** %13, align 8
  %138 = call i32 @git_reader_free(i32* %137)
  %139 = load i32*, i32** %14, align 8
  %140 = call i32 @git_reader_free(i32* %139)
  %141 = load i32, i32* %16, align 4
  ret i32 %141
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_10__*, i32, i8*) #2

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #2

declare dso_local i32 @git_reader_for_workdir(i32**, i32*, i32) #2

declare dso_local i32 @git_reader_for_index(i32**, i32*, i32*) #2

declare dso_local i32 @git_index_new(i32**) #2

declare dso_local i32 @git_repository_index(i32**, i32*) #2

declare dso_local i32 @git_indexwriter_init(i32*, i32*) #2

declare dso_local i32 @apply_deltas(i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @git_apply__to_workdir(i32*, i32*, i32*, i32*, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @git_apply__to_index(i32*, i32*, i32*, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @git_indexwriter_commit(i32*) #2

declare dso_local i32 @git_indexwriter_cleanup(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_reader_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

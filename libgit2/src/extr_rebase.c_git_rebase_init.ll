; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_rebase.c_git_rebase_init.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_rebase.c_git_rebase_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"rebase\00", align 1
@GIT_ERROR = common dso_local global i32 0, align 4
@GIT_REBASE_TYPE_MERGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_rebase_init(%struct.TYPE_14__** %0, i32* %1, i32* %2, i32* %3, i32* %4, %struct.TYPE_13__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %20 = icmp ne %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %6
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %21, %6
  %27 = phi i1 [ false, %6 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %17, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32*, i32** %12, align 8
  %36 = icmp ne i32* %35, null
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i1 [ true, %31 ], [ %36, %34 ]
  br label %39

39:                                               ; preds = %37, %26
  %40 = phi i1 [ false, %26 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %43, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = load i32*, i32** %11, align 8
  store i32* %47, i32** %12, align 8
  br label %48

48:                                               ; preds = %46, %39
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %50 = call i32 @rebase_check_versions(%struct.TYPE_13__* %49)
  store i32 %50, i32* %18, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %133

53:                                               ; preds = %48
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %53
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @git_repository__ensure_not_bare(i32* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %58, i32* %18, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %56
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @rebase_ensure_not_in_progress(i32* %61)
  store i32 %62, i32* %18, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* @GIT_ERROR, align 4
  %67 = call i32 @rebase_ensure_not_dirty(i32* %65, i32 1, i32 1, i32 %66)
  store i32 %67, i32* %18, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %60, %56
  br label %133

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %53
  %72 = load i32*, i32** %10, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %86, label %74

74:                                               ; preds = %71
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @git_repository_head(i32** %16, i32* %75)
  store i32 %76, i32* %18, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load i32*, i32** %9, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = call i32 @git_annotated_commit_from_ref(i32** %15, i32* %79, i32* %80)
  store i32 %81, i32* %18, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %74
  br label %133

84:                                               ; preds = %78
  %85 = load i32*, i32** %15, align 8
  store i32* %85, i32** %10, align 8
  br label %86

86:                                               ; preds = %84, %71
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %88 = call i64 @rebase_alloc(%struct.TYPE_14__** %14, %struct.TYPE_13__* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 -1, i32* %7, align 4
  br label %147

91:                                               ; preds = %86
  %92 = load i32*, i32** %9, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  store i32* %92, i32** %94, align 8
  %95 = load i32, i32* %17, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @GIT_REBASE_TYPE_MERGE, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load i32*, i32** %12, align 8
  %106 = call i32 @rebase_init_operations(%struct.TYPE_14__* %101, i32* %102, i32* %103, i32* %104, i32* %105)
  store i32 %106, i32* %18, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %91
  br label %133

109:                                              ; preds = %91
  %110 = load i32, i32* %17, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @rebase_init_inmemory(%struct.TYPE_14__* %113, i32* %114, i32* %115, i32* %116, i32* %117)
  store i32 %118, i32* %18, align 4
  br label %126

119:                                              ; preds = %109
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = call i32 @rebase_init_merge(%struct.TYPE_14__* %120, i32* %121, i32* %122, i32* %123, i32* %124)
  store i32 %125, i32* %18, align 4
  br label %126

126:                                              ; preds = %119, %112
  %127 = load i32, i32* %18, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %131 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  store %struct.TYPE_14__* %130, %struct.TYPE_14__** %131, align 8
  br label %132

132:                                              ; preds = %129, %126
  br label %133

133:                                              ; preds = %132, %108, %83, %69, %52
  %134 = load i32*, i32** %16, align 8
  %135 = call i32 @git_reference_free(i32* %134)
  %136 = load i32*, i32** %15, align 8
  %137 = call i32 @git_annotated_commit_free(i32* %136)
  %138 = load i32, i32* %18, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %142 = call i32 @rebase_cleanup(%struct.TYPE_14__* %141)
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %144 = call i32 @git_rebase_free(%struct.TYPE_14__* %143)
  br label %145

145:                                              ; preds = %140, %133
  %146 = load i32, i32* %18, align 4
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %145, %90
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rebase_check_versions(%struct.TYPE_13__*) #1

declare dso_local i32 @git_repository__ensure_not_bare(i32*, i8*) #1

declare dso_local i32 @rebase_ensure_not_in_progress(i32*) #1

declare dso_local i32 @rebase_ensure_not_dirty(i32*, i32, i32, i32) #1

declare dso_local i32 @git_repository_head(i32**, i32*) #1

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32*, i32*) #1

declare dso_local i64 @rebase_alloc(%struct.TYPE_14__**, %struct.TYPE_13__*) #1

declare dso_local i32 @rebase_init_operations(%struct.TYPE_14__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @rebase_init_inmemory(%struct.TYPE_14__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @rebase_init_merge(%struct.TYPE_14__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_annotated_commit_free(i32*) #1

declare dso_local i32 @rebase_cleanup(%struct.TYPE_14__*) #1

declare dso_local i32 @git_rebase_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

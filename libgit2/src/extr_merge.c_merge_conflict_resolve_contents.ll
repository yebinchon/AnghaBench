; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_conflict_resolve_contents.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_conflict_resolve_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_33__ = type { i32, i32, i32 }
%struct.TYPE_34__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_30__ = type { i32*, i32*, i32*, %struct.TYPE_29__*, i32, i32, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_31__ = type { i64, %struct.TYPE_32__, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }

@GIT_MERGE_FILE_FAVOR_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"text\00", align 1
@git_merge_driver__builtin_apply = common dso_local global i32 0, align 4
@GIT_PASSTHROUGH = common dso_local global i32 0, align 4
@git_merge_driver__text = common dso_local global %struct.TYPE_26__ zeroinitializer, align 4
@GIT_EMERGECONFLICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_33__*, %struct.TYPE_34__*, %struct.TYPE_27__*, %struct.TYPE_29__*)* @merge_conflict_resolve_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_conflict_resolve_contents(i32* %0, %struct.TYPE_33__* %1, %struct.TYPE_34__* %2, %struct.TYPE_27__* %3, %struct.TYPE_29__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca %struct.TYPE_30__, align 8
  %13 = alloca %struct.TYPE_28__, align 4
  %14 = alloca %struct.TYPE_32__*, align 8
  %15 = alloca %struct.TYPE_31__, align 8
  %16 = alloca %struct.TYPE_34__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %8, align 8
  store %struct.TYPE_34__* %2, %struct.TYPE_34__** %9, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %10, align 8
  store %struct.TYPE_29__* %4, %struct.TYPE_29__** %11, align 8
  %21 = bitcast %struct.TYPE_30__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 48, i1 false)
  %22 = bitcast %struct.TYPE_28__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 4, i1 false)
  %23 = bitcast %struct.TYPE_31__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 16, i1 false)
  store i32* null, i32** %17, align 8
  store i32 0, i32* %19, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %28 = icmp ne %struct.TYPE_33__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %31 = icmp ne %struct.TYPE_34__* %30, null
  br label %32

32:                                               ; preds = %29, %26, %5
  %33 = phi i1 [ false, %26 ], [ false, %5 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32*, i32** %7, align 8
  store i32 0, i32* %36, align 4
  %37 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %38 = call i32 @merge_conflict_can_resolve_contents(%struct.TYPE_34__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %154

41:                                               ; preds = %32
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 5
  store i32 %44, i32* %45, align 4
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 4
  store i32 %48, i32* %49, align 8
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 3
  store %struct.TYPE_29__* %50, %struct.TYPE_29__** %51, align 8
  %52 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @GIT_MERGE_INDEX_ENTRY_EXISTS(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %41
  %58 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %58, i32 0, i32 2
  br label %61

60:                                               ; preds = %41
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i32* [ %59, %57 ], [ null, %60 ]
  %63 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 2
  store i32* %62, i32** %63, align 8
  %64 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @GIT_MERGE_INDEX_ENTRY_EXISTS(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %70, i32 0, i32 1
  br label %73

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi i32* [ %71, %69 ], [ null, %72 ]
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 1
  store i32* %74, i32** %75, align 8
  %76 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @GIT_MERGE_INDEX_ENTRY_EXISTS(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %82, i32 0, i32 0
  br label %85

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %81
  %86 = phi i32* [ %83, %81 ], [ null, %84 ]
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 0
  store i32* %86, i32** %87, align 8
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @GIT_MERGE_FILE_FAVOR_NORMAL, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %85
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %94 = load i32, i32* @git_merge_driver__builtin_apply, align 4
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 0
  store i64 %99, i64* %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 1
  store %struct.TYPE_32__* %101, %struct.TYPE_32__** %14, align 8
  br label %111

102:                                              ; preds = %85
  %103 = call i32 @git_merge_driver_for_source(i8** %18, %struct.TYPE_32__** %14, %struct.TYPE_30__* %12)
  store i32 %103, i32* %20, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %149

106:                                              ; preds = %102
  %107 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %108 = icmp eq %struct.TYPE_32__* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 1, i32* %19, align 4
  br label %110

110:                                              ; preds = %109, %106
  br label %111

111:                                              ; preds = %110, %93
  %112 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %113 = icmp ne %struct.TYPE_32__* %112, null
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = load i8*, i8** %18, align 8
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %118 = call i32 @merge_conflict_invoke_driver(%struct.TYPE_34__** %16, i8* %115, %struct.TYPE_32__* %116, %struct.TYPE_33__* %117, %struct.TYPE_30__* %12)
  store i32 %118, i32* %20, align 4
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* @GIT_PASSTHROUGH, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i32 1, i32* %19, align 4
  br label %123

123:                                              ; preds = %122, %114
  br label %124

124:                                              ; preds = %123, %111
  %125 = load i32, i32* %19, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %129 = call i32 @merge_conflict_invoke_driver(%struct.TYPE_34__** %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_32__* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @git_merge_driver__text, i32 0, i32 0), %struct.TYPE_33__* %128, %struct.TYPE_30__* %12)
  store i32 %129, i32* %20, align 4
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i32, i32* %20, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* @GIT_EMERGECONFLICT, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 0, i32* %20, align 4
  br label %138

138:                                              ; preds = %137, %133
  br label %149

139:                                              ; preds = %130
  %140 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %143 = call i32 @git_vector_insert(i32* %141, %struct.TYPE_34__* %142)
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %147 = call i32 @git_vector_insert(i32* %145, %struct.TYPE_34__* %146)
  %148 = load i32*, i32** %7, align 8
  store i32 1, i32* %148, align 4
  br label %149

149:                                              ; preds = %139, %138, %105
  %150 = call i32 @git_merge_file_result_free(%struct.TYPE_28__* %13)
  %151 = load i32*, i32** %17, align 8
  %152 = call i32 @git_odb_free(i32* %151)
  %153 = load i32, i32* %20, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %149, %40
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @merge_conflict_can_resolve_contents(%struct.TYPE_34__*) #2

declare dso_local i64 @GIT_MERGE_INDEX_ENTRY_EXISTS(i32) #2

declare dso_local i32 @git_merge_driver_for_source(i8**, %struct.TYPE_32__**, %struct.TYPE_30__*) #2

declare dso_local i32 @merge_conflict_invoke_driver(%struct.TYPE_34__**, i8*, %struct.TYPE_32__*, %struct.TYPE_33__*, %struct.TYPE_30__*) #2

declare dso_local i32 @git_vector_insert(i32*, %struct.TYPE_34__*) #2

declare dso_local i32 @git_merge_file_result_free(%struct.TYPE_28__*) #2

declare dso_local i32 @git_odb_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

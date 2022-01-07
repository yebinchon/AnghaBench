; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge_driver.c_git_merge_driver__builtin_apply.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge_driver.c_git_merge_driver__builtin_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_22__ = type { i8*, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_23__*, i32, i32 }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_23__ = type { i32, i32* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_18__ = type { i32*, i32, i32, i32 }

@GIT_MERGE_FILE_OPTIONS_INIT = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@GIT_MERGE_FILE_FAVOR__CONFLICTED = common dso_local global i32 0, align 4
@GIT_EMERGECONFLICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_merge_driver__builtin_apply(i32* %0, i8** %1, i32* %2, %struct.TYPE_22__* %3, i8* %4, %struct.TYPE_20__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_19__, align 8
  %15 = alloca %struct.TYPE_18__, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.TYPE_20__* %5, %struct.TYPE_20__** %12, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %13, align 8
  %19 = bitcast %struct.TYPE_19__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.TYPE_19__* @GIT_MERGE_FILE_OPTIONS_INIT to i8*), i64 16, i1 false)
  %20 = bitcast %struct.TYPE_18__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 24, i1 false)
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @GIT_UNUSED(i8* %21)
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %6
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(%struct.TYPE_19__* %14, i32 %30, i32 16)
  br label %32

32:                                               ; preds = %27, %6
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %47, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = call i32 @git_merge_file_from_index(%struct.TYPE_18__* %15, i32 %45, %struct.TYPE_23__* %48, %struct.TYPE_16__* %51, %struct.TYPE_17__* %54, %struct.TYPE_19__* %14)
  store i32 %55, i32* %16, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  br label %167

58:                                               ; preds = %42
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @GIT_MERGE_FILE_FAVOR__CONFLICTED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @GIT_EMERGECONFLICT, align 4
  store i32 %69, i32* %16, align 4
  br label %167

70:                                               ; preds = %62, %58
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %72, align 8
  %74 = icmp ne %struct.TYPE_23__* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  br label %82

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %75
  %83 = phi i32* [ %80, %75 ], [ null, %81 ]
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = icmp ne %struct.TYPE_16__* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  br label %95

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94, %88
  %96 = phi i32* [ %93, %88 ], [ null, %94 ]
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  %100 = icmp ne %struct.TYPE_17__* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  br label %108

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107, %101
  %109 = phi i32* [ %106, %101 ], [ null, %107 ]
  %110 = call i8* @git_merge_file__best_path(i32* %83, i32* %96, i32* %109)
  %111 = load i8**, i8*** %8, align 8
  store i8* %110, i8** %111, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %113, align 8
  %115 = icmp ne %struct.TYPE_23__* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  br label %123

122:                                              ; preds = %108
  br label %123

123:                                              ; preds = %122, %116
  %124 = phi i32 [ %121, %116 ], [ 0, %122 ]
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = icmp ne %struct.TYPE_16__* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  br label %136

135:                                              ; preds = %123
  br label %136

136:                                              ; preds = %135, %129
  %137 = phi i32 [ %134, %129 ], [ 0, %135 ]
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %139, align 8
  %141 = icmp ne %struct.TYPE_17__* %140, null
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  br label %149

148:                                              ; preds = %136
  br label %149

149:                                              ; preds = %148, %142
  %150 = phi i32 [ %147, %142 ], [ 0, %148 ]
  %151 = call i32 @git_merge_file__best_mode(i32 %124, i32 %137, i32 %150)
  %152 = load i32*, i32** %9, align 8
  store i32 %151, i32* %152, align 4
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = bitcast i32* %154 to i8*
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 0
  store i8* %155, i8** %157, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 4
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  store i32* null, i32** %166, align 8
  br label %167

167:                                              ; preds = %149, %68, %57
  %168 = call i32 @git_merge_file_result_free(%struct.TYPE_18__* %15)
  %169 = load i32, i32* %16, align 4
  ret i32 %169
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GIT_UNUSED(i8*) #2

declare dso_local i32 @memcpy(%struct.TYPE_19__*, i32, i32) #2

declare dso_local i32 @git_merge_file_from_index(%struct.TYPE_18__*, i32, %struct.TYPE_23__*, %struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_19__*) #2

declare dso_local i8* @git_merge_file__best_path(i32*, i32*, i32*) #2

declare dso_local i32 @git_merge_file__best_mode(i32, i32, i32) #2

declare dso_local i32 @git_merge_file_result_free(%struct.TYPE_18__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

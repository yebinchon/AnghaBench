; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_stats.c_git_diff_get_stats.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_stats.c_git_diff_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i64, i64, i64, i32, %struct.TYPE_16__*, i32, i32* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_get_stats(%struct.TYPE_18__** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__** %0, %struct.TYPE_18__*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %18 = icmp ne %struct.TYPE_18__** %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br label %22

22:                                               ; preds = %19, %2
  %23 = phi i1 [ false, %2 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = call i8* @git__calloc(i64 1, i32 72)
  %27 = bitcast i8* %26 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %10, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %29 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_18__* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @git_diff_num_deltas(i32* %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i8* @git__calloc(i64 %32, i32 4)
  %34 = bitcast i8* %33 to %struct.TYPE_16__*
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 6
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %36, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 6
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = icmp ne %struct.TYPE_16__* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %22
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %43 = call i32 @git__free(%struct.TYPE_18__* %42)
  store i32 -1, i32* %3, align 4
  br label %175

44:                                               ; preds = %22
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 8
  store i32* %45, i32** %47, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @GIT_REFCOUNT_INC(i32* %48)
  store i64 0, i64* %6, align 8
  br label %50

50:                                               ; preds = %146, %44
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i1 [ false, %50 ], [ %57, %54 ]
  br i1 %59, label %60, label %149

60:                                               ; preds = %58
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @git_patch_from_diff(%struct.TYPE_17__** %12, i32* %61, i64 %62)
  store i32 %63, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %149

66:                                               ; preds = %60
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %68, align 8
  store %struct.TYPE_19__* %69, %struct.TYPE_19__** %16, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @strlen(i32 %73)
  store i64 %74, i64* %15, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @strcmp(i32 %78, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %66
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @strlen(i32 %89)
  %91 = load i64, i64* %15, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %15, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %85, %66
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %99 = call i32 @git_patch_line_stats(i32* null, i64* %13, i64* %14, %struct.TYPE_17__* %98)
  store i32 %99, i32* %11, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %101 = call i32 @git_patch_free(%struct.TYPE_17__* %100)
  %102 = load i64, i64* %13, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 6
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  store i64 %102, i64* %108, align 8
  %109 = load i64, i64* %14, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 6
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  store i64 %109, i64* %115, align 8
  %116 = load i64, i64* %13, align 8
  %117 = load i64, i64* %8, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %8, align 8
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* %9, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %9, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %15, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %97
  %128 = load i64, i64* %15, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %127, %97
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* %14, align 8
  %137 = add i64 %135, %136
  %138 = icmp ult i64 %134, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %131
  %140 = load i64, i64* %13, align 8
  %141 = load i64, i64* %14, align 8
  %142 = add i64 %140, %141
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %139, %131
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %6, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %6, align 8
  br label %50

149:                                              ; preds = %65, %58
  %150 = load i64, i64* %7, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 2
  store i64 %150, i64* %152, align 8
  %153 = load i64, i64* %8, align 8
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 3
  store i64 %153, i64* %155, align 8
  %156 = load i64, i64* %9, align 8
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 4
  store i64 %156, i64* %158, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = add i64 %161, 1
  %163 = call i32 @digits_for_value(i64 %162)
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 5
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* %11, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %149
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %170 = call i32 @git_diff_stats_free(%struct.TYPE_18__* %169)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %10, align 8
  br label %171

171:                                              ; preds = %168, %149
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %173 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  store %struct.TYPE_18__* %172, %struct.TYPE_18__** %173, align 8
  %174 = load i32, i32* %11, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %171, %41
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @git__calloc(i64, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_18__*) #1

declare dso_local i64 @git_diff_num_deltas(i32*) #1

declare dso_local i32 @git__free(%struct.TYPE_18__*) #1

declare dso_local i32 @GIT_REFCOUNT_INC(i32*) #1

declare dso_local i32 @git_patch_from_diff(%struct.TYPE_17__**, i32*, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @git_patch_line_stats(i32*, i64*, i64*, %struct.TYPE_17__*) #1

declare dso_local i32 @git_patch_free(%struct.TYPE_17__*) #1

declare dso_local i32 @digits_for_value(i64) #1

declare dso_local i32 @git_diff_stats_free(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

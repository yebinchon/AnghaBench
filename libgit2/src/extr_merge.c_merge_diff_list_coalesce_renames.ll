; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_diff_list_coalesce_renames.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_diff_list_coalesce_renames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.merge_diff_similarity = type { i64, i64 }
%struct.TYPE_11__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.merge_diff_similarity*, %struct.merge_diff_similarity*, %struct.TYPE_11__*)* @merge_diff_list_coalesce_renames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_diff_list_coalesce_renames(%struct.TYPE_12__* %0, %struct.merge_diff_similarity* %1, %struct.merge_diff_similarity* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.merge_diff_similarity*, align 8
  %7 = alloca %struct.merge_diff_similarity*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.merge_diff_similarity* %1, %struct.merge_diff_similarity** %6, align 8
  store %struct.merge_diff_similarity* %2, %struct.merge_diff_similarity** %7, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %9, align 8
  br label %17

17:                                               ; preds = %134, %4
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %18, %22
  br i1 %23, label %24, label %137

24:                                               ; preds = %17
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %28, i64 %29
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %16, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @GIT_MERGE_INDEX_ENTRY_EXISTS(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %24
  %38 = load %struct.merge_diff_similarity*, %struct.merge_diff_similarity** %6, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %38, i64 %39
  %41 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %42, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %37
  %48 = load %struct.merge_diff_similarity*, %struct.merge_diff_similarity** %6, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %48, i64 %49
  %51 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %12, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %56, i64 %57
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %14, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = call i32 @merge_diff_coalesce_rename(i32* %61, i32* %63, i32* %65, i32* %67)
  %69 = load %struct.merge_diff_similarity*, %struct.merge_diff_similarity** %6, align 8
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %69, i64 %70
  %72 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.merge_diff_similarity*, %struct.merge_diff_similarity** %6, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %73, i64 %74
  %76 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  store i32 1, i32* %10, align 4
  br label %77

77:                                               ; preds = %47, %37, %24
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @GIT_MERGE_INDEX_ENTRY_EXISTS(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %123

83:                                               ; preds = %77
  %84 = load %struct.merge_diff_similarity*, %struct.merge_diff_similarity** %7, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %84, i64 %85
  %87 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sge i64 %88, %91
  br i1 %92, label %93, label %123

93:                                               ; preds = %83
  %94 = load %struct.merge_diff_similarity*, %struct.merge_diff_similarity** %7, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %94, i64 %95
  %97 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %13, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %101, align 8
  %103 = load i64, i64* %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %102, i64 %103
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %15, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = call i32 @merge_diff_coalesce_rename(i32* %107, i32* %109, i32* %111, i32* %113)
  %115 = load %struct.merge_diff_similarity*, %struct.merge_diff_similarity** %7, align 8
  %116 = load i64, i64* %13, align 8
  %117 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %115, i64 %116
  %118 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  %119 = load %struct.merge_diff_similarity*, %struct.merge_diff_similarity** %7, align 8
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %119, i64 %120
  %122 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  store i32 1, i32* %11, align 4
  br label %123

123:                                              ; preds = %93, %83, %77
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %125 = load %struct.merge_diff_similarity*, %struct.merge_diff_similarity** %6, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i64, i64* %12, align 8
  %128 = load %struct.merge_diff_similarity*, %struct.merge_diff_similarity** %7, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load i64, i64* %13, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %133 = call i32 @merge_diff_mark_rename_conflict(%struct.TYPE_12__* %124, %struct.merge_diff_similarity* %125, i32 %126, i64 %127, %struct.merge_diff_similarity* %128, i32 %129, i64 %130, %struct.TYPE_13__* %131, %struct.TYPE_11__* %132)
  br label %134

134:                                              ; preds = %123
  %135 = load i64, i64* %9, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %9, align 8
  br label %17

137:                                              ; preds = %17
  ret void
}

declare dso_local i64 @GIT_MERGE_INDEX_ENTRY_EXISTS(i32) #1

declare dso_local i32 @merge_diff_coalesce_rename(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @merge_diff_mark_rename_conflict(%struct.TYPE_12__*, %struct.merge_diff_similarity*, i32, i64, %struct.merge_diff_similarity*, i32, i64, %struct.TYPE_13__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_conflict_resolve_one_renamed.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_conflict_resolve_one_renamed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i64, %struct.TYPE_15__, i32, %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@GIT_DELTA_RENAMED = common dso_local global i64 0, align 8
@GIT_MERGE_DIFF_BOTH_RENAMED_2_TO_1 = common dso_local global i64 0, align 8
@GIT_MERGE_DIFF_BOTH_RENAMED_1_TO_2 = common dso_local global i64 0, align 8
@GIT_MERGE_DIFF_RENAMED_ADDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*, %struct.TYPE_14__*)* @merge_conflict_resolve_one_renamed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_conflict_resolve_one_renamed(i32* %0, %struct.TYPE_13__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = icmp ne %struct.TYPE_13__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = icmp ne %struct.TYPE_14__* %20, null
  br label %22

22:                                               ; preds = %19, %16, %3
  %23 = phi i1 [ false, %16 ], [ false, %3 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** %5, align 8
  store i32 0, i32* %26, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 5
  %29 = bitcast %struct.TYPE_15__* %28 to i64*
  %30 = load i64, i64* %29, align 4
  %31 = call i32 @GIT_MERGE_INDEX_ENTRY_EXISTS(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %22
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 3
  %36 = bitcast %struct.TYPE_15__* %35 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @GIT_MERGE_INDEX_ENTRY_EXISTS(i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33, %22
  store i32 0, i32* %4, align 4
  br label %160

41:                                               ; preds = %33
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @GIT_DELTA_RENAMED, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @GIT_DELTA_RENAMED, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %160

60:                                               ; preds = %56, %41
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @GIT_MERGE_DIFF_BOTH_RENAMED_2_TO_1, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %60
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @GIT_MERGE_DIFF_BOTH_RENAMED_1_TO_2, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @GIT_MERGE_DIFF_RENAMED_ADDED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72, %66, %60
  store i32 0, i32* %4, align 4
  br label %160

79:                                               ; preds = %72
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = call i64 @git_oid__cmp(i32* %82, i32* %85)
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %10, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = call i64 @git_oid__cmp(i32* %91, i32* %94)
  %96 = icmp ne i64 %95, 0
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %79
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = call i64 @git_oid__cmp(i32* %106, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %160

113:                                              ; preds = %103, %100, %79
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = call %struct.TYPE_14__* @git_pool_malloc(i32* %115, i32 48)
  store %struct.TYPE_14__* %116, %struct.TYPE_14__** %12, align 8
  %117 = icmp eq %struct.TYPE_14__* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 -1, i32* %4, align 4
  br label %160

119:                                              ; preds = %113
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 5
  %126 = call i32 @memcpy(%struct.TYPE_14__* %123, %struct.TYPE_15__* %125, i32 48)
  br label %132

127:                                              ; preds = %119
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 3
  %131 = call i32 @memcpy(%struct.TYPE_14__* %128, %struct.TYPE_15__* %130, i32 48)
  br label %132

132:                                              ; preds = %127, %122
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 8
  br label %149

142:                                              ; preds = %132
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %142, %135
  %150 = load i32*, i32** %5, align 8
  store i32 1, i32* %150, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %154 = call i32 @git_vector_insert(i32* %152, %struct.TYPE_14__* %153)
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %158 = call i32 @git_vector_insert(i32* %156, %struct.TYPE_14__* %157)
  %159 = load i32, i32* %13, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %149, %118, %112, %78, %59, %40
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @GIT_MERGE_INDEX_ENTRY_EXISTS(i64) #1

declare dso_local i64 @git_oid__cmp(i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @git_pool_malloc(i32*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @git_vector_insert(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

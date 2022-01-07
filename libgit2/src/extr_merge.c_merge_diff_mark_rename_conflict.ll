; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_diff_mark_rename_conflict.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_diff_mark_rename_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__** }
%struct.merge_diff_similarity = type { i64 }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i64 }

@GIT_MERGE_DIFF_BOTH_RENAMED = common dso_local global i64 0, align 8
@GIT_MERGE_DIFF_BOTH_RENAMED_2_TO_1 = common dso_local global i8* null, align 8
@GIT_MERGE_DIFF_BOTH_RENAMED_1_TO_2 = common dso_local global i8* null, align 8
@GIT_MERGE_DIFF_RENAMED_ADDED = common dso_local global i8* null, align 8
@GIT_MERGE_DIFF_RENAMED_DELETED = common dso_local global i8* null, align 8
@GIT_MERGE_DIFF_MODIFIED_DELETED = common dso_local global i64 0, align 8
@GIT_MERGE_DIFF_RENAMED_MODIFIED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.merge_diff_similarity*, i32, i64, %struct.merge_diff_similarity*, i32, i64, %struct.TYPE_11__*, %struct.TYPE_9__*)* @merge_diff_mark_rename_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_diff_mark_rename_conflict(%struct.TYPE_10__* %0, %struct.merge_diff_similarity* %1, i32 %2, i64 %3, %struct.merge_diff_similarity* %4, i32 %5, i64 %6, %struct.TYPE_11__* %7, %struct.TYPE_9__* %8) #0 {
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.merge_diff_similarity*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.merge_diff_similarity*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %10, align 8
  store %struct.merge_diff_similarity* %1, %struct.merge_diff_similarity** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store %struct.merge_diff_similarity* %4, %struct.merge_diff_similarity** %14, align 8
  store i32 %5, i32* %15, align 4
  store i64 %6, i64* %16, align 8
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %20, align 8
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %9
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %26, align 8
  %28 = load i64, i64* %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %27, i64 %28
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %19, align 8
  br label %31

31:                                               ; preds = %23, %9
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %37, align 8
  %39 = load i64, i64* %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %38, i64 %39
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %20, align 8
  br label %42

42:                                               ; preds = %34, %31
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %16, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i64, i64* @GIT_MERGE_DIFF_BOTH_RENAMED, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %65

56:                                               ; preds = %48
  %57 = load i8*, i8** @GIT_MERGE_DIFF_BOTH_RENAMED_2_TO_1, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i8*, i8** @GIT_MERGE_DIFF_BOTH_RENAMED_2_TO_1, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %56, %52
  br label %186

66:                                               ; preds = %45, %42
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %125

69:                                               ; preds = %66
  %70 = load %struct.merge_diff_similarity*, %struct.merge_diff_similarity** %14, align 8
  %71 = load i64, i64* %13, align 8
  %72 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %70, i64 %71
  %73 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %74, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %69
  %80 = load i8*, i8** @GIT_MERGE_DIFF_BOTH_RENAMED_1_TO_2, align 8
  %81 = ptrtoint i8* %80 to i64
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %124

84:                                               ; preds = %69
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @GIT_MERGE_INDEX_ENTRY_EXISTS(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load i8*, i8** @GIT_MERGE_DIFF_RENAMED_ADDED, align 8
  %92 = ptrtoint i8* %91 to i64
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i8*, i8** @GIT_MERGE_DIFF_RENAMED_ADDED, align 8
  %96 = ptrtoint i8* %95 to i64
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %123

99:                                               ; preds = %84
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @GIT_MERGE_INDEX_ENTRY_EXISTS(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %99
  %106 = load i8*, i8** @GIT_MERGE_DIFF_RENAMED_DELETED, align 8
  %107 = ptrtoint i8* %106 to i64
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %122

110:                                              ; preds = %99
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @GIT_MERGE_DIFF_MODIFIED_DELETED, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load i8*, i8** @GIT_MERGE_DIFF_RENAMED_MODIFIED, align 8
  %118 = ptrtoint i8* %117 to i64
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %116, %110
  br label %122

122:                                              ; preds = %121, %105
  br label %123

123:                                              ; preds = %122, %90
  br label %124

124:                                              ; preds = %123, %79
  br label %185

125:                                              ; preds = %66
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %184

128:                                              ; preds = %125
  %129 = load %struct.merge_diff_similarity*, %struct.merge_diff_similarity** %11, align 8
  %130 = load i64, i64* %16, align 8
  %131 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %129, i64 %130
  %132 = getelementptr inbounds %struct.merge_diff_similarity, %struct.merge_diff_similarity* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp sge i64 %133, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %128
  %139 = load i8*, i8** @GIT_MERGE_DIFF_BOTH_RENAMED_1_TO_2, align 8
  %140 = ptrtoint i8* %139 to i64
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  br label %183

143:                                              ; preds = %128
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @GIT_MERGE_INDEX_ENTRY_EXISTS(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  %150 = load i8*, i8** @GIT_MERGE_DIFF_RENAMED_ADDED, align 8
  %151 = ptrtoint i8* %150 to i64
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load i8*, i8** @GIT_MERGE_DIFF_RENAMED_ADDED, align 8
  %155 = ptrtoint i8* %154 to i64
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  br label %182

158:                                              ; preds = %143
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @GIT_MERGE_INDEX_ENTRY_EXISTS(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %158
  %165 = load i8*, i8** @GIT_MERGE_DIFF_RENAMED_DELETED, align 8
  %166 = ptrtoint i8* %165 to i64
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  br label %181

169:                                              ; preds = %158
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @GIT_MERGE_DIFF_MODIFIED_DELETED, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %169
  %176 = load i8*, i8** @GIT_MERGE_DIFF_RENAMED_MODIFIED, align 8
  %177 = ptrtoint i8* %176 to i64
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  br label %180

180:                                              ; preds = %175, %169
  br label %181

181:                                              ; preds = %180, %164
  br label %182

182:                                              ; preds = %181, %149
  br label %183

183:                                              ; preds = %182, %138
  br label %184

184:                                              ; preds = %183, %125
  br label %185

185:                                              ; preds = %184, %124
  br label %186

186:                                              ; preds = %185, %65
  ret void
}

declare dso_local i64 @GIT_MERGE_INDEX_ENTRY_EXISTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

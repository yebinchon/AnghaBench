; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiocache.c_add_entry.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiocache.c_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i64, %struct.TYPE_7__*, i64*, i64, i64, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.IjkAVTreeNode = type { i64, i64, i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@FILE_RW_ERROR = common dso_local global i64 0, align 8
@cmp = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"av_tree_insert failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i8*, i32)* @add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_entry(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.IjkAVTreeNode*, align 8
  %12 = alloca [2 x %struct.IjkAVTreeNode*], align 16
  %13 = alloca %struct.IjkAVTreeNode*, align 8
  %14 = alloca %struct.IjkAVTreeNode*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %8, align 8
  store i64 -1, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store %struct.IjkAVTreeNode* null, %struct.IjkAVTreeNode** %11, align 8
  %19 = bitcast [2 x %struct.IjkAVTreeNode*]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 16, i1 false)
  store %struct.IjkAVTreeNode* null, %struct.IjkAVTreeNode** %13, align 8
  store %struct.IjkAVTreeNode* null, %struct.IjkAVTreeNode** %14, align 8
  store i64 0, i64* %15, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 4
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @SEEK_SET, align 4
  %28 = call i64 @lseek(i32 %22, i64 %26, i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %3
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = call i64 @ijkio_cache_file_error(%struct.TYPE_8__* %36)
  store i64 %37, i64* %4, align 8
  br label %218

38:                                               ; preds = %3
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 5
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 4
  %45 = load i64*, i64** %44, align 8
  store i64 %42, i64* %45, align 8
  br label %46

46:                                               ; preds = %38
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %85

55:                                               ; preds = %46
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @ijkio_cache_file_overrang(%struct.TYPE_8__* %56, i64* %9, i32 %57)
  store i64 %58, i64* %15, align 8
  %59 = load i64, i64* %15, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 8
  %66 = load i64, i64* @FILE_RW_ERROR, align 8
  store i64 %66, i64* %4, align 8
  br label %218

67:                                               ; preds = %55
  %68 = load i64, i64* %9, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = call i64 @ijkio_cache_file_error(%struct.TYPE_8__* %75)
  store i64 %76, i64* %4, align 8
  br label %218

77:                                               ; preds = %67
  %78 = load i64, i64* %15, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i64 0, i64* %4, align 8
  br label %218

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %46
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i64 @write(i32 %88, i8* %89, i32 %90)
  store i64 %91, i64* %10, align 8
  %92 = load i64, i64* %10, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %85
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = call i64 @ijkio_cache_file_error(%struct.TYPE_8__* %99)
  store i64 %100, i64* %4, align 8
  br label %218

101:                                              ; preds = %85
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 6
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %101
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, %105
  store i64 %109, i64* %107, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 4
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, %110
  store i64 %115, i64* %113, align 8
  %116 = load i64, i64* %10, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, %116
  store i64 %122, i64* %120, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = load i32, i32* @cmp, align 4
  %131 = getelementptr inbounds [2 x %struct.IjkAVTreeNode*], [2 x %struct.IjkAVTreeNode*]* %12, i64 0, i64 0
  %132 = bitcast %struct.IjkAVTreeNode** %131 to i8**
  %133 = call %struct.IjkAVTreeNode* @ijk_av_tree_find(i32 %127, i64* %129, i32 %130, i8** %132)
  store %struct.IjkAVTreeNode* %133, %struct.IjkAVTreeNode** %11, align 8
  %134 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %135 = icmp ne %struct.IjkAVTreeNode* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %104
  %137 = getelementptr inbounds [2 x %struct.IjkAVTreeNode*], [2 x %struct.IjkAVTreeNode*]* %12, i64 0, i64 0
  %138 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %137, align 16
  store %struct.IjkAVTreeNode* %138, %struct.IjkAVTreeNode** %11, align 8
  br label %139

139:                                              ; preds = %136, %104
  %140 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %141 = icmp ne %struct.IjkAVTreeNode* %140, null
  br i1 %141, label %142, label %164

142:                                              ; preds = %139
  %143 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %144 = getelementptr inbounds %struct.IjkAVTreeNode, %struct.IjkAVTreeNode* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %147 = getelementptr inbounds %struct.IjkAVTreeNode, %struct.IjkAVTreeNode* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %145, %148
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %149, %152
  br i1 %153, label %164, label %154

154:                                              ; preds = %142
  %155 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %156 = getelementptr inbounds %struct.IjkAVTreeNode, %struct.IjkAVTreeNode* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %159 = getelementptr inbounds %struct.IjkAVTreeNode, %struct.IjkAVTreeNode* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %157, %160
  %162 = load i64, i64* %9, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %204

164:                                              ; preds = %154, %142, %139
  %165 = call %struct.IjkAVTreeNode* @malloc(i32 24)
  store %struct.IjkAVTreeNode* %165, %struct.IjkAVTreeNode** %11, align 8
  %166 = call %struct.IjkAVTreeNode* (...) @ijk_av_tree_node_alloc()
  store %struct.IjkAVTreeNode* %166, %struct.IjkAVTreeNode** %14, align 8
  %167 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %168 = icmp ne %struct.IjkAVTreeNode* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %14, align 8
  %171 = icmp ne %struct.IjkAVTreeNode* %170, null
  br i1 %171, label %175, label %172

172:                                              ; preds = %169, %164
  %173 = load i32, i32* @ENOMEM, align 4
  %174 = call i64 @IJKAVERROR(i32 %173)
  store i64 %174, i64* %10, align 8
  br label %212

175:                                              ; preds = %169
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %180 = getelementptr inbounds %struct.IjkAVTreeNode, %struct.IjkAVTreeNode* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  %181 = load i64, i64* %9, align 8
  %182 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %183 = getelementptr inbounds %struct.IjkAVTreeNode, %struct.IjkAVTreeNode* %182, i32 0, i32 2
  store i64 %181, i64* %183, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %186 = getelementptr inbounds %struct.IjkAVTreeNode, %struct.IjkAVTreeNode* %185, i32 0, i32 1
  store i64 %184, i64* %186, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 3
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 1
  %191 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %192 = load i32, i32* @cmp, align 4
  %193 = call %struct.IjkAVTreeNode* @ijk_av_tree_insert(i32* %190, %struct.IjkAVTreeNode* %191, i32 %192, %struct.IjkAVTreeNode** %14)
  store %struct.IjkAVTreeNode* %193, %struct.IjkAVTreeNode** %13, align 8
  %194 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %13, align 8
  %195 = icmp ne %struct.IjkAVTreeNode* %194, null
  br i1 %195, label %196, label %203

196:                                              ; preds = %175
  %197 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %13, align 8
  %198 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %199 = icmp ne %struct.IjkAVTreeNode* %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  store i64 -1, i64* %10, align 8
  %201 = load i32, i32* @AV_LOG_ERROR, align 4
  %202 = call i32 @av_log(i32* null, i32 %201, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %212

203:                                              ; preds = %196, %175
  br label %210

204:                                              ; preds = %154
  %205 = load i64, i64* %10, align 8
  %206 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %207 = getelementptr inbounds %struct.IjkAVTreeNode, %struct.IjkAVTreeNode* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %208, %205
  store i64 %209, i64* %207, align 8
  br label %210

210:                                              ; preds = %204, %203
  %211 = load i64, i64* %10, align 8
  store i64 %211, i64* %4, align 8
  br label %218

212:                                              ; preds = %200, %172
  %213 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %214 = call i32 @free(%struct.IjkAVTreeNode* %213)
  %215 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %14, align 8
  %216 = call i32 @free(%struct.IjkAVTreeNode* %215)
  %217 = load i64, i64* %10, align 8
  store i64 %217, i64* %4, align 8
  br label %218

218:                                              ; preds = %212, %210, %94, %83, %70, %63, %31
  %219 = load i64, i64* %4, align 8
  ret i64 %219
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @lseek(i32, i64, i32) #2

declare dso_local i64 @ijkio_cache_file_error(%struct.TYPE_8__*) #2

declare dso_local i64 @ijkio_cache_file_overrang(%struct.TYPE_8__*, i64*, i32) #2

declare dso_local i64 @write(i32, i8*, i32) #2

declare dso_local %struct.IjkAVTreeNode* @ijk_av_tree_find(i32, i64*, i32, i8**) #2

declare dso_local %struct.IjkAVTreeNode* @malloc(i32) #2

declare dso_local %struct.IjkAVTreeNode* @ijk_av_tree_node_alloc(...) #2

declare dso_local i64 @IJKAVERROR(i32) #2

declare dso_local %struct.IjkAVTreeNode* @ijk_av_tree_insert(i32*, %struct.IjkAVTreeNode*, i32, %struct.IjkAVTreeNode**) #2

declare dso_local i32 @av_log(i32*, i32, i8*) #2

declare dso_local i32 @free(%struct.IjkAVTreeNode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

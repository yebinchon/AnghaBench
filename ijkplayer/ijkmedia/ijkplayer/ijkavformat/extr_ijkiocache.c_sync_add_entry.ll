; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiocache.c_sync_add_entry.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiocache.c_sync_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64*, i64, i64, i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.IjkAVTreeNode = type { i64, i64, i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@FILE_RW_ERROR = common dso_local global i64 0, align 8
@cmp = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"sync_add_entry av_tree_insert failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i8*, i32)* @sync_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sync_add_entry(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.IjkAVTreeNode*, align 8
  %12 = alloca [2 x %struct.IjkAVTreeNode*], align 16
  %13 = alloca %struct.IjkAVTreeNode*, align 8
  %14 = alloca %struct.IjkAVTreeNode*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %8, align 8
  store i64 -1, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store %struct.IjkAVTreeNode* null, %struct.IjkAVTreeNode** %11, align 8
  %19 = bitcast [2 x %struct.IjkAVTreeNode*]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 16, i1 false)
  store %struct.IjkAVTreeNode* null, %struct.IjkAVTreeNode** %13, align 8
  store %struct.IjkAVTreeNode* null, %struct.IjkAVTreeNode** %14, align 8
  store i64 0, i64* %15, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @SEEK_SET, align 4
  %37 = call i64 @lseek(i32 %31, i64 %35, i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i64, i64* @FILE_RW_ERROR, align 8
  store i64 %41, i64* %4, align 8
  br label %214

42:                                               ; preds = %28
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  store i64 %46, i64* %49, align 8
  br label %50

50:                                               ; preds = %42
  br label %56

51:                                               ; preds = %3
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %51, %50
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %63, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %56
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i64 @ijkio_cache_file_overrang(%struct.TYPE_7__* %69, i64* %9, i32 %70)
  store i64 %71, i64* %15, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %68
  %77 = load i64, i64* %9, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76, %68
  %80 = load i64, i64* @FILE_RW_ERROR, align 8
  store i64 %80, i64* %4, align 8
  br label %214

81:                                               ; preds = %76
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  store i64 %85, i64* %88, align 8
  br label %89

89:                                               ; preds = %81, %56
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i64 @write(i32 %92, i8* %93, i32 %94)
  store i64 %95, i64* %10, align 8
  %96 = load i64, i64* %10, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i64, i64* @FILE_RW_ERROR, align 8
  store i64 %99, i64* %4, align 8
  br label %214

100:                                              ; preds = %89
  %101 = load i64, i64* %10, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %101
  store i64 %105, i64* %103, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, %106
  store i64 %111, i64* %109, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, %112
  store i64 %118, i64* %116, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  %126 = load i32, i32* @cmp, align 4
  %127 = getelementptr inbounds [2 x %struct.IjkAVTreeNode*], [2 x %struct.IjkAVTreeNode*]* %12, i64 0, i64 0
  %128 = bitcast %struct.IjkAVTreeNode** %127 to i8**
  %129 = call %struct.IjkAVTreeNode* @ijk_av_tree_find(i32 %123, i64* %125, i32 %126, i8** %128)
  store %struct.IjkAVTreeNode* %129, %struct.IjkAVTreeNode** %11, align 8
  %130 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %131 = icmp ne %struct.IjkAVTreeNode* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %100
  %133 = getelementptr inbounds [2 x %struct.IjkAVTreeNode*], [2 x %struct.IjkAVTreeNode*]* %12, i64 0, i64 0
  %134 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %133, align 16
  store %struct.IjkAVTreeNode* %134, %struct.IjkAVTreeNode** %11, align 8
  br label %135

135:                                              ; preds = %132, %100
  %136 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %137 = icmp ne %struct.IjkAVTreeNode* %136, null
  br i1 %137, label %138, label %160

138:                                              ; preds = %135
  %139 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %140 = getelementptr inbounds %struct.IjkAVTreeNode, %struct.IjkAVTreeNode* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %143 = getelementptr inbounds %struct.IjkAVTreeNode, %struct.IjkAVTreeNode* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %141, %144
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %145, %148
  br i1 %149, label %160, label %150

150:                                              ; preds = %138
  %151 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %152 = getelementptr inbounds %struct.IjkAVTreeNode, %struct.IjkAVTreeNode* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %155 = getelementptr inbounds %struct.IjkAVTreeNode, %struct.IjkAVTreeNode* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %153, %156
  %158 = load i64, i64* %9, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %200

160:                                              ; preds = %150, %138, %135
  %161 = call %struct.IjkAVTreeNode* @malloc(i32 24)
  store %struct.IjkAVTreeNode* %161, %struct.IjkAVTreeNode** %11, align 8
  %162 = call %struct.IjkAVTreeNode* (...) @ijk_av_tree_node_alloc()
  store %struct.IjkAVTreeNode* %162, %struct.IjkAVTreeNode** %14, align 8
  %163 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %164 = icmp ne %struct.IjkAVTreeNode* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %14, align 8
  %167 = icmp ne %struct.IjkAVTreeNode* %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %165, %160
  %169 = load i32, i32* @ENOMEM, align 4
  %170 = call i64 @IJKAVERROR(i32 %169)
  store i64 %170, i64* %10, align 8
  br label %208

171:                                              ; preds = %165
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %176 = getelementptr inbounds %struct.IjkAVTreeNode, %struct.IjkAVTreeNode* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  %177 = load i64, i64* %9, align 8
  %178 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %179 = getelementptr inbounds %struct.IjkAVTreeNode, %struct.IjkAVTreeNode* %178, i32 0, i32 2
  store i64 %177, i64* %179, align 8
  %180 = load i64, i64* %10, align 8
  %181 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %182 = getelementptr inbounds %struct.IjkAVTreeNode, %struct.IjkAVTreeNode* %181, i32 0, i32 1
  store i64 %180, i64* %182, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 4
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %188 = load i32, i32* @cmp, align 4
  %189 = call %struct.IjkAVTreeNode* @ijk_av_tree_insert(i32* %186, %struct.IjkAVTreeNode* %187, i32 %188, %struct.IjkAVTreeNode** %14)
  store %struct.IjkAVTreeNode* %189, %struct.IjkAVTreeNode** %13, align 8
  %190 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %13, align 8
  %191 = icmp ne %struct.IjkAVTreeNode* %190, null
  br i1 %191, label %192, label %199

192:                                              ; preds = %171
  %193 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %13, align 8
  %194 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %195 = icmp ne %struct.IjkAVTreeNode* %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  store i64 -1, i64* %10, align 8
  %197 = load i32, i32* @AV_LOG_ERROR, align 4
  %198 = call i32 @av_log(i32* null, i32 %197, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %208

199:                                              ; preds = %192, %171
  br label %206

200:                                              ; preds = %150
  %201 = load i64, i64* %10, align 8
  %202 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %203 = getelementptr inbounds %struct.IjkAVTreeNode, %struct.IjkAVTreeNode* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, %201
  store i64 %205, i64* %203, align 8
  br label %206

206:                                              ; preds = %200, %199
  %207 = load i64, i64* %10, align 8
  store i64 %207, i64* %4, align 8
  br label %214

208:                                              ; preds = %196, %168
  %209 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %11, align 8
  %210 = call i32 @free(%struct.IjkAVTreeNode* %209)
  %211 = load %struct.IjkAVTreeNode*, %struct.IjkAVTreeNode** %14, align 8
  %212 = call i32 @free(%struct.IjkAVTreeNode* %211)
  %213 = load i64, i64* %10, align 8
  store i64 %213, i64* %4, align 8
  br label %214

214:                                              ; preds = %208, %206, %98, %79, %40
  %215 = load i64, i64* %4, align 8
  ret i64 %215
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @lseek(i32, i64, i32) #2

declare dso_local i64 @ijkio_cache_file_overrang(%struct.TYPE_7__*, i64*, i32) #2

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

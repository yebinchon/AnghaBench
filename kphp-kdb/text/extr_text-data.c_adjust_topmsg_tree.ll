; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_adjust_topmsg_tree.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_adjust_topmsg_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8*, i32, %struct.file_user_list_entry* }
%struct.file_user_list_entry = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32*, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@NIL_N = common dso_local global i8* null, align 8
@NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"adjust_topmsg_tree (%p %d, %d, %d, %d) : prev_id=%d metafile=%p D=%p\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [136 x i8] c"ERROR in adjust_topmsg_tree: uid=%d, U=%p, mf=%p, D=%p, mf_last_local_id=%d, peer=%d, local_id=%d, prev_id=%d, op=%d, TT.x=%d, TT.z=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adjust_topmsg_tree(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.file_user_list_entry*, align 8
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = call i8* @get_user_metafile(%struct.TYPE_12__* %16)
  store i8* %17, i8** %10, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  %20 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %19, align 8
  store %struct.file_user_list_entry* %20, %struct.file_user_list_entry** %11, align 8
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %4
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %11, align 8
  %28 = icmp ne %struct.file_user_list_entry* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %11, align 8
  %32 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br label %35

35:                                               ; preds = %29, %26, %23
  %36 = phi i1 [ true, %26 ], [ true, %23 ], [ %34, %29 ]
  br label %37

37:                                               ; preds = %35, %4
  %38 = phi i1 [ false, %4 ], [ %36, %35 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %37
  %44 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %11, align 8
  %45 = icmp ne %struct.file_user_list_entry* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** @NIL_N, align 8
  %51 = icmp eq i8* %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  store i32 0, i32* %5, align 4
  br label %265

54:                                               ; preds = %43, %37
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call %struct.TYPE_13__* @tree_lookup(i32 %57, i32 %58)
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %15, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %61 = icmp ne %struct.TYPE_13__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  br label %68

66:                                               ; preds = %54
  %67 = load i32, i32* @NIL, align 4
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi i32 [ %65, %62 ], [ %67, %66 ]
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  store i32 %69, i32* %70, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %95

73:                                               ; preds = %68
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* %7, align 4
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %77 = call i32* @fetch_file_peer_list(i8* %74, i32 %75, i32* %76)
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  store i32* %77, i32** %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = load i32, i32* %89, align 4
  br label %92

91:                                               ; preds = %73
  br label %92

92:                                               ; preds = %91, %82
  %93 = phi i32 [ %90, %82 ], [ 0, %91 ]
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  store i32 %93, i32* %94, align 4
  br label %99

95:                                               ; preds = %68
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  store i32* null, i32** %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i32 0, i32* %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %92
  %100 = call i32 @listree_get_kth_last(%struct.TYPE_15__* %12, i32 0)
  store i32 %100, i32* %13, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i8*, i8** %10, align 8
  %110 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %11, align 8
  %111 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %101, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i8* %109, %struct.file_user_list_entry* %110)
  %112 = load i32, i32* %13, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %117, label %114

114:                                              ; preds = %99
  %115 = load i32, i32* %13, align 4
  %116 = icmp sgt i32 %115, 0
  br label %117

117:                                              ; preds = %114, %99
  %118 = phi i1 [ true, %99 ], [ %116, %114 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %5, align 4
  br label %265

126:                                              ; preds = %117
  %127 = load i32, i32* %9, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %196

129:                                              ; preds = %126
  %130 = load i32, i32* %13, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %186

132:                                              ; preds = %129
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* %13, align 4
  %137 = call %struct.TYPE_14__* @tree_num_lookup(i8* %135, i32 %136)
  store %struct.TYPE_14__* %137, %struct.TYPE_14__** %14, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %171

143:                                              ; preds = %132
  %144 = load i32, i32* @stderr, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %149 = load i8*, i8** %10, align 8
  %150 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %11, align 8
  %151 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %11, align 8
  %152 = icmp ne %struct.file_user_list_entry* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %143
  %154 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %11, align 8
  %155 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  br label %158

157:                                              ; preds = %143
  br label %158

158:                                              ; preds = %157, %153
  %159 = phi i32 [ %156, %153 ], [ 0, %157 ]
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @fprintf(i32 %144, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.1, i64 0, i64 0), i32 %147, %struct.TYPE_12__* %148, i8* %149, %struct.file_user_list_entry* %150, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %158, %132
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp eq i32 %174, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = load i32, i32* %13, align 4
  %183 = call i8* @tree_num_delete(i8* %181, i32 %182)
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  store i8* %183, i8** %185, align 8
  br label %186

186:                                              ; preds = %171, %129
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = call i32 (...) @lrand48()
  %192 = load i32, i32* %7, align 4
  %193 = call i8* @tree_num_insert(i8* %189, i32 %190, i32 %191, i32 %192)
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 1
  store i8* %193, i8** %195, align 8
  br label %263

196:                                              ; preds = %126
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = call %struct.TYPE_14__* @tree_num_lookup(i8* %199, i32 %200)
  store %struct.TYPE_14__* %201, %struct.TYPE_14__** %14, align 8
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %7, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %235

207:                                              ; preds = %196
  %208 = load i32, i32* @stderr, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %213 = load i8*, i8** %10, align 8
  %214 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %11, align 8
  %215 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %11, align 8
  %216 = icmp ne %struct.file_user_list_entry* %215, null
  br i1 %216, label %217, label %221

217:                                              ; preds = %207
  %218 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %11, align 8
  %219 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  br label %222

221:                                              ; preds = %207
  br label %222

222:                                              ; preds = %221, %217
  %223 = phi i32 [ %220, %217 ], [ 0, %221 ]
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* %9, align 4
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @fprintf(i32 %208, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.1, i64 0, i64 0), i32 %211, %struct.TYPE_12__* %212, i8* %213, %struct.file_user_list_entry* %214, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %230, i32 %233)
  br label %235

235:                                              ; preds = %222, %196
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %7, align 4
  %240 = icmp eq i32 %238, %239
  %241 = zext i1 %240 to i32
  %242 = call i32 @assert(i32 %241)
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = call i8* @tree_num_delete(i8* %245, i32 %246)
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 1
  store i8* %247, i8** %249, align 8
  %250 = load i32, i32* %13, align 4
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %262

252:                                              ; preds = %235
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 1
  %255 = load i8*, i8** %254, align 8
  %256 = load i32, i32* %13, align 4
  %257 = call i32 (...) @lrand48()
  %258 = load i32, i32* %7, align 4
  %259 = call i8* @tree_num_insert(i8* %255, i32 %256, i32 %257, i32 %258)
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 1
  store i8* %259, i8** %261, align 8
  br label %262

262:                                              ; preds = %252, %235
  br label %263

263:                                              ; preds = %262, %186
  %264 = load i32, i32* %13, align 4
  store i32 %264, i32* %5, align 4
  br label %265

265:                                              ; preds = %263, %124, %46
  %266 = load i32, i32* %5, align 4
  ret i32 %266
}

declare dso_local i8* @get_user_metafile(%struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_13__* @tree_lookup(i32, i32) #1

declare dso_local i32* @fetch_file_peer_list(i8*, i32, i32*) #1

declare dso_local i32 @listree_get_kth_last(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, %struct.TYPE_12__*, i32, i32, i32, i32, i32, i8*, %struct.file_user_list_entry*) #1

declare dso_local %struct.TYPE_14__* @tree_num_lookup(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, %struct.TYPE_12__*, i8*, %struct.file_user_list_entry*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @tree_num_delete(i8*, i32) #1

declare dso_local i8* @tree_num_insert(i8*, i32, i32, i32) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

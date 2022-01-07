; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_process_renames.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_process_renames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, %struct.rename* }
%struct.rename = type { i32, i8, %struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { %struct.diff_filespec*, %struct.diff_filespec* }
%struct.diff_filespec = type { i8*, i64, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.merge_options = type { i32 }
%struct.string_list_item = type { %struct.rename* }
%struct.TYPE_14__ = type { i8* }

@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 8
@.str = private unnamed_addr constant [21 x i8] c"ren1_src != ren2_src\00", align 1
@RENAME_ONE_FILE_TO_TWO = common dso_local global i32 0, align 4
@RENAME_ONE_FILE_TO_ONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ren1_dst != ren2_dst\00", align 1
@RENAME_TWO_FILES_TO_ONE = common dso_local global i32 0, align 4
@null_oid = common dso_local global i32 0, align 4
@RENAME_VIA_DIR = common dso_local global i32 0, align 4
@RENAME_DELETE = common dso_local global i32 0, align 4
@RENAME_ADD = common dso_local global i32 0, align 4
@RENAME_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, %struct.string_list*, %struct.string_list*)* @process_renames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_renames(%struct.merge_options* %0, %struct.string_list* %1, %struct.string_list* %2) #0 {
  %4 = alloca %struct.merge_options*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.string_list, align 8
  %11 = alloca %struct.string_list, align 8
  %12 = alloca %struct.rename*, align 8
  %13 = alloca %struct.string_list*, align 8
  %14 = alloca %struct.string_list*, align 8
  %15 = alloca %struct.rename*, align 8
  %16 = alloca %struct.rename*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.string_list_item*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca %struct.diff_filespec, align 8
  %26 = alloca %struct.diff_filespec, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.diff_filespec*, align 8
  %31 = alloca %struct.diff_filespec*, align 8
  %32 = alloca %struct.diff_filespec*, align 8
  store %struct.merge_options* %0, %struct.merge_options** %4, align 8
  store %struct.string_list* %1, %struct.string_list** %5, align 8
  store %struct.string_list* %2, %struct.string_list** %6, align 8
  store i32 1, i32* %7, align 4
  %33 = bitcast %struct.string_list* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 16, i1 false)
  %34 = bitcast %struct.string_list* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 16, i1 false)
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %61, %3
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.string_list*, %struct.string_list** %5, align 8
  %38 = getelementptr inbounds %struct.string_list, %struct.string_list* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %35
  %42 = load %struct.string_list*, %struct.string_list** %5, align 8
  %43 = getelementptr inbounds %struct.string_list, %struct.string_list* %42, i32 0, i32 1
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load %struct.rename*, %struct.rename** %48, align 8
  store %struct.rename* %49, %struct.rename** %12, align 8
  %50 = load %struct.rename*, %struct.rename** %12, align 8
  %51 = bitcast %struct.rename* %50 to i8*
  %52 = load %struct.rename*, %struct.rename** %12, align 8
  %53 = getelementptr inbounds %struct.rename, %struct.rename* %52, i32 0, i32 3
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load %struct.diff_filespec*, %struct.diff_filespec** %55, align 8
  %57 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call %struct.TYPE_14__* @string_list_insert(%struct.string_list* %10, i8* %58)
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  store i8* %51, i8** %60, align 8
  br label %61

61:                                               ; preds = %41
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %35

64:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %91, %64
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.string_list*, %struct.string_list** %6, align 8
  %68 = getelementptr inbounds %struct.string_list, %struct.string_list* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %65
  %72 = load %struct.string_list*, %struct.string_list** %6, align 8
  %73 = getelementptr inbounds %struct.string_list, %struct.string_list* %72, i32 0, i32 1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load %struct.rename*, %struct.rename** %78, align 8
  store %struct.rename* %79, %struct.rename** %12, align 8
  %80 = load %struct.rename*, %struct.rename** %12, align 8
  %81 = bitcast %struct.rename* %80 to i8*
  %82 = load %struct.rename*, %struct.rename** %12, align 8
  %83 = getelementptr inbounds %struct.rename, %struct.rename* %82, i32 0, i32 3
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load %struct.diff_filespec*, %struct.diff_filespec** %85, align 8
  %87 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call %struct.TYPE_14__* @string_list_insert(%struct.string_list* %11, i8* %88)
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store i8* %81, i8** %90, align 8
  br label %91

91:                                               ; preds = %71
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %65

94:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %510, %202, %94
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.string_list*, %struct.string_list** %5, align 8
  %98 = getelementptr inbounds %struct.string_list, %struct.string_list* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.string_list*, %struct.string_list** %6, align 8
  %104 = getelementptr inbounds %struct.string_list, %struct.string_list* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br label %107

107:                                              ; preds = %101, %95
  %108 = phi i1 [ true, %95 ], [ %106, %101 ]
  br i1 %108, label %109, label %511

109:                                              ; preds = %107
  store %struct.rename* null, %struct.rename** %15, align 8
  store %struct.rename* null, %struct.rename** %16, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.string_list*, %struct.string_list** %5, align 8
  %112 = getelementptr inbounds %struct.string_list, %struct.string_list* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sge i32 %110, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = load %struct.string_list*, %struct.string_list** %6, align 8
  %117 = getelementptr inbounds %struct.string_list, %struct.string_list* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load %struct.rename*, %struct.rename** %123, align 8
  store %struct.rename* %124, %struct.rename** %16, align 8
  br label %187

125:                                              ; preds = %109
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.string_list*, %struct.string_list** %6, align 8
  %128 = getelementptr inbounds %struct.string_list, %struct.string_list* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp sge i32 %126, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %125
  %132 = load %struct.string_list*, %struct.string_list** %5, align 8
  %133 = getelementptr inbounds %struct.string_list, %struct.string_list* %132, i32 0, i32 1
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load %struct.rename*, %struct.rename** %139, align 8
  store %struct.rename* %140, %struct.rename** %15, align 8
  br label %186

141:                                              ; preds = %125
  %142 = load %struct.string_list*, %struct.string_list** %5, align 8
  %143 = getelementptr inbounds %struct.string_list, %struct.string_list* %142, i32 0, i32 1
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.string_list*, %struct.string_list** %6, align 8
  %151 = getelementptr inbounds %struct.string_list, %struct.string_list* %150, i32 0, i32 1
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @strcmp(i8* %149, i8* %157)
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %20, align 4
  %160 = load i32, i32* %20, align 4
  %161 = icmp sle i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %141
  %163 = load %struct.string_list*, %struct.string_list** %5, align 8
  %164 = getelementptr inbounds %struct.string_list, %struct.string_list* %163, i32 0, i32 1
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  %171 = load %struct.rename*, %struct.rename** %170, align 8
  store %struct.rename* %171, %struct.rename** %15, align 8
  br label %172

172:                                              ; preds = %162, %141
  %173 = load i32, i32* %20, align 4
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %172
  %176 = load %struct.string_list*, %struct.string_list** %6, align 8
  %177 = getelementptr inbounds %struct.string_list, %struct.string_list* %176, i32 0, i32 1
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load %struct.rename*, %struct.rename** %183, align 8
  store %struct.rename* %184, %struct.rename** %16, align 8
  br label %185

185:                                              ; preds = %175, %172
  br label %186

186:                                              ; preds = %185, %131
  br label %187

187:                                              ; preds = %186, %115
  %188 = load %struct.rename*, %struct.rename** %15, align 8
  %189 = icmp ne %struct.rename* %188, null
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = load %struct.string_list*, %struct.string_list** %5, align 8
  store %struct.string_list* %191, %struct.string_list** %13, align 8
  store %struct.string_list* %11, %struct.string_list** %14, align 8
  br label %197

192:                                              ; preds = %187
  %193 = load %struct.string_list*, %struct.string_list** %6, align 8
  store %struct.string_list* %193, %struct.string_list** %13, align 8
  store %struct.string_list* %10, %struct.string_list** %14, align 8
  %194 = load %struct.rename*, %struct.rename** %16, align 8
  %195 = load %struct.rename*, %struct.rename** %15, align 8
  %196 = call i32 @SWAP(%struct.rename* %194, %struct.rename* %195)
  br label %197

197:                                              ; preds = %192, %190
  %198 = load %struct.rename*, %struct.rename** %15, align 8
  %199 = getelementptr inbounds %struct.rename, %struct.rename* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %95

203:                                              ; preds = %197
  %204 = load %struct.rename*, %struct.rename** %15, align 8
  %205 = getelementptr inbounds %struct.rename, %struct.rename* %204, i32 0, i32 0
  store i32 1, i32* %205, align 8
  %206 = load %struct.rename*, %struct.rename** %15, align 8
  %207 = getelementptr inbounds %struct.rename, %struct.rename* %206, i32 0, i32 2
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  store i32 1, i32* %209, align 8
  %210 = load %struct.rename*, %struct.rename** %15, align 8
  %211 = getelementptr inbounds %struct.rename, %struct.rename* %210, i32 0, i32 4
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  store i32 1, i32* %213, align 8
  %214 = load %struct.rename*, %struct.rename** %15, align 8
  %215 = getelementptr inbounds %struct.rename, %struct.rename* %214, i32 0, i32 3
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  %218 = load %struct.diff_filespec*, %struct.diff_filespec** %217, align 8
  %219 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  store i8* %220, i8** %17, align 8
  %221 = load %struct.rename*, %struct.rename** %15, align 8
  %222 = getelementptr inbounds %struct.rename, %struct.rename* %221, i32 0, i32 3
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = load %struct.diff_filespec*, %struct.diff_filespec** %224, align 8
  %226 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  store i8* %227, i8** %18, align 8
  %228 = load %struct.rename*, %struct.rename** %16, align 8
  %229 = icmp ne %struct.rename* %228, null
  br i1 %229, label %230, label %294

230:                                              ; preds = %203
  %231 = load %struct.rename*, %struct.rename** %16, align 8
  %232 = getelementptr inbounds %struct.rename, %struct.rename* %231, i32 0, i32 3
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 1
  %235 = load %struct.diff_filespec*, %struct.diff_filespec** %234, align 8
  %236 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  store i8* %237, i8** %21, align 8
  %238 = load %struct.rename*, %struct.rename** %16, align 8
  %239 = getelementptr inbounds %struct.rename, %struct.rename* %238, i32 0, i32 3
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 0
  %242 = load %struct.diff_filespec*, %struct.diff_filespec** %241, align 8
  %243 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  store i8* %244, i8** %22, align 8
  %245 = load i8*, i8** %17, align 8
  %246 = load i8*, i8** %21, align 8
  %247 = call i64 @strcmp(i8* %245, i8* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %230
  %250 = call i32 @BUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %251

251:                                              ; preds = %249, %230
  %252 = load %struct.rename*, %struct.rename** %16, align 8
  %253 = getelementptr inbounds %struct.rename, %struct.rename* %252, i32 0, i32 2
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  store i32 1, i32* %255, align 8
  %256 = load %struct.rename*, %struct.rename** %16, align 8
  %257 = getelementptr inbounds %struct.rename, %struct.rename* %256, i32 0, i32 0
  store i32 1, i32* %257, align 8
  %258 = load i8*, i8** %18, align 8
  %259 = load i8*, i8** %22, align 8
  %260 = call i64 @strcmp(i8* %258, i8* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %251
  %263 = load i32, i32* @RENAME_ONE_FILE_TO_TWO, align 4
  store i32 %263, i32* %23, align 4
  store i32 0, i32* %7, align 4
  br label %288

264:                                              ; preds = %251
  %265 = load i32, i32* @RENAME_ONE_FILE_TO_ONE, align 4
  store i32 %265, i32* %23, align 4
  %266 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %267 = load i8*, i8** %17, align 8
  %268 = call i32 @remove_file(%struct.merge_options* %266, i32 1, i8* %267, i32 1)
  %269 = load %struct.rename*, %struct.rename** %15, align 8
  %270 = getelementptr inbounds %struct.rename, %struct.rename* %269, i32 0, i32 2
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %270, align 8
  %272 = load %struct.rename*, %struct.rename** %15, align 8
  %273 = getelementptr inbounds %struct.rename, %struct.rename* %272, i32 0, i32 3
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 1
  %276 = load %struct.diff_filespec*, %struct.diff_filespec** %275, align 8
  %277 = load %struct.rename*, %struct.rename** %15, align 8
  %278 = getelementptr inbounds %struct.rename, %struct.rename* %277, i32 0, i32 3
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 0
  %281 = load %struct.diff_filespec*, %struct.diff_filespec** %280, align 8
  %282 = load %struct.rename*, %struct.rename** %16, align 8
  %283 = getelementptr inbounds %struct.rename, %struct.rename* %282, i32 0, i32 3
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  %286 = load %struct.diff_filespec*, %struct.diff_filespec** %285, align 8
  %287 = call i32 @update_entry(%struct.TYPE_13__* %271, %struct.diff_filespec* %276, %struct.diff_filespec* %281, %struct.diff_filespec* %286)
  br label %288

288:                                              ; preds = %264, %262
  %289 = load i32, i32* %23, align 4
  %290 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %291 = load %struct.rename*, %struct.rename** %15, align 8
  %292 = load %struct.rename*, %struct.rename** %16, align 8
  %293 = call i32 @setup_rename_conflict_info(i32 %289, %struct.merge_options* %290, %struct.rename* %291, %struct.rename* %292)
  br label %510

294:                                              ; preds = %203
  %295 = load %struct.string_list*, %struct.string_list** %14, align 8
  %296 = load i8*, i8** %18, align 8
  %297 = call %struct.string_list_item* @string_list_lookup(%struct.string_list* %295, i8* %296)
  store %struct.string_list_item* %297, %struct.string_list_item** %19, align 8
  %298 = icmp ne %struct.string_list_item* %297, null
  br i1 %298, label %299, label %328

299:                                              ; preds = %294
  %300 = load %struct.string_list_item*, %struct.string_list_item** %19, align 8
  %301 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %300, i32 0, i32 0
  %302 = load %struct.rename*, %struct.rename** %301, align 8
  store %struct.rename* %302, %struct.rename** %16, align 8
  %303 = load %struct.rename*, %struct.rename** %16, align 8
  %304 = getelementptr inbounds %struct.rename, %struct.rename* %303, i32 0, i32 3
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 0
  %307 = load %struct.diff_filespec*, %struct.diff_filespec** %306, align 8
  %308 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %307, i32 0, i32 0
  %309 = load i8*, i8** %308, align 8
  store i8* %309, i8** %24, align 8
  %310 = load i8*, i8** %18, align 8
  %311 = load i8*, i8** %24, align 8
  %312 = call i64 @strcmp(i8* %310, i8* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %299
  %315 = call i32 @BUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %316

316:                                              ; preds = %314, %299
  store i32 0, i32* %7, align 4
  %317 = load %struct.rename*, %struct.rename** %16, align 8
  %318 = getelementptr inbounds %struct.rename, %struct.rename* %317, i32 0, i32 0
  store i32 1, i32* %318, align 8
  %319 = load %struct.rename*, %struct.rename** %16, align 8
  %320 = getelementptr inbounds %struct.rename, %struct.rename* %319, i32 0, i32 4
  %321 = load %struct.TYPE_9__*, %struct.TYPE_9__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 0
  store i32 1, i32* %322, align 8
  %323 = load i32, i32* @RENAME_TWO_FILES_TO_ONE, align 4
  %324 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %325 = load %struct.rename*, %struct.rename** %15, align 8
  %326 = load %struct.rename*, %struct.rename** %16, align 8
  %327 = call i32 @setup_rename_conflict_info(i32 %323, %struct.merge_options* %324, %struct.rename* %325, %struct.rename* %326)
  br label %509

328:                                              ; preds = %294
  %329 = load %struct.string_list*, %struct.string_list** %5, align 8
  %330 = load %struct.string_list*, %struct.string_list** %13, align 8
  %331 = icmp eq %struct.string_list* %329, %330
  %332 = zext i1 %331 to i64
  %333 = select i1 %331, i32 2, i32 3
  store i32 %333, i32* %28, align 4
  %334 = load %struct.string_list*, %struct.string_list** %5, align 8
  %335 = load %struct.string_list*, %struct.string_list** %13, align 8
  %336 = icmp eq %struct.string_list* %334, %335
  %337 = zext i1 %336 to i64
  %338 = select i1 %336, i32 3, i32 2
  store i32 %338, i32* %29, align 4
  %339 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %340 = load i8*, i8** %17, align 8
  %341 = load i32, i32* %28, align 4
  %342 = icmp eq i32 %341, 2
  br i1 %342, label %349, label %343

343:                                              ; preds = %328
  %344 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %345 = load i8*, i8** %17, align 8
  %346 = call i32 @was_tracked(%struct.merge_options* %344, i8* %345)
  %347 = icmp ne i32 %346, 0
  %348 = xor i1 %347, true
  br label %349

349:                                              ; preds = %343, %328
  %350 = phi i1 [ true, %328 ], [ %348, %343 ]
  %351 = zext i1 %350 to i32
  %352 = call i32 @remove_file(%struct.merge_options* %339, i32 1, i8* %340, i32 %351)
  %353 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %25, i32 0, i32 2
  %354 = load %struct.rename*, %struct.rename** %15, align 8
  %355 = getelementptr inbounds %struct.rename, %struct.rename* %354, i32 0, i32 4
  %356 = load %struct.TYPE_9__*, %struct.TYPE_9__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 1
  %358 = load %struct.TYPE_8__*, %struct.TYPE_8__** %357, align 8
  %359 = load i32, i32* %29, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 1
  %363 = call i32 @oidcpy(i32* %353, i32* %362)
  %364 = load %struct.rename*, %struct.rename** %15, align 8
  %365 = getelementptr inbounds %struct.rename, %struct.rename* %364, i32 0, i32 4
  %366 = load %struct.TYPE_9__*, %struct.TYPE_9__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 1
  %368 = load %struct.TYPE_8__*, %struct.TYPE_8__** %367, align 8
  %369 = load i32, i32* %29, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %25, i32 0, i32 1
  store i64 %373, i64* %374, align 8
  %375 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %26, i32 0, i32 2
  %376 = load %struct.rename*, %struct.rename** %15, align 8
  %377 = getelementptr inbounds %struct.rename, %struct.rename* %376, i32 0, i32 2
  %378 = load %struct.TYPE_13__*, %struct.TYPE_13__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %378, i32 0, i32 1
  %380 = load %struct.TYPE_10__*, %struct.TYPE_10__** %379, align 8
  %381 = load i32, i32* %29, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %380, i64 %382
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 1
  %385 = call i32 @oidcpy(i32* %375, i32* %384)
  %386 = load %struct.rename*, %struct.rename** %15, align 8
  %387 = getelementptr inbounds %struct.rename, %struct.rename* %386, i32 0, i32 2
  %388 = load %struct.TYPE_13__*, %struct.TYPE_13__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %388, i32 0, i32 1
  %390 = load %struct.TYPE_10__*, %struct.TYPE_10__** %389, align 8
  %391 = load i32, i32* %29, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %26, i32 0, i32 1
  store i64 %395, i64* %396, align 8
  store i32 0, i32* %27, align 4
  %397 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %25, i32 0, i32 2
  %398 = call i64 @oid_eq(i32* %397, i32* @null_oid)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %411

400:                                              ; preds = %349
  %401 = load %struct.rename*, %struct.rename** %15, align 8
  %402 = getelementptr inbounds %struct.rename, %struct.rename* %401, i32 0, i32 1
  %403 = load i8, i8* %402, align 4
  %404 = sext i8 %403 to i32
  %405 = icmp eq i32 %404, 65
  br i1 %405, label %406, label %411

406:                                              ; preds = %400
  %407 = load i32, i32* @RENAME_VIA_DIR, align 4
  %408 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %409 = load %struct.rename*, %struct.rename** %15, align 8
  %410 = call i32 @setup_rename_conflict_info(i32 %407, %struct.merge_options* %408, %struct.rename* %409, %struct.rename* null)
  br label %466

411:                                              ; preds = %400, %349
  %412 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %25, i32 0, i32 2
  %413 = call i64 @oid_eq(i32* %412, i32* @null_oid)
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %420

415:                                              ; preds = %411
  %416 = load i32, i32* @RENAME_DELETE, align 4
  %417 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %418 = load %struct.rename*, %struct.rename** %15, align 8
  %419 = call i32 @setup_rename_conflict_info(i32 %416, %struct.merge_options* %417, %struct.rename* %418, %struct.rename* null)
  br label %465

420:                                              ; preds = %411
  %421 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %26, i32 0, i32 1
  %422 = load i64, i64* %421, align 8
  %423 = load %struct.rename*, %struct.rename** %15, align 8
  %424 = getelementptr inbounds %struct.rename, %struct.rename* %423, i32 0, i32 3
  %425 = load %struct.TYPE_11__*, %struct.TYPE_11__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %425, i32 0, i32 0
  %427 = load %struct.diff_filespec*, %struct.diff_filespec** %426, align 8
  %428 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %427, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  %430 = icmp eq i64 %422, %429
  br i1 %430, label %431, label %453

431:                                              ; preds = %420
  %432 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %26, i32 0, i32 2
  %433 = load %struct.rename*, %struct.rename** %15, align 8
  %434 = getelementptr inbounds %struct.rename, %struct.rename* %433, i32 0, i32 3
  %435 = load %struct.TYPE_11__*, %struct.TYPE_11__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %435, i32 0, i32 0
  %437 = load %struct.diff_filespec*, %struct.diff_filespec** %436, align 8
  %438 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %437, i32 0, i32 2
  %439 = call i64 @oid_eq(i32* %432, i32* %438)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %453

441:                                              ; preds = %431
  %442 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %443 = load %struct.rename*, %struct.rename** %15, align 8
  %444 = getelementptr inbounds %struct.rename, %struct.rename* %443, i32 0, i32 3
  %445 = load %struct.TYPE_11__*, %struct.TYPE_11__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 0
  %447 = load %struct.diff_filespec*, %struct.diff_filespec** %446, align 8
  %448 = load i8*, i8** %18, align 8
  %449 = call i64 @update_file_flags(%struct.merge_options* %442, %struct.diff_filespec* %447, i8* %448, i32 1, i32 0)
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %441
  store i32 -1, i32* %7, align 4
  br label %452

452:                                              ; preds = %451, %441
  br label %464

453:                                              ; preds = %431, %420
  %454 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %26, i32 0, i32 2
  %455 = call i64 @oid_eq(i32* %454, i32* @null_oid)
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %462, label %457

457:                                              ; preds = %453
  %458 = load i32, i32* @RENAME_ADD, align 4
  %459 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %460 = load %struct.rename*, %struct.rename** %15, align 8
  %461 = call i32 @setup_rename_conflict_info(i32 %458, %struct.merge_options* %459, %struct.rename* %460, %struct.rename* null)
  br label %463

462:                                              ; preds = %453
  store i32 1, i32* %27, align 4
  br label %463

463:                                              ; preds = %462, %457
  br label %464

464:                                              ; preds = %463, %452
  br label %465

465:                                              ; preds = %464, %415
  br label %466

466:                                              ; preds = %465, %406
  %467 = load i32, i32* %7, align 4
  %468 = icmp slt i32 %467, 0
  br i1 %468, label %469, label %470

469:                                              ; preds = %466
  br label %512

470:                                              ; preds = %466
  %471 = load i32, i32* %27, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %508

473:                                              ; preds = %470
  %474 = load i8*, i8** %17, align 8
  %475 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %25, i32 0, i32 0
  store i8* %474, i8** %475, align 8
  %476 = load %struct.rename*, %struct.rename** %15, align 8
  %477 = getelementptr inbounds %struct.rename, %struct.rename* %476, i32 0, i32 3
  %478 = load %struct.TYPE_11__*, %struct.TYPE_11__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %478, i32 0, i32 1
  %480 = load %struct.diff_filespec*, %struct.diff_filespec** %479, align 8
  store %struct.diff_filespec* %480, %struct.diff_filespec** %30, align 8
  %481 = load %struct.string_list*, %struct.string_list** %5, align 8
  %482 = load %struct.string_list*, %struct.string_list** %13, align 8
  %483 = icmp eq %struct.string_list* %481, %482
  br i1 %483, label %484, label %490

484:                                              ; preds = %473
  %485 = load %struct.rename*, %struct.rename** %15, align 8
  %486 = getelementptr inbounds %struct.rename, %struct.rename* %485, i32 0, i32 3
  %487 = load %struct.TYPE_11__*, %struct.TYPE_11__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %487, i32 0, i32 0
  %489 = load %struct.diff_filespec*, %struct.diff_filespec** %488, align 8
  store %struct.diff_filespec* %489, %struct.diff_filespec** %31, align 8
  store %struct.diff_filespec* %25, %struct.diff_filespec** %32, align 8
  br label %496

490:                                              ; preds = %473
  %491 = load %struct.rename*, %struct.rename** %15, align 8
  %492 = getelementptr inbounds %struct.rename, %struct.rename* %491, i32 0, i32 3
  %493 = load %struct.TYPE_11__*, %struct.TYPE_11__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %493, i32 0, i32 0
  %495 = load %struct.diff_filespec*, %struct.diff_filespec** %494, align 8
  store %struct.diff_filespec* %495, %struct.diff_filespec** %32, align 8
  store %struct.diff_filespec* %25, %struct.diff_filespec** %31, align 8
  br label %496

496:                                              ; preds = %490, %484
  %497 = load %struct.rename*, %struct.rename** %15, align 8
  %498 = getelementptr inbounds %struct.rename, %struct.rename* %497, i32 0, i32 2
  %499 = load %struct.TYPE_13__*, %struct.TYPE_13__** %498, align 8
  %500 = load %struct.diff_filespec*, %struct.diff_filespec** %30, align 8
  %501 = load %struct.diff_filespec*, %struct.diff_filespec** %31, align 8
  %502 = load %struct.diff_filespec*, %struct.diff_filespec** %32, align 8
  %503 = call i32 @update_entry(%struct.TYPE_13__* %499, %struct.diff_filespec* %500, %struct.diff_filespec* %501, %struct.diff_filespec* %502)
  %504 = load i32, i32* @RENAME_NORMAL, align 4
  %505 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %506 = load %struct.rename*, %struct.rename** %15, align 8
  %507 = call i32 @setup_rename_conflict_info(i32 %504, %struct.merge_options* %505, %struct.rename* %506, %struct.rename* null)
  br label %508

508:                                              ; preds = %496, %470
  br label %509

509:                                              ; preds = %508, %316
  br label %510

510:                                              ; preds = %509, %288
  br label %95

511:                                              ; preds = %107
  br label %512

512:                                              ; preds = %511, %469
  %513 = call i32 @string_list_clear(%struct.string_list* %10, i32 0)
  %514 = call i32 @string_list_clear(%struct.string_list* %11, i32 0)
  %515 = load i32, i32* %7, align 4
  ret i32 %515
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_14__* @string_list_insert(%struct.string_list*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @SWAP(%struct.rename*, %struct.rename*) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @remove_file(%struct.merge_options*, i32, i8*, i32) #2

declare dso_local i32 @update_entry(%struct.TYPE_13__*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_filespec*) #2

declare dso_local i32 @setup_rename_conflict_info(i32, %struct.merge_options*, %struct.rename*, %struct.rename*) #2

declare dso_local %struct.string_list_item* @string_list_lookup(%struct.string_list*, i8*) #2

declare dso_local i32 @was_tracked(%struct.merge_options*, i8*) #2

declare dso_local i32 @oidcpy(i32*, i32*) #2

declare dso_local i64 @oid_eq(i32*, i32*) #2

declare dso_local i64 @update_file_flags(%struct.merge_options*, %struct.diff_filespec*, i8*, i32, i32) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

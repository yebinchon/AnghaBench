; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_adjust_message_values.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_adjust_message_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value_data = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i8*, i8*, %struct.file_user_list_entry* }
%struct.file_user_list_entry = type { i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.value_data* }

@write_extra_mask = common dso_local global i32 0, align 4
@read_extra_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adjust_message_values(i32 %0, i32 %1, %struct.value_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.value_data*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.file_user_list_entry*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.value_data*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.value_data* %2, %struct.value_data** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @conv_uid(i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %3
  %21 = load %struct.value_data*, %struct.value_data** %7, align 8
  %22 = call i32 @free_value_data(%struct.value_data* %21)
  store i32 -1, i32* %4, align 4
  br label %304

23:                                               ; preds = %17
  %24 = load %struct.value_data*, %struct.value_data** %7, align 8
  %25 = getelementptr inbounds %struct.value_data, %struct.value_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.value_data*, %struct.value_data** %7, align 8
  %28 = getelementptr inbounds %struct.value_data, %struct.value_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %26, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %23
  %34 = load %struct.value_data*, %struct.value_data** %7, align 8
  %35 = getelementptr inbounds %struct.value_data, %struct.value_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @write_extra_mask, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %33, %23
  %43 = phi i1 [ false, %23 ], [ %41, %33 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.value_data*, %struct.value_data** %7, align 8
  %47 = getelementptr inbounds %struct.value_data, %struct.value_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @read_extra_mask, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %42
  %53 = load %struct.value_data*, %struct.value_data** %7, align 8
  %54 = call i32 @free_value_data(%struct.value_data* %53)
  store i32 3, i32* %4, align 4
  br label %304

55:                                               ; preds = %42
  %56 = load i32, i32* %5, align 4
  %57 = call %struct.TYPE_8__* @get_user(i32 %56)
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %8, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = icmp ne %struct.TYPE_8__* %58, null
  br i1 %59, label %77, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  %62 = call %struct.file_user_list_entry* @lookup_user_directory(i32 %61)
  store %struct.file_user_list_entry* %62, %struct.file_user_list_entry** %9, align 8
  %63 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %9, align 8
  %64 = icmp ne %struct.file_user_list_entry* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %9, align 8
  %68 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65, %60
  %72 = load %struct.value_data*, %struct.value_data** %7, align 8
  %73 = call i32 @free_value_data(%struct.value_data* %72)
  store i32 0, i32* %4, align 4
  br label %304

74:                                               ; preds = %65
  %75 = load i32, i32* %5, align 4
  %76 = call %struct.TYPE_8__* @get_user_f(i32 %75)
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %8, align 8
  br label %90

77:                                               ; preds = %55
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  %80 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %79, align 8
  store %struct.file_user_list_entry* %80, %struct.file_user_list_entry** %9, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %81, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load %struct.value_data*, %struct.value_data** %7, align 8
  %88 = call i32 @free_value_data(%struct.value_data* %87)
  store i32 0, i32* %4, align 4
  br label %304

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %74
  %91 = load %struct.value_data*, %struct.value_data** %7, align 8
  %92 = getelementptr inbounds %struct.value_data, %struct.value_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @read_extra_mask, align 4
  %95 = xor i32 %94, -1
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load %struct.value_data*, %struct.value_data** %7, align 8
  %100 = load i32, i32* @read_extra_mask, align 4
  %101 = call %struct.value_data* @convert_value_data(%struct.value_data* %99, i32 0, i32 %100)
  store %struct.value_data* %101, %struct.value_data** %7, align 8
  br label %102

102:                                              ; preds = %98, %90
  %103 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %9, align 8
  %104 = icmp ne %struct.file_user_list_entry* %103, null
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %9, align 8
  %108 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %106, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %105
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %113 = call i64 @get_user_metafile(%struct.TYPE_8__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %111, %105, %102
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.value_data*, %struct.value_data** %7, align 8
  %119 = call i32 @adjust_message_values_internal(%struct.TYPE_8__* %116, i32 %117, %struct.value_data* %118)
  store i32 %119, i32* %4, align 4
  br label %304

120:                                              ; preds = %111
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call %struct.TYPE_9__* @tree_lookup(i8* %123, i32 %124)
  store %struct.TYPE_9__* %125, %struct.TYPE_9__** %10, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %127 = icmp ne %struct.TYPE_9__* %126, null
  br i1 %127, label %157, label %128

128:                                              ; preds = %120
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call %struct.TYPE_9__* @tree_lookup(i8* %131, i32 %132)
  store %struct.TYPE_9__* %133, %struct.TYPE_9__** %11, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %135 = icmp ne %struct.TYPE_9__* %134, null
  br i1 %135, label %146, label %136

136:                                              ; preds = %128
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = call i32 (...) @lrand48()
  %142 = load %struct.value_data*, %struct.value_data** %7, align 8
  %143 = call i8* @tree_insert(i8* %139, i32 %140, i32 %141, %struct.value_data* %142)
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  store i32 3, i32* %4, align 4
  br label %304

146:                                              ; preds = %128
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  %149 = load %struct.value_data*, %struct.value_data** %148, align 8
  %150 = load %struct.value_data*, %struct.value_data** %7, align 8
  %151 = call i8* @merge_delayed_values(%struct.value_data* %149, %struct.value_data* %150, i32 -1, i32 1)
  %152 = bitcast i8* %151 to %struct.value_data*
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 2
  store %struct.value_data* %152, %struct.value_data** %154, align 8
  %155 = load %struct.value_data*, %struct.value_data** %7, align 8
  %156 = call i32 @free_value_data(%struct.value_data* %155)
  store i32 3, i32* %4, align 4
  br label %304

157:                                              ; preds = %120
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, 7
  switch i32 %161, label %302 [
    i32 131, label %162
    i32 130, label %165
    i32 129, label %170
    i32 128, label %222
  ]

162:                                              ; preds = %157
  %163 = load %struct.value_data*, %struct.value_data** %7, align 8
  %164 = call i32 @free_value_data(%struct.value_data* %163)
  store i32 0, i32* %4, align 4
  br label %304

165:                                              ; preds = %157
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.value_data*, %struct.value_data** %7, align 8
  %169 = call i32 @adjust_message_values_internal(%struct.TYPE_8__* %166, i32 %167, %struct.value_data* %168)
  store i32 %169, i32* %4, align 4
  br label %304

170:                                              ; preds = %157
  %171 = load %struct.value_data*, %struct.value_data** %7, align 8
  %172 = getelementptr inbounds %struct.value_data, %struct.value_data* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %204, label %175

175:                                              ; preds = %170
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = load i32, i32* %6, align 4
  %180 = call %struct.TYPE_9__* @tree_lookup(i8* %178, i32 %179)
  store %struct.TYPE_9__* %180, %struct.TYPE_9__** %11, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %182 = icmp ne %struct.TYPE_9__* %181, null
  br i1 %182, label %193, label %183

183:                                              ; preds = %175
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = load i32, i32* %6, align 4
  %188 = call i32 (...) @lrand48()
  %189 = load %struct.value_data*, %struct.value_data** %7, align 8
  %190 = call i8* @tree_insert(i8* %186, i32 %187, i32 %188, %struct.value_data* %189)
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  store i8* %190, i8** %192, align 8
  store i32 3, i32* %4, align 4
  br label %304

193:                                              ; preds = %175
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 2
  %196 = load %struct.value_data*, %struct.value_data** %195, align 8
  %197 = load %struct.value_data*, %struct.value_data** %7, align 8
  %198 = call i8* @merge_delayed_values(%struct.value_data* %196, %struct.value_data* %197, i32 -1, i32 1)
  %199 = bitcast i8* %198 to %struct.value_data*
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 2
  store %struct.value_data* %199, %struct.value_data** %201, align 8
  %202 = load %struct.value_data*, %struct.value_data** %7, align 8
  %203 = call i32 @free_value_data(%struct.value_data* %202)
  store i32 3, i32* %4, align 4
  br label %304

204:                                              ; preds = %170
  %205 = load %struct.value_data*, %struct.value_data** %7, align 8
  %206 = getelementptr inbounds %struct.value_data, %struct.value_data* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call %struct.value_data* @alloc_value_data(i32 %207)
  store %struct.value_data* %208, %struct.value_data** %12, align 8
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, 65535
  %213 = load %struct.value_data*, %struct.value_data** %12, align 8
  %214 = getelementptr inbounds %struct.value_data, %struct.value_data* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 4
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %216, align 8
  %219 = load %struct.value_data*, %struct.value_data** %12, align 8
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 2
  store %struct.value_data* %219, %struct.value_data** %221, align 8
  br label %222

222:                                              ; preds = %157, %204
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 1
  %225 = load i8*, i8** %224, align 8
  %226 = load i32, i32* %6, align 4
  %227 = call %struct.TYPE_9__* @tree_lookup(i8* %225, i32 %226)
  store %struct.TYPE_9__* %227, %struct.TYPE_9__** %11, align 8
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 2
  %230 = load %struct.value_data*, %struct.value_data** %229, align 8
  %231 = load %struct.value_data*, %struct.value_data** %7, align 8
  %232 = load %struct.value_data*, %struct.value_data** %7, align 8
  %233 = getelementptr inbounds %struct.value_data, %struct.value_data* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 2
  %237 = load %struct.value_data*, %struct.value_data** %236, align 8
  %238 = getelementptr inbounds %struct.value_data, %struct.value_data* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %234, %239
  %241 = call i8* @merge_delayed_values(%struct.value_data* %230, %struct.value_data* %231, i32 %240, i32 0)
  %242 = bitcast i8* %241 to %struct.value_data*
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 2
  store %struct.value_data* %242, %struct.value_data** %244, align 8
  %245 = load %struct.value_data*, %struct.value_data** %7, align 8
  %246 = getelementptr inbounds %struct.value_data, %struct.value_data* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.value_data*, %struct.value_data** %7, align 8
  %249 = getelementptr inbounds %struct.value_data, %struct.value_data* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 2
  %253 = load %struct.value_data*, %struct.value_data** %252, align 8
  %254 = getelementptr inbounds %struct.value_data, %struct.value_data* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = or i32 %250, %255
  %257 = xor i32 %256, -1
  %258 = and i32 %247, %257
  store i32 %258, i32* %13, align 4
  %259 = load i32, i32* %13, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %299

261:                                              ; preds = %222
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %263 = icmp ne %struct.TYPE_9__* %262, null
  br i1 %263, label %284, label %264

264:                                              ; preds = %261
  %265 = load i32, i32* %13, align 4
  %266 = load %struct.value_data*, %struct.value_data** %7, align 8
  %267 = getelementptr inbounds %struct.value_data, %struct.value_data* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = icmp ne i32 %265, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %264
  %271 = load %struct.value_data*, %struct.value_data** %7, align 8
  %272 = load i32, i32* %13, align 4
  %273 = call %struct.value_data* @convert_value_data(%struct.value_data* %271, i32 0, i32 %272)
  store %struct.value_data* %273, %struct.value_data** %7, align 8
  br label %274

274:                                              ; preds = %270, %264
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 1
  %277 = load i8*, i8** %276, align 8
  %278 = load i32, i32* %6, align 4
  %279 = call i32 (...) @lrand48()
  %280 = load %struct.value_data*, %struct.value_data** %7, align 8
  %281 = call i8* @tree_insert(i8* %277, i32 %278, i32 %279, %struct.value_data* %280)
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 1
  store i8* %281, i8** %283, align 8
  store i32 3, i32* %4, align 4
  br label %304

284:                                              ; preds = %261
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 2
  %287 = load %struct.value_data*, %struct.value_data** %286, align 8
  %288 = load %struct.value_data*, %struct.value_data** %7, align 8
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 2
  %291 = load %struct.value_data*, %struct.value_data** %290, align 8
  %292 = getelementptr inbounds %struct.value_data, %struct.value_data* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = xor i32 %293, -1
  %295 = call i8* @merge_delayed_values(%struct.value_data* %287, %struct.value_data* %288, i32 %294, i32 1)
  %296 = bitcast i8* %295 to %struct.value_data*
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 2
  store %struct.value_data* %296, %struct.value_data** %298, align 8
  br label %299

299:                                              ; preds = %284, %222
  %300 = load %struct.value_data*, %struct.value_data** %7, align 8
  %301 = call i32 @free_value_data(%struct.value_data* %300)
  store i32 3, i32* %4, align 4
  br label %304

302:                                              ; preds = %157
  %303 = call i32 @assert(i32 0)
  store i32 -1, i32* %4, align 4
  br label %304

304:                                              ; preds = %302, %299, %274, %193, %183, %165, %162, %146, %136, %115, %86, %71, %52, %20
  %305 = load i32, i32* %4, align 4
  ret i32 %305
}

declare dso_local i64 @conv_uid(i32) #1

declare dso_local i32 @free_value_data(%struct.value_data*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_8__* @get_user(i32) #1

declare dso_local %struct.file_user_list_entry* @lookup_user_directory(i32) #1

declare dso_local %struct.TYPE_8__* @get_user_f(i32) #1

declare dso_local %struct.value_data* @convert_value_data(%struct.value_data*, i32, i32) #1

declare dso_local i64 @get_user_metafile(%struct.TYPE_8__*) #1

declare dso_local i32 @adjust_message_values_internal(%struct.TYPE_8__*, i32, %struct.value_data*) #1

declare dso_local %struct.TYPE_9__* @tree_lookup(i8*, i32) #1

declare dso_local i8* @tree_insert(i8*, i32, i32, %struct.value_data*) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i8* @merge_delayed_values(%struct.value_data*, %struct.value_data*, i32, i32) #1

declare dso_local %struct.value_data* @alloc_value_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

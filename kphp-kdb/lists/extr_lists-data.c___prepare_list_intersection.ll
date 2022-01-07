; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c___prepare_list_intersection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c___prepare_list_intersection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@metafile_mode = common dso_local global i64 0, align 8
@R = common dso_local global i32 0, align 4
@R_end = common dso_local global i32 0, align 4
@__have_weights = common dso_local global i32 0, align 4
@OBJECT_ID_INTS = common dso_local global i32 0, align 4
@object_id_ints_adjusted = common dso_local global i32 0, align 4
@object_id_bytes_adjusted = common dso_local global i32 0, align 4
@b_out_void = common dso_local global i32 0, align 4
@store_object_id_intersect_v = common dso_local global i32 0, align 4
@store_to_rend_overlap = common dso_local global i32 0, align 4
@R_mode = common dso_local global i32 0, align 4
@value_offset = common dso_local global i32 0, align 4
@VALUE_INTS = common dso_local global i64 0, align 8
@PTR_INTS = common dso_local global i64 0, align 8
@R_entry_size = common dso_local global i32 0, align 4
@SUBCATS = common dso_local global i32 0, align 4
@MAX_OBJECT_RES = common dso_local global i32 0, align 4
@OTree = common dso_local global i32 0, align 4
@get_data_direct_compatible = common dso_local global i32 0, align 4
@get_array = common dso_local global i32 0, align 4
@get_data_indirect = common dso_local global i32 0, align 4
@MAX_OBJECT_ID = common dso_local global i32 0, align 4
@LA = common dso_local global i32* null, align 8
@LE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__prepare_list_intersection(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i64, i64* @metafile_mode, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %6
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @prepare_list_metafile(i32 %23, i32 1)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -2, i32* %7, align 4
  br label %263

27:                                               ; preds = %22, %6
  %28 = load i32, i32* %8, align 4
  %29 = call i32* @__get_list_f(i32 %28, i32 2)
  store i32* %29, i32** %14, align 8
  %30 = load i32, i32* @R, align 4
  store i32 %30, i32* @R_end, align 4
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* @__have_weights, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @OBJECT_ID_INTS, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* @object_id_ints_adjusted, align 4
  %35 = load i32, i32* @object_id_ints_adjusted, align 4
  %36 = mul nsw i32 %35, 4
  store i32 %36, i32* @object_id_bytes_adjusted, align 4
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 1984
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  %41 = load i32, i32* @b_out_void, align 4
  store i32 %41, i32* @store_object_id_intersect_v, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 -1, i32* %7, align 4
  br label %263

45:                                               ; preds = %40
  br label %48

46:                                               ; preds = %27
  %47 = load i32, i32* @store_to_rend_overlap, align 4
  store i32 %47, i32* @store_object_id_intersect_v, align 4
  br label %48

48:                                               ; preds = %46, %45
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* @R_mode, align 4
  store i32 -1, i32* @value_offset, align 4
  %50 = load i32, i32* @OBJECT_ID_INTS, align 4
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 64
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* %17, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %17, align 4
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 128
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %17, align 4
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, 256
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %17, align 4
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, 512
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i32, i32* %17, align 4
  store i32 %76, i32* @value_offset, align 4
  %77 = load i64, i64* @VALUE_INTS, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %17, align 4
  br label %82

82:                                               ; preds = %75, %71
  %83 = load i32, i32* %9, align 4
  %84 = and i32 %83, 1024
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i64, i64* @PTR_INTS, align 8
  %88 = add nsw i64 %87, 1
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %17, align 4
  br label %93

93:                                               ; preds = %86, %82
  %94 = load i32, i32* %17, align 4
  store i32 %94, i32* @R_entry_size, align 4
  %95 = load i32, i32* %9, align 4
  %96 = and i32 %95, 63
  %97 = load i32, i32* @SUBCATS, align 4
  %98 = icmp ugt i32 %96, %97
  br i1 %98, label %106, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @MAX_OBJECT_RES, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102, %99, %93
  store i32 -1, i32* %7, align 4
  br label %263

107:                                              ; preds = %102
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  store i32 0, i32* %7, align 4
  br label %263

111:                                              ; preds = %107
  %112 = load i32*, i32** %14, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %8, align 4
  %116 = call i64 @conv_list_id(i32 %115)
  %117 = icmp slt i64 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 -1, i32 0
  store i32 %119, i32* %7, align 4
  br label %263

120:                                              ; preds = %111
  %121 = load i32*, i32** %14, align 8
  %122 = call i32 @unpack_metafile_pointers(i32* %121)
  %123 = load i32, i32* %9, align 4
  %124 = and i32 %123, 63
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  store %struct.TYPE_4__* bitcast (i32* @OTree to %struct.TYPE_4__*), %struct.TYPE_4__** %18, align 8
  %127 = load i32, i32* @get_data_direct_compatible, align 4
  store i32 %127, i32* @get_array, align 4
  br label %135

128:                                              ; preds = %120
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %18, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @SUBCATS, align 4
  %131 = sub i32 %130, 1
  %132 = and i32 %129, %131
  %133 = call i32 @load_o_tree_sub(%struct.TYPE_4__* %19, i32 %132)
  %134 = load i32, i32* @get_data_indirect, align 4
  store i32 %134, i32* @get_array, align 4
  br label %135

135:                                              ; preds = %128, %126
  store i32 1, i32* %15, align 4
  br label %136

136:                                              ; preds = %152, %135
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %136
  %141 = load i32*, i32** %10, align 8
  %142 = load i32, i32* %15, align 4
  %143 = call i32 @OARR_ENTRY_ADJ(i32* %141, i32 %142)
  %144 = load i32*, i32** %10, align 8
  %145 = load i32, i32* %15, align 4
  %146 = sub nsw i32 %145, 1
  %147 = call i32 @OARR_ENTRY_ADJ(i32* %144, i32 %146)
  %148 = call i64 @object_id_compare(i32 %143, i32 %147)
  %149 = icmp sle i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  br label %155

151:                                              ; preds = %140
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %15, align 4
  br label %136

155:                                              ; preds = %150, %136
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sub nsw i32 %161, 1
  %163 = call i32 @isort(i32* %160, i32 %162)
  br label %164

164:                                              ; preds = %159, %155
  store i32 1, i32* %16, align 4
  store i32 1, i32* %15, align 4
  br label %165

165:                                              ; preds = %220, %164
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %223

169:                                              ; preds = %165
  %170 = load i32*, i32** %10, align 8
  %171 = load i32, i32* %15, align 4
  %172 = call i32 @OARR_ENTRY_ADJ(i32* %170, i32 %171)
  %173 = load i32*, i32** %10, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sub nsw i32 %174, 1
  %176 = call i32 @OARR_ENTRY_ADJ(i32* %173, i32 %175)
  %177 = call i64 @object_id_compare(i32 %172, i32 %176)
  %178 = icmp sgt i64 %177, 0
  br i1 %178, label %179, label %220

179:                                              ; preds = %169
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %207

182:                                              ; preds = %179
  %183 = load i32*, i32** %10, align 8
  %184 = load i32, i32* %15, align 4
  %185 = mul nsw i32 2, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %10, align 8
  %190 = load i32, i32* %16, align 4
  %191 = mul nsw i32 2, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  store i32 %188, i32* %193, align 4
  %194 = load i32*, i32** %10, align 8
  %195 = load i32, i32* %15, align 4
  %196 = mul nsw i32 2, %195
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %194, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %10, align 8
  %202 = load i32, i32* %16, align 4
  %203 = mul nsw i32 2, %202
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %201, i64 %205
  store i32 %200, i32* %206, align 4
  br label %217

207:                                              ; preds = %179
  %208 = load i32*, i32** %10, align 8
  %209 = load i32, i32* %15, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %10, align 8
  %214 = load i32, i32* %16, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %212, i32* %216, align 4
  br label %217

217:                                              ; preds = %207, %182
  %218 = load i32, i32* %16, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %16, align 4
  br label %220

220:                                              ; preds = %217, %169
  %221 = load i32, i32* %15, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %15, align 4
  br label %165

223:                                              ; preds = %165
  %224 = load i32, i32* @MAX_OBJECT_ID, align 4
  %225 = load i32*, i32** %10, align 8
  %226 = load i32, i32* %16, align 4
  %227 = load i32, i32* @object_id_ints_adjusted, align 4
  %228 = mul nsw i32 %226, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %225, i64 %229
  store i32 %224, i32* %230, align 4
  %231 = load i32*, i32** %10, align 8
  store i32* %231, i32** @LA, align 8
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = sub nsw i64 %239, 1
  %241 = load i32, i32* @MAX_OBJECT_ID, align 4
  %242 = call i32 @listree_intersect_range_rec(i32 %235, %struct.TYPE_4__* %236, i32 0, i64 %240, i32 %241)
  %243 = load i32, i32* %12, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %223
  %246 = load i32, i32* @MAX_OBJECT_ID, align 4
  %247 = call i32 @report_x(i32 %246)
  br label %248

248:                                              ; preds = %245, %223
  %249 = load i32, i32* @R_end, align 4
  %250 = load i32, i32* @R, align 4
  %251 = sub nsw i32 %249, %250
  %252 = load i32, i32* @R_entry_size, align 4
  %253 = srem i32 %251, %252
  %254 = icmp ne i32 %253, 0
  %255 = xor i1 %254, true
  %256 = zext i1 %255 to i32
  %257 = call i32 @assert(i32 %256)
  %258 = load i32, i32* @R_end, align 4
  %259 = load i32, i32* @R, align 4
  %260 = sub nsw i32 %258, %259
  %261 = load i32, i32* @R_entry_size, align 4
  %262 = sdiv i32 %260, %261
  store i32 %262, i32* %7, align 4
  br label %263

263:                                              ; preds = %248, %114, %110, %106, %44, %26
  %264 = load i32, i32* %7, align 4
  ret i32 %264
}

declare dso_local i64 @prepare_list_metafile(i32, i32) #1

declare dso_local i32* @__get_list_f(i32, i32) #1

declare dso_local i64 @conv_list_id(i32) #1

declare dso_local i32 @unpack_metafile_pointers(i32*) #1

declare dso_local i32 @load_o_tree_sub(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @object_id_compare(i32, i32) #1

declare dso_local i32 @OARR_ENTRY_ADJ(i32*, i32) #1

declare dso_local i32 @isort(i32*, i32) #1

declare dso_local i32 @listree_intersect_range_rec(i32, %struct.TYPE_4__*, i32, i64, i32) #1

declare dso_local i32 @report_x(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

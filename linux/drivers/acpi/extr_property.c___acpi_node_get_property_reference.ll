; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c___acpi_node_get_property_reference.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c___acpi_node_get_property_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.fwnode_reference_args = type { i64, i32*, %struct.fwnode_handle* }
%union.acpi_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %union.acpi_object* }
%struct.acpi_device_data = type { i32 }
%struct.acpi_device = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ACPI_TYPE_STRING = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@NR_FWNODE_REFERENCE_ARGS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__acpi_node_get_property_reference(%struct.fwnode_handle* %0, i8* %1, i64 %2, i64 %3, %struct.fwnode_reference_args* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fwnode_handle*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.fwnode_reference_args*, align 8
  %12 = alloca %union.acpi_object*, align 8
  %13 = alloca %union.acpi_object*, align 8
  %14 = alloca %union.acpi_object*, align 8
  %15 = alloca %struct.acpi_device_data*, align 8
  %16 = alloca %struct.acpi_device*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.fwnode_handle*, align 8
  %22 = alloca i32, align 4
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.fwnode_reference_args* %4, %struct.fwnode_reference_args** %11, align 8
  store i32 0, i32* %18, align 4
  %23 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %24 = call %struct.acpi_device_data* @acpi_device_data_of_node(%struct.fwnode_handle* %23)
  store %struct.acpi_device_data* %24, %struct.acpi_device_data** %15, align 8
  %25 = load %struct.acpi_device_data*, %struct.acpi_device_data** %15, align 8
  %26 = icmp ne %struct.acpi_device_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %283

30:                                               ; preds = %5
  %31 = load %struct.acpi_device_data*, %struct.acpi_device_data** %15, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %34 = call i32 @acpi_data_get_property(%struct.acpi_device_data* %31, i8* %32, i32 %33, %union.acpi_object** %14)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  br label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i32 [ %44, %42 ], [ %47, %45 ]
  store i32 %49, i32* %6, align 4
  br label %283

50:                                               ; preds = %30
  %51 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %52 = bitcast %union.acpi_object* %51 to i32*
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ACPI_TYPE_LOCAL_REFERENCE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %90

56:                                               ; preds = %50
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %283

62:                                               ; preds = %56
  %63 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %64 = bitcast %union.acpi_object* %63 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @acpi_bus_get_device(i32 %66, %struct.acpi_device** %16)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %62
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  br label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %17, align 4
  br label %80

80:                                               ; preds = %78, %75
  %81 = phi i32 [ %77, %75 ], [ %79, %78 ]
  store i32 %81, i32* %6, align 4
  br label %283

82:                                               ; preds = %62
  %83 = load %struct.acpi_device*, %struct.acpi_device** %16, align 8
  %84 = call i8* @acpi_fwnode_handle(%struct.acpi_device* %83)
  %85 = bitcast i8* %84 to %struct.fwnode_handle*
  %86 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %11, align 8
  %87 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %86, i32 0, i32 2
  store %struct.fwnode_handle* %85, %struct.fwnode_handle** %87, align 8
  %88 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %11, align 8
  %89 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  store i32 0, i32* %6, align 4
  br label %283

90:                                               ; preds = %50
  %91 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %92 = bitcast %union.acpi_object* %91 to i32*
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %283

100:                                              ; preds = %90
  %101 = load i64, i64* %9, align 8
  %102 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %103 = bitcast %union.acpi_object* %102 to %struct.TYPE_5__*
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp uge i64 %101, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* @ENOENT, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %6, align 4
  br label %283

110:                                              ; preds = %100
  %111 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %112 = bitcast %union.acpi_object* %111 to %struct.TYPE_5__*
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load %union.acpi_object*, %union.acpi_object** %113, align 8
  store %union.acpi_object* %114, %union.acpi_object** %12, align 8
  %115 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %116 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %117 = bitcast %union.acpi_object* %116 to %struct.TYPE_5__*
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %115, i64 %119
  store %union.acpi_object* %120, %union.acpi_object** %13, align 8
  br label %121

121:                                              ; preds = %277, %110
  %122 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %123 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %124 = icmp ult %union.acpi_object* %122, %123
  br i1 %124, label %125, label %280

125:                                              ; preds = %121
  %126 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %127 = bitcast %union.acpi_object* %126 to i32*
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @ACPI_TYPE_LOCAL_REFERENCE, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %256

131:                                              ; preds = %125
  %132 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %133 = bitcast %union.acpi_object* %132 to %struct.TYPE_6__*
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @acpi_bus_get_device(i32 %135, %struct.acpi_device** %16)
  store i32 %136, i32* %17, align 4
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %131
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %6, align 4
  br label %283

142:                                              ; preds = %131
  store i64 0, i64* %19, align 8
  %143 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %144 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %143, i32 1
  store %union.acpi_object* %144, %union.acpi_object** %12, align 8
  %145 = load %struct.acpi_device*, %struct.acpi_device** %16, align 8
  %146 = call i8* @acpi_fwnode_handle(%struct.acpi_device* %145)
  %147 = bitcast i8* %146 to %struct.fwnode_handle*
  store %struct.fwnode_handle* %147, %struct.fwnode_handle** %21, align 8
  br label %148

148:                                              ; preds = %173, %142
  %149 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %150 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %151 = icmp ult %union.acpi_object* %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %154 = bitcast %union.acpi_object* %153 to i32*
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @ACPI_TYPE_STRING, align 4
  %157 = icmp eq i32 %155, %156
  br label %158

158:                                              ; preds = %152, %148
  %159 = phi i1 [ false, %148 ], [ %157, %152 ]
  br i1 %159, label %160, label %176

160:                                              ; preds = %158
  %161 = load %struct.fwnode_handle*, %struct.fwnode_handle** %21, align 8
  %162 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %163 = bitcast %union.acpi_object* %162 to %struct.TYPE_7__*
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call %struct.fwnode_handle* @acpi_fwnode_get_named_child_node(%struct.fwnode_handle* %161, i32 %165)
  store %struct.fwnode_handle* %166, %struct.fwnode_handle** %21, align 8
  %167 = load %struct.fwnode_handle*, %struct.fwnode_handle** %21, align 8
  %168 = icmp ne %struct.fwnode_handle* %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %160
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %6, align 4
  br label %283

172:                                              ; preds = %160
  br label %173

173:                                              ; preds = %172
  %174 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %175 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %174, i32 1
  store %union.acpi_object* %175, %union.acpi_object** %12, align 8
  br label %148

176:                                              ; preds = %158
  store i64 0, i64* %20, align 8
  br label %177

177:                                              ; preds = %210, %176
  %178 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %179 = load i64, i64* %20, align 8
  %180 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %178, i64 %179
  %181 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %182 = icmp ult %union.acpi_object* %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = load i64, i64* %20, align 8
  %185 = load i64, i64* %10, align 8
  %186 = icmp ult i64 %184, %185
  br label %187

187:                                              ; preds = %183, %177
  %188 = phi i1 [ false, %177 ], [ %186, %183 ]
  br i1 %188, label %189, label %213

189:                                              ; preds = %187
  %190 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %191 = load i64, i64* %20, align 8
  %192 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %190, i64 %191
  %193 = bitcast %union.acpi_object* %192 to i32*
  %194 = load i32, i32* %193, align 8
  store i32 %194, i32* %22, align 4
  %195 = load i32, i32* %22, align 4
  %196 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %189
  %199 = load i64, i64* %19, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %19, align 8
  br label %209

201:                                              ; preds = %189
  %202 = load i32, i32* %22, align 4
  %203 = load i32, i32* @ACPI_TYPE_LOCAL_REFERENCE, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  br label %213

206:                                              ; preds = %201
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %6, align 4
  br label %283

209:                                              ; preds = %198
  br label %210

210:                                              ; preds = %209
  %211 = load i64, i64* %20, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %20, align 8
  br label %177

213:                                              ; preds = %205, %187
  %214 = load i64, i64* %19, align 8
  %215 = load i64, i64* @NR_FWNODE_REFERENCE_ARGS, align 8
  %216 = icmp ugt i64 %214, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %218 = load i32, i32* @EINVAL, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %6, align 4
  br label %283

220:                                              ; preds = %213
  %221 = load i32, i32* %18, align 4
  %222 = sext i32 %221 to i64
  %223 = load i64, i64* %9, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %252

225:                                              ; preds = %220
  %226 = load %struct.fwnode_handle*, %struct.fwnode_handle** %21, align 8
  %227 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %11, align 8
  %228 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %227, i32 0, i32 2
  store %struct.fwnode_handle* %226, %struct.fwnode_handle** %228, align 8
  %229 = load i64, i64* %19, align 8
  %230 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %11, align 8
  %231 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %230, i32 0, i32 0
  store i64 %229, i64* %231, align 8
  store i64 0, i64* %20, align 8
  br label %232

232:                                              ; preds = %248, %225
  %233 = load i64, i64* %20, align 8
  %234 = load i64, i64* %19, align 8
  %235 = icmp ult i64 %233, %234
  br i1 %235, label %236, label %251

236:                                              ; preds = %232
  %237 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %238 = load i64, i64* %20, align 8
  %239 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %237, i64 %238
  %240 = bitcast %union.acpi_object* %239 to %struct.TYPE_8__*
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %11, align 8
  %244 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = load i64, i64* %20, align 8
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  store i32 %242, i32* %247, align 4
  br label %248

248:                                              ; preds = %236
  %249 = load i64, i64* %20, align 8
  %250 = add i64 %249, 1
  store i64 %250, i64* %20, align 8
  br label %232

251:                                              ; preds = %232
  store i32 0, i32* %6, align 4
  br label %283

252:                                              ; preds = %220
  %253 = load i64, i64* %19, align 8
  %254 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %255 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %254, i64 %253
  store %union.acpi_object* %255, %union.acpi_object** %12, align 8
  br label %277

256:                                              ; preds = %125
  %257 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %258 = bitcast %union.acpi_object* %257 to i32*
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %273

262:                                              ; preds = %256
  %263 = load i32, i32* %18, align 4
  %264 = sext i32 %263 to i64
  %265 = load i64, i64* %9, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %262
  %268 = load i32, i32* @ENOENT, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %6, align 4
  br label %283

270:                                              ; preds = %262
  %271 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %272 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %271, i32 1
  store %union.acpi_object* %272, %union.acpi_object** %12, align 8
  br label %276

273:                                              ; preds = %256
  %274 = load i32, i32* @EINVAL, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %6, align 4
  br label %283

276:                                              ; preds = %270
  br label %277

277:                                              ; preds = %276, %252
  %278 = load i32, i32* %18, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %18, align 4
  br label %121

280:                                              ; preds = %121
  %281 = load i32, i32* @ENOENT, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %6, align 4
  br label %283

283:                                              ; preds = %280, %273, %267, %251, %217, %206, %169, %139, %107, %97, %82, %80, %59, %48, %27
  %284 = load i32, i32* %6, align 4
  ret i32 %284
}

declare dso_local %struct.acpi_device_data* @acpi_device_data_of_node(%struct.fwnode_handle*) #1

declare dso_local i32 @acpi_data_get_property(%struct.acpi_device_data*, i8*, i32, %union.acpi_object**) #1

declare dso_local i32 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i8* @acpi_fwnode_handle(%struct.acpi_device*) #1

declare dso_local %struct.fwnode_handle* @acpi_fwnode_get_named_child_node(%struct.fwnode_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

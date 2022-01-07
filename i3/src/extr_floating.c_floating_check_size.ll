; ModuleID = '/home/carl/AnghaBench/i3/src/extr_floating.c_floating_check_size.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_floating.c_floating_check_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_13__, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, double, double, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@BS_NORMAL = common dso_local global i64 0, align 8
@CF_NONE = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @floating_check_size(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 50, i32* %5, align 4
  store i32 75, i32* %6, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %23 = call %struct.TYPE_16__* @con_descend_focused(%struct.TYPE_16__* %22)
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %8, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %25 = call i64 @con_border_style_rect(%struct.TYPE_16__* %24)
  %26 = bitcast %struct.TYPE_15__* %9 to i64*
  store i64 %25, i64* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 0, %28
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 2, %33
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 0, %39
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 2, %44
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %45
  store i32 %48, i32* %46, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %50 = call i64 @con_border_style(%struct.TYPE_16__* %49)
  %51 = load i64, i64* @BS_NORMAL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %2
  %54 = call i64 (...) @render_deco_height()
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %54
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  br label %60

60:                                               ; preds = %53, %2
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %10, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %65 = icmp ne %struct.TYPE_14__* %64, null
  br i1 %65, label %66, label %457

66:                                               ; preds = %60
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  br label %79

75:                                               ; preds = %66
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i32 [ %74, %71 ], [ %78, %75 ]
  store i32 %80, i32* %11, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  br label %93

89:                                               ; preds = %79
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi i32 [ %88, %85 ], [ %92, %89 ]
  store i32 %94, i32* %12, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  br label %107

103:                                              ; preds = %93
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  br label %107

107:                                              ; preds = %103, %99
  %108 = phi i32 [ %102, %99 ], [ %106, %103 ]
  store i32 %108, i32* %13, align 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  br label %121

117:                                              ; preds = %107
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  br label %121

121:                                              ; preds = %117, %113
  %122 = phi i32 [ %116, %113 ], [ %120, %117 ]
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %151

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, %127
  store i32 %132, i32* %130, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = load i32, i32* %11, align 4
  %139 = call i8* @max(i64 %137, i32 %138)
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, %145
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %125, %121
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %180

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %160, %156
  store i32 %161, i32* %159, align 4
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = load i32, i32* %12, align 4
  %168 = call i8* @max(i64 %166, i32 %167)
  %169 = ptrtoint i8* %168 to i32
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  store i32 %169, i32* %172, align 4
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, %174
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %154, %151
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %212

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sub nsw i32 %191, %187
  store i32 %192, i32* %190, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = call i8* @min(i32 %196, i32 %199)
  %201 = ptrtoint i8* %200 to i32
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  store i32 %201, i32* %204, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, %206
  store i32 %211, i32* %209, align 8
  br label %212

212:                                              ; preds = %185, %180
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %244

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 %223, %219
  store i32 %224, i32* %222, align 4
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = call i8* @min(i32 %228, i32 %231)
  %233 = ptrtoint i8* %232 to i32
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 1
  store i32 %233, i32* %236, align 4
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, %238
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %217, %212
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 6
  %247 = load double, double* %246, align 8
  store double %247, double* %15, align 8
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 7
  %250 = load double, double* %249, align 8
  store double %250, double* %16, align 8
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @CF_NONE, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %362

256:                                              ; preds = %244
  %257 = load double, double* %15, align 8
  %258 = fcmp ogt double %257, 0.000000e+00
  br i1 %258, label %262, label %259

259:                                              ; preds = %256
  %260 = load double, double* %16, align 8
  %261 = fcmp ogt double %260, 0.000000e+00
  br i1 %261, label %262, label %362

262:                                              ; preds = %259, %256
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = sub nsw i32 %266, %269
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = sub nsw i32 %270, %272
  %274 = sitofp i32 %273 to double
  store double %274, double* %17, align 8
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = sub nsw i32 %278, %281
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = sub nsw i32 %282, %284
  %286 = sitofp i32 %285 to double
  store double %286, double* %18, align 8
  %287 = load double, double* %17, align 8
  %288 = load double, double* %18, align 8
  %289 = fdiv double %287, %288
  store double %289, double* %19, align 8
  store double -1.000000e+00, double* %20, align 8
  %290 = load double, double* %15, align 8
  %291 = fcmp ogt double %290, 0.000000e+00
  br i1 %291, label %292, label %298

292:                                              ; preds = %262
  %293 = load double, double* %19, align 8
  %294 = load double, double* %15, align 8
  %295 = fcmp olt double %293, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %292
  %297 = load double, double* %15, align 8
  store double %297, double* %20, align 8
  br label %308

298:                                              ; preds = %292, %262
  %299 = load double, double* %16, align 8
  %300 = fcmp ogt double %299, 0.000000e+00
  br i1 %300, label %301, label %307

301:                                              ; preds = %298
  %302 = load double, double* %19, align 8
  %303 = load double, double* %16, align 8
  %304 = fcmp ogt double %302, %303
  br i1 %304, label %305, label %307

305:                                              ; preds = %301
  %306 = load double, double* %16, align 8
  store double %306, double* %20, align 8
  br label %307

307:                                              ; preds = %305, %301, %298
  br label %308

308:                                              ; preds = %307, %296
  %309 = load double, double* %20, align 8
  %310 = fcmp ogt double %309, 0.000000e+00
  br i1 %310, label %311, label %361

311:                                              ; preds = %308
  %312 = load i32, i32* %4, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %323

314:                                              ; preds = %311
  %315 = load double, double* %18, align 8
  %316 = load double, double* %20, align 8
  %317 = fmul double %315, %316
  %318 = call double @llvm.round.f64(double %317)
  store double %318, double* %17, align 8
  %319 = load double, double* %17, align 8
  %320 = load double, double* %20, align 8
  %321 = fdiv double %319, %320
  %322 = call double @llvm.round.f64(double %321)
  store double %322, double* %18, align 8
  br label %332

323:                                              ; preds = %311
  %324 = load double, double* %17, align 8
  %325 = load double, double* %20, align 8
  %326 = fdiv double %324, %325
  %327 = call double @llvm.round.f64(double %326)
  store double %327, double* %18, align 8
  %328 = load double, double* %18, align 8
  %329 = load double, double* %20, align 8
  %330 = fmul double %328, %329
  %331 = call double @llvm.round.f64(double %330)
  store double %331, double* %17, align 8
  br label %332

332:                                              ; preds = %323, %314
  %333 = load double, double* %17, align 8
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = sitofp i32 %336 to double
  %338 = fadd double %333, %337
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = sitofp i32 %340 to double
  %342 = fadd double %338, %341
  %343 = fptosi double %342 to i32
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 0
  store i32 %343, i32* %346, align 8
  %347 = load double, double* %18, align 8
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 4
  %351 = sitofp i32 %350 to double
  %352 = fadd double %347, %351
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = sitofp i32 %354 to double
  %356 = fadd double %352, %355
  %357 = fptosi double %356 to i32
  %358 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 2
  %360 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %359, i32 0, i32 1
  store i32 %357, i32* %360, align 4
  br label %361

361:                                              ; preds = %332, %308
  br label %362

362:                                              ; preds = %361, %259, %244
  %363 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i32 0, i32 8
  %365 = load i32, i32* %364, align 8
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %409

367:                                              ; preds = %362
  %368 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* %14, align 4
  %373 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = add nsw i32 %372, %374
  %376 = icmp sge i32 %371, %375
  br i1 %376, label %377, label %409

377:                                              ; preds = %367
  %378 = load i32, i32* %14, align 4
  %379 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = add nsw i32 %378, %380
  %382 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i32 0, i32 2
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = sub nsw i32 %385, %381
  store i32 %386, i32* %384, align 4
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %392 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %391, i32 0, i32 8
  %393 = load i32, i32* %392, align 8
  %394 = srem i32 %390, %393
  %395 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i32 0, i32 2
  %397 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = sub nsw i32 %398, %394
  store i32 %399, i32* %397, align 4
  %400 = load i32, i32* %14, align 4
  %401 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = add nsw i32 %400, %402
  %404 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %404, i32 0, i32 2
  %406 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = add nsw i32 %407, %403
  store i32 %408, i32* %406, align 4
  br label %409

409:                                              ; preds = %377, %367, %362
  %410 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %411 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %410, i32 0, i32 9
  %412 = load i32, i32* %411, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %456

414:                                              ; preds = %409
  %415 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %415, i32 0, i32 2
  %417 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* %13, align 4
  %420 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = add nsw i32 %419, %421
  %423 = icmp sge i32 %418, %422
  br i1 %423, label %424, label %456

424:                                              ; preds = %414
  %425 = load i32, i32* %13, align 4
  %426 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = add nsw i32 %425, %427
  %429 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %430 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %429, i32 0, i32 2
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = sub nsw i32 %432, %428
  store i32 %433, i32* %431, align 8
  %434 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %435 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %434, i32 0, i32 2
  %436 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %439 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %438, i32 0, i32 9
  %440 = load i32, i32* %439, align 4
  %441 = srem i32 %437, %440
  %442 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %443 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %442, i32 0, i32 2
  %444 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = sub nsw i32 %445, %441
  store i32 %446, i32* %444, align 8
  %447 = load i32, i32* %13, align 4
  %448 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = add nsw i32 %447, %449
  %451 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %452 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %451, i32 0, i32 2
  %453 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = add nsw i32 %454, %450
  store i32 %455, i32* %453, align 8
  br label %456

456:                                              ; preds = %424, %414, %409
  br label %457

457:                                              ; preds = %456, %60
  %458 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @config, i32 0, i32 0), align 4
  %459 = icmp ne i32 %458, -1
  br i1 %459, label %460, label %501

460:                                              ; preds = %457
  %461 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %464 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %463, i32 0, i32 2
  %465 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = sub nsw i32 %466, %462
  store i32 %467, i32* %465, align 4
  %468 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @config, i32 0, i32 0), align 4
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %481

470:                                              ; preds = %460
  %471 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %472 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %471, i32 0, i32 2
  %473 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %472, i32 0, i32 1
  %474 = load i32, i32* %473, align 4
  %475 = sext i32 %474 to i64
  %476 = call i8* @max(i64 %475, i32 50)
  %477 = ptrtoint i8* %476 to i32
  %478 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %479 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %478, i32 0, i32 2
  %480 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %479, i32 0, i32 1
  store i32 %477, i32* %480, align 4
  br label %493

481:                                              ; preds = %460
  %482 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %483 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %482, i32 0, i32 2
  %484 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = sext i32 %485 to i64
  %487 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @config, i32 0, i32 0), align 4
  %488 = call i8* @max(i64 %486, i32 %487)
  %489 = ptrtoint i8* %488 to i32
  %490 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %491 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %490, i32 0, i32 2
  %492 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %491, i32 0, i32 1
  store i32 %489, i32* %492, align 4
  br label %493

493:                                              ; preds = %481, %470
  %494 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %497 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %496, i32 0, i32 2
  %498 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 4
  %500 = add nsw i32 %499, %495
  store i32 %500, i32* %498, align 4
  br label %501

501:                                              ; preds = %493, %457
  %502 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @config, i32 0, i32 1), align 4
  %503 = icmp ne i32 %502, -1
  br i1 %503, label %504, label %545

504:                                              ; preds = %501
  %505 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %506 = load i32, i32* %505, align 4
  %507 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %508 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %507, i32 0, i32 2
  %509 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = sub nsw i32 %510, %506
  store i32 %511, i32* %509, align 8
  %512 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @config, i32 0, i32 1), align 4
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %525

514:                                              ; preds = %504
  %515 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %516 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %515, i32 0, i32 2
  %517 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = sext i32 %518 to i64
  %520 = call i8* @max(i64 %519, i32 75)
  %521 = ptrtoint i8* %520 to i32
  %522 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %523 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %522, i32 0, i32 2
  %524 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %523, i32 0, i32 0
  store i32 %521, i32* %524, align 8
  br label %537

525:                                              ; preds = %504
  %526 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %527 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %526, i32 0, i32 2
  %528 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = sext i32 %529 to i64
  %531 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @config, i32 0, i32 1), align 4
  %532 = call i8* @max(i64 %530, i32 %531)
  %533 = ptrtoint i8* %532 to i32
  %534 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %535 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %534, i32 0, i32 2
  %536 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %535, i32 0, i32 0
  store i32 %533, i32* %536, align 8
  br label %537

537:                                              ; preds = %525, %514
  %538 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %539 = load i32, i32* %538, align 4
  %540 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %541 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %540, i32 0, i32 2
  %542 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 8
  %544 = add nsw i32 %543, %539
  store i32 %544, i32* %542, align 8
  br label %545

545:                                              ; preds = %537, %501
  %546 = call i64 (...) @total_outputs_dimensions()
  %547 = bitcast %struct.TYPE_15__* %21 to i64*
  store i64 %546, i64* %547, align 4
  %548 = bitcast %struct.TYPE_15__* %7 to i8*
  %549 = bitcast %struct.TYPE_15__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %548, i8* align 4 %549, i64 8, i1 false)
  %550 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @config, i32 0, i32 2), align 4
  %551 = icmp ne i32 %550, -1
  br i1 %551, label %552, label %593

552:                                              ; preds = %545
  %553 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %554 = load i32, i32* %553, align 4
  %555 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %556 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %555, i32 0, i32 2
  %557 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %556, i32 0, i32 1
  %558 = load i32, i32* %557, align 4
  %559 = sub nsw i32 %558, %554
  store i32 %559, i32* %557, align 4
  %560 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @config, i32 0, i32 2), align 4
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %574

562:                                              ; preds = %552
  %563 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %564 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %563, i32 0, i32 2
  %565 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %564, i32 0, i32 1
  %566 = load i32, i32* %565, align 4
  %567 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %568 = load i32, i32* %567, align 4
  %569 = call i8* @min(i32 %566, i32 %568)
  %570 = ptrtoint i8* %569 to i32
  %571 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %572 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %571, i32 0, i32 2
  %573 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %572, i32 0, i32 1
  store i32 %570, i32* %573, align 4
  br label %585

574:                                              ; preds = %552
  %575 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %576 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %575, i32 0, i32 2
  %577 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %576, i32 0, i32 1
  %578 = load i32, i32* %577, align 4
  %579 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @config, i32 0, i32 2), align 4
  %580 = call i8* @min(i32 %578, i32 %579)
  %581 = ptrtoint i8* %580 to i32
  %582 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %583 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %582, i32 0, i32 2
  %584 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %583, i32 0, i32 1
  store i32 %581, i32* %584, align 4
  br label %585

585:                                              ; preds = %574, %562
  %586 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %587 = load i32, i32* %586, align 4
  %588 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %589 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %588, i32 0, i32 2
  %590 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %589, i32 0, i32 1
  %591 = load i32, i32* %590, align 4
  %592 = add nsw i32 %591, %587
  store i32 %592, i32* %590, align 4
  br label %593

593:                                              ; preds = %585, %545
  %594 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @config, i32 0, i32 3), align 4
  %595 = icmp ne i32 %594, -1
  br i1 %595, label %596, label %637

596:                                              ; preds = %593
  %597 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %598 = load i32, i32* %597, align 4
  %599 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %600 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %599, i32 0, i32 2
  %601 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 8
  %603 = sub nsw i32 %602, %598
  store i32 %603, i32* %601, align 8
  %604 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @config, i32 0, i32 3), align 4
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %618

606:                                              ; preds = %596
  %607 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %608 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %607, i32 0, i32 2
  %609 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 8
  %611 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %612 = load i32, i32* %611, align 4
  %613 = call i8* @min(i32 %610, i32 %612)
  %614 = ptrtoint i8* %613 to i32
  %615 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %616 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %615, i32 0, i32 2
  %617 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %616, i32 0, i32 0
  store i32 %614, i32* %617, align 8
  br label %629

618:                                              ; preds = %596
  %619 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %620 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %619, i32 0, i32 2
  %621 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %620, i32 0, i32 0
  %622 = load i32, i32* %621, align 8
  %623 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @config, i32 0, i32 3), align 4
  %624 = call i8* @min(i32 %622, i32 %623)
  %625 = ptrtoint i8* %624 to i32
  %626 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %627 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %626, i32 0, i32 2
  %628 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %627, i32 0, i32 0
  store i32 %625, i32* %628, align 8
  br label %629

629:                                              ; preds = %618, %606
  %630 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %631 = load i32, i32* %630, align 4
  %632 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %633 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %632, i32 0, i32 2
  %634 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %633, i32 0, i32 0
  %635 = load i32, i32* %634, align 8
  %636 = add nsw i32 %635, %631
  store i32 %636, i32* %634, align 8
  br label %637

637:                                              ; preds = %629, %593
  ret void
}

declare dso_local %struct.TYPE_16__* @con_descend_focused(%struct.TYPE_16__*) #1

declare dso_local i64 @con_border_style_rect(%struct.TYPE_16__*) #1

declare dso_local i64 @con_border_style(%struct.TYPE_16__*) #1

declare dso_local i64 @render_deco_height(...) #1

declare dso_local i8* @max(i64, i32) #1

declare dso_local i8* @min(i32, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.round.f64(double) #2

declare dso_local i64 @total_outputs_dimensions(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

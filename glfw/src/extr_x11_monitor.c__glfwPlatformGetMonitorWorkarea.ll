; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_monitor.c__glfwPlatformGetMonitorWorkarea.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_monitor.c__glfwPlatformGetMonitorWorkarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32, i64, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i64, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@_glfw = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@RR_Rotate_90 = common dso_local global i64 0, align 8
@RR_Rotate_270 = common dso_local global i64 0, align 8
@XA_CARDINAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformGetMonitorWorkarea(%struct.TYPE_15__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5, i32 1), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %82

27:                                               ; preds = %5
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 5, i32 0), align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %82, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 4), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 1), align 8
  %33 = call i32* @XRRGetScreenResourcesCurrent(i32 %31, i32 %32)
  store i32* %33, i32** %15, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 4), align 4
  %35 = load i32*, i32** %15, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_17__* @XRRGetCrtcInfo(i32 %34, i32* %35, i32 %39)
  store %struct.TYPE_17__* %40, %struct.TYPE_17__** %16, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %11, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load i32*, i32** %15, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.TYPE_16__* @getModeInfo(i32* %47, i32 %50)
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %17, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RR_Rotate_90, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %30
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RR_Rotate_270, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57, %30
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %13, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %14, align 4
  br label %77

70:                                               ; preds = %57
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %13, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %70, %63
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %79 = call i32 @XRRFreeCrtcInfo(%struct.TYPE_17__* %78)
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 @XRRFreeScreenResources(i32* %80)
  br label %89

82:                                               ; preds = %27, %5
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 4), align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 3), align 8
  %85 = call i32 @DisplayWidth(i32 %83, i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 4), align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 3), align 8
  %88 = call i32 @DisplayHeight(i32 %86, i32 %87)
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %82, %77
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 2), align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %213

92:                                               ; preds = %89
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %213

95:                                               ; preds = %92
  store i64* null, i64** %18, align 8
  store i64* null, i64** %19, align 8
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 1), align 8
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 2), align 8
  %98 = load i32, i32* @XA_CARDINAL, align 4
  %99 = bitcast i64** %18 to i8**
  %100 = call i64 @_glfwGetWindowPropertyX11(i32 %96, i64 %97, i32 %98, i8** %99)
  store i64 %100, i64* %20, align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 1), align 8
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @_glfw, i32 0, i32 0, i32 0), align 8
  %103 = load i32, i32* @XA_CARDINAL, align 4
  %104 = bitcast i64** %19 to i8**
  %105 = call i64 @_glfwGetWindowPropertyX11(i32 %101, i64 %102, i32 %103, i8** %104)
  %106 = icmp ugt i64 %105, 0
  br i1 %106, label %107, label %200

107:                                              ; preds = %95
  %108 = load i64, i64* %20, align 8
  %109 = icmp uge i64 %108, 4
  br i1 %109, label %110, label %199

110:                                              ; preds = %107
  %111 = load i64*, i64** %19, align 8
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %20, align 8
  %114 = udiv i64 %113, 4
  %115 = icmp ult i64 %112, %114
  br i1 %115, label %116, label %199

116:                                              ; preds = %110
  %117 = load i64*, i64** %18, align 8
  %118 = load i64*, i64** %19, align 8
  %119 = load i64, i64* %118, align 8
  %120 = mul i64 %119, 4
  %121 = add i64 %120, 0
  %122 = getelementptr inbounds i64, i64* %117, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %21, align 4
  %125 = load i64*, i64** %18, align 8
  %126 = load i64*, i64** %19, align 8
  %127 = load i64, i64* %126, align 8
  %128 = mul i64 %127, 4
  %129 = add i64 %128, 1
  %130 = getelementptr inbounds i64, i64* %125, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %22, align 4
  %133 = load i64*, i64** %18, align 8
  %134 = load i64*, i64** %19, align 8
  %135 = load i64, i64* %134, align 8
  %136 = mul i64 %135, 4
  %137 = add i64 %136, 2
  %138 = getelementptr inbounds i64, i64* %133, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %23, align 4
  %141 = load i64*, i64** %18, align 8
  %142 = load i64*, i64** %19, align 8
  %143 = load i64, i64* %142, align 8
  %144 = mul i64 %143, 4
  %145 = add i64 %144, 3
  %146 = getelementptr inbounds i64, i64* %141, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %24, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %21, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %116
  %153 = load i32, i32* %21, align 4
  %154 = load i32, i32* %11, align 4
  %155 = sub nsw i32 %153, %154
  %156 = load i32, i32* %13, align 4
  %157 = sub nsw i32 %156, %155
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %21, align 4
  store i32 %158, i32* %11, align 4
  br label %159

159:                                              ; preds = %152, %116
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %22, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = load i32, i32* %22, align 4
  %165 = load i32, i32* %12, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load i32, i32* %14, align 4
  %168 = sub nsw i32 %167, %166
  store i32 %168, i32* %14, align 4
  %169 = load i32, i32* %22, align 4
  store i32 %169, i32* %12, align 4
  br label %170

170:                                              ; preds = %163, %159
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %171, %172
  %174 = load i32, i32* %21, align 4
  %175 = load i32, i32* %23, align 4
  %176 = add nsw i32 %174, %175
  %177 = icmp sgt i32 %173, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %170
  %179 = load i32, i32* %21, align 4
  %180 = load i32, i32* %11, align 4
  %181 = sub nsw i32 %179, %180
  %182 = load i32, i32* %23, align 4
  %183 = add nsw i32 %181, %182
  store i32 %183, i32* %13, align 4
  br label %184

184:                                              ; preds = %178, %170
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %185, %186
  %188 = load i32, i32* %22, align 4
  %189 = load i32, i32* %24, align 4
  %190 = add nsw i32 %188, %189
  %191 = icmp sgt i32 %187, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %184
  %193 = load i32, i32* %22, align 4
  %194 = load i32, i32* %12, align 4
  %195 = sub nsw i32 %193, %194
  %196 = load i32, i32* %24, align 4
  %197 = add nsw i32 %195, %196
  store i32 %197, i32* %14, align 4
  br label %198

198:                                              ; preds = %192, %184
  br label %199

199:                                              ; preds = %198, %110, %107
  br label %200

200:                                              ; preds = %199, %95
  %201 = load i64*, i64** %18, align 8
  %202 = icmp ne i64* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load i64*, i64** %18, align 8
  %205 = call i32 @XFree(i64* %204)
  br label %206

206:                                              ; preds = %203, %200
  %207 = load i64*, i64** %19, align 8
  %208 = icmp ne i64* %207, null
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load i64*, i64** %19, align 8
  %211 = call i32 @XFree(i64* %210)
  br label %212

212:                                              ; preds = %209, %206
  br label %213

213:                                              ; preds = %212, %92, %89
  %214 = load i32*, i32** %7, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32, i32* %11, align 4
  %218 = load i32*, i32** %7, align 8
  store i32 %217, i32* %218, align 4
  br label %219

219:                                              ; preds = %216, %213
  %220 = load i32*, i32** %8, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i32, i32* %12, align 4
  %224 = load i32*, i32** %8, align 8
  store i32 %223, i32* %224, align 4
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i32*, i32** %9, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load i32, i32* %13, align 4
  %230 = load i32*, i32** %9, align 8
  store i32 %229, i32* %230, align 4
  br label %231

231:                                              ; preds = %228, %225
  %232 = load i32*, i32** %10, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = load i32, i32* %14, align 4
  %236 = load i32*, i32** %10, align 8
  store i32 %235, i32* %236, align 4
  br label %237

237:                                              ; preds = %234, %231
  ret void
}

declare dso_local i32* @XRRGetScreenResourcesCurrent(i32, i32) #1

declare dso_local %struct.TYPE_17__* @XRRGetCrtcInfo(i32, i32*, i32) #1

declare dso_local %struct.TYPE_16__* @getModeInfo(i32*, i32) #1

declare dso_local i32 @XRRFreeCrtcInfo(%struct.TYPE_17__*) #1

declare dso_local i32 @XRRFreeScreenResources(i32*) #1

declare dso_local i32 @DisplayWidth(i32, i32) #1

declare dso_local i32 @DisplayHeight(i32, i32) #1

declare dso_local i64 @_glfwGetWindowPropertyX11(i32, i64, i32, i8**) #1

declare dso_local i32 @XFree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

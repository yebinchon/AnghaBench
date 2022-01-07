; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_visemul.c_pmul.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_visemul.c_pmul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpustate = type { i32 }
%struct.pt_regs = type { i32 }

@FPUSTATE = common dso_local global %struct.fpustate* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i32, i32)* @pmul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmul(%struct.pt_regs* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fpustate*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %33 = load %struct.fpustate*, %struct.fpustate** @FPUSTATE, align 8
  store %struct.fpustate* %33, %struct.fpustate** %7, align 8
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %272 [
    i32 130, label %35
    i32 131, label %90
    i32 132, label %90
    i32 134, label %147
    i32 133, label %147
    i32 129, label %209
    i32 128, label %209
  ]

35:                                               ; preds = %3
  %36 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @RS1(i32 %37)
  %39 = call i64 @fps_regval(%struct.fpustate* %36, i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @RS2(i32 %41)
  %43 = call i64 @fpd_regval(%struct.fpustate* %40, i32 %42)
  store i64 %43, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %44

44:                                               ; preds = %81, %35
  %45 = load i64, i64* %11, align 8
  %46 = icmp ult i64 %45, 4
  br i1 %46, label %47, label %84

47:                                               ; preds = %44
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %11, align 8
  %50 = mul i64 %49, 8
  %51 = lshr i64 %48, %50
  %52 = and i64 %51, 255
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %12, align 4
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %11, align 8
  %56 = mul i64 %55, 16
  %57 = lshr i64 %54, %56
  %58 = and i64 %57, 65535
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = mul nsw i32 %60, %61
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = and i32 %63, 16776960
  %65 = ashr i32 %64, 8
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %14, align 4
  %67 = and i32 %66, 128
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %47
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %69, %47
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = and i64 %74, 65535
  %76 = load i64, i64* %11, align 8
  %77 = mul i64 %76, 16
  %78 = shl i64 %75, %77
  %79 = load i64, i64* %10, align 8
  %80 = or i64 %79, %78
  store i64 %80, i64* %10, align 8
  br label %81

81:                                               ; preds = %72
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %11, align 8
  br label %44

84:                                               ; preds = %44
  %85 = load i64, i64* %10, align 8
  %86 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @RD(i32 %87)
  %89 = call i64* @fpd_regaddr(%struct.fpustate* %86, i32 %88)
  store i64 %85, i64* %89, align 8
  br label %272

90:                                               ; preds = %3, %3
  %91 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @RS1(i32 %92)
  %94 = call i64 @fps_regval(%struct.fpustate* %91, i32 %93)
  store i64 %94, i64* %8, align 8
  %95 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @RS2(i32 %96)
  %98 = call i64 @fps_regval(%struct.fpustate* %95, i32 %97)
  store i64 %98, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %100, 131
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 16, i32 0
  %104 = zext i32 %103 to i64
  %105 = lshr i64 %99, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %17, align 4
  store i64 0, i64* %16, align 8
  br label %107

107:                                              ; preds = %138, %90
  %108 = load i64, i64* %16, align 8
  %109 = icmp ult i64 %108, 4
  br i1 %109, label %110, label %141

110:                                              ; preds = %107
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* %16, align 8
  %113 = mul i64 %112, 8
  %114 = lshr i64 %111, %113
  %115 = and i64 %114, 255
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %17, align 4
  %119 = mul nsw i32 %117, %118
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %19, align 4
  %121 = and i32 %120, 16776960
  %122 = ashr i32 %121, 8
  store i32 %122, i32* %20, align 4
  %123 = load i32, i32* %19, align 4
  %124 = and i32 %123, 128
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %110
  %127 = load i32, i32* %20, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %20, align 4
  br label %129

129:                                              ; preds = %126, %110
  %130 = load i32, i32* %20, align 4
  %131 = sext i32 %130 to i64
  %132 = and i64 %131, 65535
  %133 = load i64, i64* %16, align 8
  %134 = mul i64 %133, 16
  %135 = shl i64 %132, %134
  %136 = load i64, i64* %10, align 8
  %137 = or i64 %136, %135
  store i64 %137, i64* %10, align 8
  br label %138

138:                                              ; preds = %129
  %139 = load i64, i64* %16, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %16, align 8
  br label %107

141:                                              ; preds = %107
  %142 = load i64, i64* %10, align 8
  %143 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @RD(i32 %144)
  %146 = call i64* @fpd_regaddr(%struct.fpustate* %143, i32 %145)
  store i64 %142, i64* %146, align 8
  br label %272

147:                                              ; preds = %3, %3
  %148 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @RS1(i32 %149)
  %151 = call i64 @fpd_regval(%struct.fpustate* %148, i32 %150)
  store i64 %151, i64* %8, align 8
  %152 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @RS2(i32 %153)
  %155 = call i64 @fpd_regval(%struct.fpustate* %152, i32 %154)
  store i64 %155, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %156 = load i32, i32* %6, align 4
  %157 = icmp eq i32 %156, 134
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 8, i32 0
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %22, align 8
  store i64 0, i64* %21, align 8
  br label %161

161:                                              ; preds = %200, %147
  %162 = load i64, i64* %21, align 8
  %163 = icmp ult i64 %162, 4
  br i1 %163, label %164, label %203

164:                                              ; preds = %161
  %165 = load i64, i64* %8, align 8
  %166 = load i64, i64* %21, align 8
  %167 = mul i64 16, %166
  %168 = load i64, i64* %22, align 8
  %169 = add i64 %167, %168
  %170 = lshr i64 %165, %169
  %171 = and i64 %170, 255
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %23, align 4
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* %21, align 8
  %175 = mul i64 16, %174
  %176 = lshr i64 %173, %175
  %177 = and i64 %176, 65535
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %24, align 4
  %179 = load i32, i32* %23, align 4
  %180 = load i32, i32* %24, align 4
  %181 = mul nsw i32 %179, %180
  store i32 %181, i32* %25, align 4
  %182 = load i32, i32* %25, align 4
  %183 = and i32 %182, 16776960
  %184 = ashr i32 %183, 8
  store i32 %184, i32* %26, align 4
  %185 = load i32, i32* %25, align 4
  %186 = and i32 %185, 128
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %164
  %189 = load i32, i32* %26, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %26, align 4
  br label %191

191:                                              ; preds = %188, %164
  %192 = load i32, i32* %26, align 4
  %193 = sext i32 %192 to i64
  %194 = and i64 %193, 65535
  %195 = load i64, i64* %21, align 8
  %196 = mul i64 %195, 16
  %197 = shl i64 %194, %196
  %198 = load i64, i64* %10, align 8
  %199 = or i64 %198, %197
  store i64 %199, i64* %10, align 8
  br label %200

200:                                              ; preds = %191
  %201 = load i64, i64* %21, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %21, align 8
  br label %161

203:                                              ; preds = %161
  %204 = load i64, i64* %10, align 8
  %205 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %206 = load i32, i32* %5, align 4
  %207 = call i32 @RD(i32 %206)
  %208 = call i64* @fpd_regaddr(%struct.fpustate* %205, i32 %207)
  store i64 %204, i64* %208, align 8
  br label %272

209:                                              ; preds = %3, %3
  %210 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %211 = load i32, i32* %5, align 4
  %212 = call i32 @RS1(i32 %211)
  %213 = call i64 @fps_regval(%struct.fpustate* %210, i32 %212)
  store i64 %213, i64* %8, align 8
  %214 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %215 = load i32, i32* %5, align 4
  %216 = call i32 @RS2(i32 %215)
  %217 = call i64 @fps_regval(%struct.fpustate* %214, i32 %216)
  store i64 %217, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %218 = load i32, i32* %6, align 4
  %219 = icmp eq i32 %218, 129
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i32 8, i32 0
  %222 = sext i32 %221 to i64
  store i64 %222, i64* %28, align 8
  store i64 0, i64* %27, align 8
  br label %223

223:                                              ; preds = %263, %209
  %224 = load i64, i64* %27, align 8
  %225 = icmp ult i64 %224, 2
  br i1 %225, label %226, label %266

226:                                              ; preds = %223
  %227 = load i64, i64* %8, align 8
  %228 = load i64, i64* %27, align 8
  %229 = mul i64 16, %228
  %230 = load i64, i64* %28, align 8
  %231 = add i64 %229, %230
  %232 = lshr i64 %227, %231
  %233 = and i64 %232, 255
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %29, align 4
  %235 = load i64, i64* %9, align 8
  %236 = load i64, i64* %27, align 8
  %237 = mul i64 16, %236
  %238 = lshr i64 %235, %237
  %239 = and i64 %238, 65535
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %30, align 4
  %241 = load i32, i32* %29, align 4
  %242 = load i32, i32* %30, align 4
  %243 = mul nsw i32 %241, %242
  store i32 %243, i32* %31, align 4
  %244 = load i32, i32* %31, align 4
  %245 = and i32 %244, 16776960
  %246 = ashr i32 %245, 8
  store i32 %246, i32* %32, align 4
  %247 = load i32, i32* %31, align 4
  %248 = and i32 %247, 128
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %226
  %251 = load i32, i32* %32, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %32, align 4
  br label %253

253:                                              ; preds = %250, %226
  %254 = load i32, i32* %32, align 4
  %255 = sext i32 %254 to i64
  %256 = and i64 %255, 65535
  %257 = load i64, i64* %27, align 8
  %258 = mul i64 %257, 32
  %259 = add i64 %258, 7
  %260 = shl i64 %256, %259
  %261 = load i64, i64* %10, align 8
  %262 = or i64 %261, %260
  store i64 %262, i64* %10, align 8
  br label %263

263:                                              ; preds = %253
  %264 = load i64, i64* %27, align 8
  %265 = add i64 %264, 1
  store i64 %265, i64* %27, align 8
  br label %223

266:                                              ; preds = %223
  %267 = load i64, i64* %10, align 8
  %268 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %269 = load i32, i32* %5, align 4
  %270 = call i32 @RD(i32 %269)
  %271 = call i64* @fpd_regaddr(%struct.fpustate* %268, i32 %270)
  store i64 %267, i64* %271, align 8
  br label %272

272:                                              ; preds = %3, %266, %203, %141, %84
  ret void
}

declare dso_local i64 @fps_regval(%struct.fpustate*, i32) #1

declare dso_local i32 @RS1(i32) #1

declare dso_local i64 @fpd_regval(%struct.fpustate*, i32) #1

declare dso_local i32 @RS2(i32) #1

declare dso_local i64* @fpd_regaddr(%struct.fpustate*, i32) #1

declare dso_local i32 @RD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

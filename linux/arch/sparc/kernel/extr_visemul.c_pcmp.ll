; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_visemul.c_pcmp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_visemul.c_pcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpustate = type { i32 }
%struct.pt_regs = type { i32 }

@FPUSTATE = common dso_local global %struct.fpustate* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i32, i32)* @pcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmp(%struct.pt_regs* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fpustate*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %28 = load %struct.fpustate*, %struct.fpustate** @FPUSTATE, align 8
  store %struct.fpustate* %28, %struct.fpustate** %7, align 8
  %29 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @RS1(i32 %30)
  %32 = call i64 @fpd_regval(%struct.fpustate* %29, i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @RS2(i32 %34)
  %36 = call i64 @fpd_regval(%struct.fpustate* %33, i32 %35)
  store i64 %36, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %278 [
    i32 133, label %38
    i32 132, label %68
    i32 131, label %98
    i32 130, label %128
    i32 129, label %158
    i32 128, label %188
    i32 135, label %218
    i32 134, label %248
  ]

38:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %39

39:                                               ; preds = %64, %38
  %40 = load i64, i64* %11, align 8
  %41 = icmp ult i64 %40, 4
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %11, align 8
  %45 = mul i64 %44, 16
  %46 = lshr i64 %43, %45
  %47 = and i64 %46, 65535
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %11, align 8
  %50 = mul i64 %49, 16
  %51 = lshr i64 %48, %50
  %52 = and i64 %51, 65535
  store i64 %52, i64* %13, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %13, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %42
  %57 = load i64, i64* %11, align 8
  %58 = trunc i64 %57 to i32
  %59 = ashr i32 8, %58
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %10, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %10, align 8
  br label %63

63:                                               ; preds = %56, %42
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %39

67:                                               ; preds = %39
  br label %278

68:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %69

69:                                               ; preds = %94, %68
  %70 = load i64, i64* %11, align 8
  %71 = icmp ult i64 %70, 2
  br i1 %71, label %72, label %97

72:                                               ; preds = %69
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %11, align 8
  %75 = mul i64 %74, 32
  %76 = lshr i64 %73, %75
  %77 = and i64 %76, 4294967295
  store i64 %77, i64* %14, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %11, align 8
  %80 = mul i64 %79, 32
  %81 = lshr i64 %78, %80
  %82 = and i64 %81, 4294967295
  store i64 %82, i64* %15, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* %15, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %72
  %87 = load i64, i64* %11, align 8
  %88 = trunc i64 %87 to i32
  %89 = ashr i32 2, %88
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %10, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %10, align 8
  br label %93

93:                                               ; preds = %86, %72
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %11, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %11, align 8
  br label %69

97:                                               ; preds = %69
  br label %278

98:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %99

99:                                               ; preds = %124, %98
  %100 = load i64, i64* %11, align 8
  %101 = icmp ult i64 %100, 4
  br i1 %101, label %102, label %127

102:                                              ; preds = %99
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %11, align 8
  %105 = mul i64 %104, 16
  %106 = lshr i64 %103, %105
  %107 = and i64 %106, 65535
  store i64 %107, i64* %16, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* %11, align 8
  %110 = mul i64 %109, 16
  %111 = lshr i64 %108, %110
  %112 = and i64 %111, 65535
  store i64 %112, i64* %17, align 8
  %113 = load i64, i64* %16, align 8
  %114 = load i64, i64* %17, align 8
  %115 = icmp ule i64 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %102
  %117 = load i64, i64* %11, align 8
  %118 = trunc i64 %117 to i32
  %119 = ashr i32 8, %118
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %10, align 8
  %122 = or i64 %121, %120
  store i64 %122, i64* %10, align 8
  br label %123

123:                                              ; preds = %116, %102
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %11, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %11, align 8
  br label %99

127:                                              ; preds = %99
  br label %278

128:                                              ; preds = %3
  store i64 0, i64* %11, align 8
  br label %129

129:                                              ; preds = %154, %128
  %130 = load i64, i64* %11, align 8
  %131 = icmp ult i64 %130, 2
  br i1 %131, label %132, label %157

132:                                              ; preds = %129
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* %11, align 8
  %135 = mul i64 %134, 32
  %136 = lshr i64 %133, %135
  %137 = and i64 %136, 4294967295
  store i64 %137, i64* %18, align 8
  %138 = load i64, i64* %9, align 8
  %139 = load i64, i64* %11, align 8
  %140 = mul i64 %139, 32
  %141 = lshr i64 %138, %140
  %142 = and i64 %141, 4294967295
  store i64 %142, i64* %19, align 8
  %143 = load i64, i64* %18, align 8
  %144 = load i64, i64* %19, align 8
  %145 = icmp ule i64 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %132
  %147 = load i64, i64* %11, align 8
  %148 = trunc i64 %147 to i32
  %149 = ashr i32 2, %148
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* %10, align 8
  %152 = or i64 %151, %150
  store i64 %152, i64* %10, align 8
  br label %153

153:                                              ; preds = %146, %132
  br label %154

154:                                              ; preds = %153
  %155 = load i64, i64* %11, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %11, align 8
  br label %129

157:                                              ; preds = %129
  br label %278

158:                                              ; preds = %3
  store i64 0, i64* %11, align 8
  br label %159

159:                                              ; preds = %184, %158
  %160 = load i64, i64* %11, align 8
  %161 = icmp ult i64 %160, 4
  br i1 %161, label %162, label %187

162:                                              ; preds = %159
  %163 = load i64, i64* %8, align 8
  %164 = load i64, i64* %11, align 8
  %165 = mul i64 %164, 16
  %166 = lshr i64 %163, %165
  %167 = and i64 %166, 65535
  store i64 %167, i64* %20, align 8
  %168 = load i64, i64* %9, align 8
  %169 = load i64, i64* %11, align 8
  %170 = mul i64 %169, 16
  %171 = lshr i64 %168, %170
  %172 = and i64 %171, 65535
  store i64 %172, i64* %21, align 8
  %173 = load i64, i64* %20, align 8
  %174 = load i64, i64* %21, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %162
  %177 = load i64, i64* %11, align 8
  %178 = trunc i64 %177 to i32
  %179 = ashr i32 8, %178
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* %10, align 8
  %182 = or i64 %181, %180
  store i64 %182, i64* %10, align 8
  br label %183

183:                                              ; preds = %176, %162
  br label %184

184:                                              ; preds = %183
  %185 = load i64, i64* %11, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %11, align 8
  br label %159

187:                                              ; preds = %159
  br label %278

188:                                              ; preds = %3
  store i64 0, i64* %11, align 8
  br label %189

189:                                              ; preds = %214, %188
  %190 = load i64, i64* %11, align 8
  %191 = icmp ult i64 %190, 2
  br i1 %191, label %192, label %217

192:                                              ; preds = %189
  %193 = load i64, i64* %8, align 8
  %194 = load i64, i64* %11, align 8
  %195 = mul i64 %194, 32
  %196 = lshr i64 %193, %195
  %197 = and i64 %196, 4294967295
  store i64 %197, i64* %22, align 8
  %198 = load i64, i64* %9, align 8
  %199 = load i64, i64* %11, align 8
  %200 = mul i64 %199, 32
  %201 = lshr i64 %198, %200
  %202 = and i64 %201, 4294967295
  store i64 %202, i64* %23, align 8
  %203 = load i64, i64* %22, align 8
  %204 = load i64, i64* %23, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %192
  %207 = load i64, i64* %11, align 8
  %208 = trunc i64 %207 to i32
  %209 = ashr i32 2, %208
  %210 = sext i32 %209 to i64
  %211 = load i64, i64* %10, align 8
  %212 = or i64 %211, %210
  store i64 %212, i64* %10, align 8
  br label %213

213:                                              ; preds = %206, %192
  br label %214

214:                                              ; preds = %213
  %215 = load i64, i64* %11, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %11, align 8
  br label %189

217:                                              ; preds = %189
  br label %278

218:                                              ; preds = %3
  store i64 0, i64* %11, align 8
  br label %219

219:                                              ; preds = %244, %218
  %220 = load i64, i64* %11, align 8
  %221 = icmp ult i64 %220, 4
  br i1 %221, label %222, label %247

222:                                              ; preds = %219
  %223 = load i64, i64* %8, align 8
  %224 = load i64, i64* %11, align 8
  %225 = mul i64 %224, 16
  %226 = lshr i64 %223, %225
  %227 = and i64 %226, 65535
  store i64 %227, i64* %24, align 8
  %228 = load i64, i64* %9, align 8
  %229 = load i64, i64* %11, align 8
  %230 = mul i64 %229, 16
  %231 = lshr i64 %228, %230
  %232 = and i64 %231, 65535
  store i64 %232, i64* %25, align 8
  %233 = load i64, i64* %24, align 8
  %234 = load i64, i64* %25, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %243

236:                                              ; preds = %222
  %237 = load i64, i64* %11, align 8
  %238 = trunc i64 %237 to i32
  %239 = ashr i32 8, %238
  %240 = sext i32 %239 to i64
  %241 = load i64, i64* %10, align 8
  %242 = or i64 %241, %240
  store i64 %242, i64* %10, align 8
  br label %243

243:                                              ; preds = %236, %222
  br label %244

244:                                              ; preds = %243
  %245 = load i64, i64* %11, align 8
  %246 = add i64 %245, 1
  store i64 %246, i64* %11, align 8
  br label %219

247:                                              ; preds = %219
  br label %278

248:                                              ; preds = %3
  store i64 0, i64* %11, align 8
  br label %249

249:                                              ; preds = %274, %248
  %250 = load i64, i64* %11, align 8
  %251 = icmp ult i64 %250, 2
  br i1 %251, label %252, label %277

252:                                              ; preds = %249
  %253 = load i64, i64* %8, align 8
  %254 = load i64, i64* %11, align 8
  %255 = mul i64 %254, 32
  %256 = lshr i64 %253, %255
  %257 = and i64 %256, 4294967295
  store i64 %257, i64* %26, align 8
  %258 = load i64, i64* %9, align 8
  %259 = load i64, i64* %11, align 8
  %260 = mul i64 %259, 32
  %261 = lshr i64 %258, %260
  %262 = and i64 %261, 4294967295
  store i64 %262, i64* %27, align 8
  %263 = load i64, i64* %26, align 8
  %264 = load i64, i64* %27, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %273

266:                                              ; preds = %252
  %267 = load i64, i64* %11, align 8
  %268 = trunc i64 %267 to i32
  %269 = ashr i32 2, %268
  %270 = sext i32 %269 to i64
  %271 = load i64, i64* %10, align 8
  %272 = or i64 %271, %270
  store i64 %272, i64* %10, align 8
  br label %273

273:                                              ; preds = %266, %252
  br label %274

274:                                              ; preds = %273
  %275 = load i64, i64* %11, align 8
  %276 = add i64 %275, 1
  store i64 %276, i64* %11, align 8
  br label %249

277:                                              ; preds = %249
  br label %278

278:                                              ; preds = %3, %277, %247, %217, %187, %157, %127, %97, %67
  %279 = load i32, i32* %5, align 4
  %280 = call i32 @RD(i32 %279)
  %281 = call i32 @maybe_flush_windows(i32 0, i32 0, i32 %280, i32 0)
  %282 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %283 = load i64, i64* %10, align 8
  %284 = load i32, i32* %5, align 4
  %285 = call i32 @RD(i32 %284)
  %286 = call i32 @store_reg(%struct.pt_regs* %282, i64 %283, i32 %285)
  ret void
}

declare dso_local i64 @fpd_regval(%struct.fpustate*, i32) #1

declare dso_local i32 @RS1(i32) #1

declare dso_local i32 @RS2(i32) #1

declare dso_local i32 @maybe_flush_windows(i32, i32, i32, i32) #1

declare dso_local i32 @RD(i32) #1

declare dso_local i32 @store_reg(%struct.pt_regs*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

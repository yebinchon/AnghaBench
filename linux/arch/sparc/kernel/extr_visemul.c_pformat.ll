; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_visemul.c_pformat.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_visemul.c_pformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpustate = type { i32 }
%struct.pt_regs = type { i32 }
%struct.TYPE_2__ = type { i64* }

@FPUSTATE = common dso_local global %struct.fpustate* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i32, i32)* @pformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pformat(%struct.pt_regs* %0, i32 %1, i32 %2) #0 {
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
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %31 = load %struct.fpustate*, %struct.fpustate** @FPUSTATE, align 8
  store %struct.fpustate* %31, %struct.fpustate** %7, align 8
  %32 = call %struct.TYPE_2__* (...) @current_thread_info()
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = lshr i64 %37, 3
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 131
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 15, i32 31
  %43 = sext i32 %42 to i64
  %44 = and i64 %38, %43
  store i64 %44, i64* %11, align 8
  %45 = load i32, i32* %6, align 4
  switch i32 %45, label %278 [
    i32 131, label %46
    i32 130, label %96
    i32 129, label %151
    i32 132, label %200
    i32 128, label %233
  ]

46:                                               ; preds = %3
  %47 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @RS2(i32 %48)
  %50 = call i64 @fpd_regval(%struct.fpustate* %47, i32 %49)
  store i64 %50, i64* %9, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %51

51:                                               ; preds = %87, %46
  %52 = load i64, i64* %13, align 8
  %53 = icmp ult i64 %52, 4
  br i1 %53, label %54, label %90

54:                                               ; preds = %51
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %13, align 8
  %57 = mul i64 %56, 16
  %58 = lshr i64 %55, %57
  %59 = and i64 %58, 65535
  store i64 %59, i64* %15, align 8
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* %11, align 8
  %62 = shl i64 %60, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = ashr i32 %64, 7
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  br label %77

69:                                               ; preds = %54
  %70 = load i32, i32* %17, align 4
  %71 = icmp sgt i32 %70, 255
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %75

73:                                               ; preds = %69
  %74 = load i32, i32* %17, align 4
  br label %75

75:                                               ; preds = %73, %72
  %76 = phi i32 [ 255, %72 ], [ %74, %73 ]
  br label %77

77:                                               ; preds = %75, %68
  %78 = phi i32 [ 0, %68 ], [ %76, %75 ]
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i64, i64* %13, align 8
  %81 = mul i64 8, %80
  %82 = trunc i64 %81 to i32
  %83 = shl i32 %79, %82
  %84 = zext i32 %83 to i64
  %85 = load i64, i64* %12, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %12, align 8
  br label %87

87:                                               ; preds = %77
  %88 = load i64, i64* %13, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %13, align 8
  br label %51

90:                                               ; preds = %51
  %91 = load i64, i64* %12, align 8
  %92 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @RD(i32 %93)
  %95 = call i64* @fps_regaddr(%struct.fpustate* %92, i32 %94)
  store i64 %91, i64* %95, align 8
  br label %278

96:                                               ; preds = %3
  %97 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @RS1(i32 %98)
  %100 = call i64 @fpd_regval(%struct.fpustate* %97, i32 %99)
  store i64 %100, i64* %8, align 8
  %101 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @RS2(i32 %102)
  %104 = call i64 @fpd_regval(%struct.fpustate* %101, i32 %103)
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* %8, align 8
  %106 = shl i64 %105, 8
  %107 = and i64 %106, -1095216660736
  store i64 %107, i64* %12, align 8
  store i64 0, i64* %18, align 8
  br label %108

108:                                              ; preds = %142, %96
  %109 = load i64, i64* %18, align 8
  %110 = icmp ult i64 %109, 2
  br i1 %110, label %111, label %145

111:                                              ; preds = %108
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* %18, align 8
  %114 = mul i64 %113, 32
  %115 = lshr i64 %112, %114
  store i64 %115, i64* %20, align 8
  %116 = load i64, i64* %20, align 8
  %117 = load i64, i64* %11, align 8
  %118 = shl i64 %116, %117
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %21, align 4
  %120 = load i32, i32* %21, align 4
  %121 = ashr i32 %120, 23
  store i32 %121, i32* %22, align 4
  %122 = load i32, i32* %22, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %111
  br label %133

125:                                              ; preds = %111
  %126 = load i32, i32* %22, align 4
  %127 = icmp sgt i32 %126, 255
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %131

129:                                              ; preds = %125
  %130 = load i32, i32* %22, align 4
  br label %131

131:                                              ; preds = %129, %128
  %132 = phi i32 [ 255, %128 ], [ %130, %129 ]
  br label %133

133:                                              ; preds = %131, %124
  %134 = phi i32 [ 0, %124 ], [ %132, %131 ]
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %19, align 8
  %136 = load i64, i64* %19, align 8
  %137 = load i64, i64* %18, align 8
  %138 = mul i64 32, %137
  %139 = shl i64 %136, %138
  %140 = load i64, i64* %12, align 8
  %141 = or i64 %140, %139
  store i64 %141, i64* %12, align 8
  br label %142

142:                                              ; preds = %133
  %143 = load i64, i64* %18, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %18, align 8
  br label %108

145:                                              ; preds = %108
  %146 = load i64, i64* %12, align 8
  %147 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @RD(i32 %148)
  %150 = call i64* @fpd_regaddr(%struct.fpustate* %147, i32 %149)
  store i64 %146, i64* %150, align 8
  br label %278

151:                                              ; preds = %3
  %152 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @RS2(i32 %153)
  %155 = call i64 @fpd_regval(%struct.fpustate* %152, i32 %154)
  store i64 %155, i64* %9, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %23, align 8
  br label %156

156:                                              ; preds = %191, %151
  %157 = load i64, i64* %23, align 8
  %158 = icmp ult i64 %157, 2
  br i1 %158, label %159, label %194

159:                                              ; preds = %156
  %160 = load i64, i64* %9, align 8
  %161 = load i64, i64* %23, align 8
  %162 = mul i64 %161, 32
  %163 = lshr i64 %160, %162
  store i64 %163, i64* %25, align 8
  %164 = load i64, i64* %25, align 8
  %165 = load i64, i64* %11, align 8
  %166 = shl i64 %164, %165
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %26, align 4
  %168 = load i32, i32* %26, align 4
  %169 = ashr i32 %168, 16
  store i32 %169, i32* %27, align 4
  %170 = load i32, i32* %27, align 4
  %171 = icmp slt i32 %170, -32768
  br i1 %171, label %172, label %173

172:                                              ; preds = %159
  br label %181

173:                                              ; preds = %159
  %174 = load i32, i32* %27, align 4
  %175 = icmp sgt i32 %174, 32767
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  br label %179

177:                                              ; preds = %173
  %178 = load i32, i32* %27, align 4
  br label %179

179:                                              ; preds = %177, %176
  %180 = phi i32 [ 32767, %176 ], [ %178, %177 ]
  br label %181

181:                                              ; preds = %179, %172
  %182 = phi i32 [ -32768, %172 ], [ %180, %179 ]
  %183 = sext i32 %182 to i64
  store i64 %183, i64* %24, align 8
  %184 = load i64, i64* %24, align 8
  %185 = and i64 %184, 65535
  %186 = load i64, i64* %23, align 8
  %187 = mul i64 %186, 16
  %188 = shl i64 %185, %187
  %189 = load i64, i64* %12, align 8
  %190 = or i64 %189, %188
  store i64 %190, i64* %12, align 8
  br label %191

191:                                              ; preds = %181
  %192 = load i64, i64* %23, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %23, align 8
  br label %156

194:                                              ; preds = %156
  %195 = load i64, i64* %12, align 8
  %196 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %197 = load i32, i32* %5, align 4
  %198 = call i32 @RD(i32 %197)
  %199 = call i64* @fps_regaddr(%struct.fpustate* %196, i32 %198)
  store i64 %195, i64* %199, align 8
  br label %278

200:                                              ; preds = %3
  %201 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %202 = load i32, i32* %5, align 4
  %203 = call i32 @RS2(i32 %202)
  %204 = call i64 @fps_regval(%struct.fpustate* %201, i32 %203)
  store i64 %204, i64* %9, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %28, align 8
  br label %205

205:                                              ; preds = %224, %200
  %206 = load i64, i64* %28, align 8
  %207 = icmp ult i64 %206, 4
  br i1 %207, label %208, label %227

208:                                              ; preds = %205
  %209 = load i64, i64* %9, align 8
  %210 = load i64, i64* %28, align 8
  %211 = mul i64 %210, 8
  %212 = lshr i64 %209, %211
  %213 = and i64 %212, 255
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %30, align 4
  %215 = load i32, i32* %30, align 4
  %216 = shl i32 %215, 4
  %217 = sext i32 %216 to i64
  store i64 %217, i64* %29, align 8
  %218 = load i64, i64* %29, align 8
  %219 = load i64, i64* %28, align 8
  %220 = mul i64 %219, 16
  %221 = shl i64 %218, %220
  %222 = load i64, i64* %12, align 8
  %223 = or i64 %222, %221
  store i64 %223, i64* %12, align 8
  br label %224

224:                                              ; preds = %208
  %225 = load i64, i64* %28, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %28, align 8
  br label %205

227:                                              ; preds = %205
  %228 = load i64, i64* %12, align 8
  %229 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %230 = load i32, i32* %5, align 4
  %231 = call i32 @RD(i32 %230)
  %232 = call i64* @fpd_regaddr(%struct.fpustate* %229, i32 %231)
  store i64 %228, i64* %232, align 8
  br label %278

233:                                              ; preds = %3
  %234 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %235 = load i32, i32* %5, align 4
  %236 = call i32 @RS1(i32 %235)
  %237 = call i64 @fps_regval(%struct.fpustate* %234, i32 %236)
  store i64 %237, i64* %8, align 8
  %238 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %239 = load i32, i32* %5, align 4
  %240 = call i32 @RS2(i32 %239)
  %241 = call i64 @fps_regval(%struct.fpustate* %238, i32 %240)
  store i64 %241, i64* %9, align 8
  %242 = load i64, i64* %9, align 8
  %243 = and i64 %242, 255
  %244 = shl i64 %243, 0
  %245 = load i64, i64* %8, align 8
  %246 = and i64 %245, 255
  %247 = shl i64 %246, 8
  %248 = or i64 %244, %247
  %249 = load i64, i64* %9, align 8
  %250 = and i64 %249, 65280
  %251 = shl i64 %250, 8
  %252 = or i64 %248, %251
  %253 = load i64, i64* %8, align 8
  %254 = and i64 %253, 65280
  %255 = shl i64 %254, 16
  %256 = or i64 %252, %255
  %257 = load i64, i64* %9, align 8
  %258 = and i64 %257, 16711680
  %259 = shl i64 %258, 16
  %260 = or i64 %256, %259
  %261 = load i64, i64* %8, align 8
  %262 = and i64 %261, 16711680
  %263 = shl i64 %262, 24
  %264 = or i64 %260, %263
  %265 = load i64, i64* %9, align 8
  %266 = and i64 %265, 4278190080
  %267 = shl i64 %266, 24
  %268 = or i64 %264, %267
  %269 = load i64, i64* %8, align 8
  %270 = and i64 %269, 4278190080
  %271 = shl i64 %270, 32
  %272 = or i64 %268, %271
  store i64 %272, i64* %12, align 8
  %273 = load i64, i64* %12, align 8
  %274 = load %struct.fpustate*, %struct.fpustate** %7, align 8
  %275 = load i32, i32* %5, align 4
  %276 = call i32 @RD(i32 %275)
  %277 = call i64* @fpd_regaddr(%struct.fpustate* %274, i32 %276)
  store i64 %273, i64* %277, align 8
  br label %278

278:                                              ; preds = %3, %233, %227, %194, %145, %90
  ret void
}

declare dso_local %struct.TYPE_2__* @current_thread_info(...) #1

declare dso_local i64 @fpd_regval(%struct.fpustate*, i32) #1

declare dso_local i32 @RS2(i32) #1

declare dso_local i64* @fps_regaddr(%struct.fpustate*, i32) #1

declare dso_local i32 @RD(i32) #1

declare dso_local i32 @RS1(i32) #1

declare dso_local i64* @fpd_regaddr(%struct.fpustate*, i32) #1

declare dso_local i64 @fps_regval(%struct.fpustate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

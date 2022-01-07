; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cyrix.c_init_cyrix.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cyrix.c_init_cyrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i8*, i8, i8, i32, i32 }

@X86_FEATURE_CXMMX = common dso_local global i32 0, align 4
@Cx86_dir0_msb = common dso_local global i8 0, align 1
@Cx486_name = common dso_local global i8** null, align 8
@Cx486D_name = common dso_local global i8** null, align 8
@Cx486S_name = common dso_local global i8** null, align 8
@cyrix_model_mult1 = common dso_local global i8* null, align 8
@Cx86_cb = common dso_local global i8* null, align 8
@X86_FEATURE_CYRIX_ARR = common dso_local global i32 0, align 4
@X86_BUG_COMA = common dso_local global i32 0, align 4
@CX86_CCR7 = common dso_local global i32 0, align 4
@cyrix_model_mult2 = common dso_local global i8* null, align 8
@X86_FEATURE_FPU = common dso_local global i32 0, align 4
@Cx86_model = common dso_local global i32* null, align 8
@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_CYRIX_5510 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_CYRIX_5520 = common dso_local global i32 0, align 4
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_CYRIX = common dso_local global i32 0, align 4
@isa_dma_bridge_buggy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @init_cyrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_cyrix(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  store i8 0, i8* %6, align 1
  %10 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %11 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %13 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %14 = call i32 @clear_cpu_cap(%struct.cpuinfo_x86* %13, i32 31)
  %15 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %16 = call i64 @test_cpu_cap(%struct.cpuinfo_x86* %15, i32 56)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %20 = call i32 @clear_cpu_cap(%struct.cpuinfo_x86* %19, i32 56)
  %21 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %22 = load i32, i32* @X86_FEATURE_CXMMX, align 4
  %23 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = call i32 @do_cyrix_devid(i8* %3, i8* %6)
  %26 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %27 = call i32 @check_cx686_slop(%struct.cpuinfo_x86* %26)
  %28 = load i8, i8* %3, align 1
  %29 = zext i8 %28 to i32
  %30 = ashr i32 %29, 4
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %4, align 1
  store i8 %31, i8* @Cx86_dir0_msb, align 1
  %32 = load i8, i8* %3, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 15
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %5, align 1
  %36 = load i8, i8* %6, align 1
  %37 = zext i8 %36 to i32
  %38 = ashr i32 %37, 4
  %39 = add nsw i32 %38, 1
  %40 = trunc i32 %39 to i8
  %41 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %42 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %41, i32 0, i32 1
  store i8 %40, i8* %42, align 8
  %43 = load i8, i8* %6, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 15
  %46 = trunc i32 %45 to i8
  %47 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %48 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %47, i32 0, i32 2
  store i8 %46, i8* %48, align 1
  %49 = load i8, i8* %4, align 1
  %50 = zext i8 %49 to i32
  switch i32 %50, label %264 [
    i32 0, label %51
    i32 1, label %59
    i32 2, label %82
    i32 3, label %94
    i32 4, label %127
    i32 11, label %127
    i32 5, label %180
    i32 15, label %245
  ]

51:                                               ; preds = %24
  %52 = load i8**, i8*** @Cx486_name, align 8
  %53 = load i8, i8* %5, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 7
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %52, i64 %56
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %8, align 8
  br label %265

59:                                               ; preds = %24
  %60 = load i8, i8* %5, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i8**, i8*** @Cx486D_name, align 8
  %66 = load i8, i8* %5, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 5
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %65, i64 %69
  %71 = load i8*, i8** %70, align 8
  br label %80

72:                                               ; preds = %59
  %73 = load i8**, i8*** @Cx486S_name, align 8
  %74 = load i8, i8* %5, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %73, i64 %77
  %79 = load i8*, i8** %78, align 8
  br label %80

80:                                               ; preds = %72, %64
  %81 = phi i8* [ %71, %64 ], [ %79, %72 ]
  store i8* %81, i8** %8, align 8
  br label %265

82:                                               ; preds = %24
  %83 = load i8*, i8** @cyrix_model_mult1, align 8
  %84 = load i8, i8* %5, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 5
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %83, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = load i8*, i8** @Cx86_cb, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  store i8 %89, i8* %91, align 1
  %92 = load i8*, i8** @Cx86_cb, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  store i8* %93, i8** %8, align 8
  br label %265

94:                                               ; preds = %24
  %95 = load i8*, i8** @Cx86_cb, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  store i8 32, i8* %96, align 1
  %97 = load i8*, i8** @cyrix_model_mult1, align 8
  %98 = load i8, i8* %5, align 1
  %99 = zext i8 %98 to i32
  %100 = and i32 %99, 5
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %97, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = load i8*, i8** @Cx86_cb, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  store i8 %103, i8* %105, align 1
  %106 = load i8, i8* %6, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp sgt i32 %107, 33
  br i1 %108, label %109, label %117

109:                                              ; preds = %94
  %110 = load i8*, i8** @Cx86_cb, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  store i8 76, i8* %111, align 1
  %112 = load i8*, i8** @Cx86_cb, align 8
  store i8* %112, i8** %8, align 8
  %113 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %114 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %113, i32 0, i32 1
  %115 = load i8, i8* %114, align 8
  %116 = add i8 %115, 1
  store i8 %116, i8* %114, align 8
  br label %120

117:                                              ; preds = %94
  %118 = load i8*, i8** @Cx86_cb, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  store i8* %119, i8** %8, align 8
  br label %120

120:                                              ; preds = %117, %109
  %121 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %122 = load i32, i32* @X86_FEATURE_CYRIX_ARR, align 4
  %123 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %121, i32 %122)
  %124 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %125 = load i32, i32* @X86_BUG_COMA, align 4
  %126 = call i32 @set_cpu_bug(%struct.cpuinfo_x86* %124, i32 %125)
  br label %265

127:                                              ; preds = %24, %24
  %128 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %129 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %128, i32 0, i32 3
  store i32 16, i32* %129, align 4
  %130 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %131 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 2
  br i1 %133, label %134, label %158

134:                                              ; preds = %127
  %135 = load i32, i32* @CX86_CCR7, align 4
  %136 = load i32, i32* @CX86_CCR7, align 4
  %137 = call i32 @getCx86(i32 %136)
  %138 = or i32 %137, 1
  %139 = call i32 @setCx86(i32 %135, i32 %138)
  %140 = load i8, i8* %6, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp sle i32 48, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %134
  %144 = load i8, i8* %6, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp sle i32 %145, 111
  br i1 %146, label %155, label %147

147:                                              ; preds = %143, %134
  %148 = load i8, i8* %6, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp sle i32 128, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = load i8, i8* %6, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp sle i32 %153, 143
  br i1 %154, label %155, label %157

155:                                              ; preds = %151, %143
  %156 = call i32 (...) @geode_configure()
  br label %157

157:                                              ; preds = %155, %151, %147
  br label %282

158:                                              ; preds = %127
  %159 = load i8, i8* %5, align 1
  %160 = zext i8 %159 to i32
  %161 = and i32 %160, 1
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 51, i32 52
  %165 = trunc i32 %164 to i8
  %166 = load i8*, i8** @Cx86_cb, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 2
  store i8 %165, i8* %167, align 1
  %168 = load i8*, i8** @Cx86_cb, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 2
  store i8* %169, i8** %8, align 8
  %170 = load i8, i8* %6, align 1
  %171 = zext i8 %170 to i32
  %172 = and i32 %171, 32
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 1, i32 2
  %176 = trunc i32 %175 to i8
  %177 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %178 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %177, i32 0, i32 1
  store i8 %176, i8* %178, align 8
  br label %179

179:                                              ; preds = %158
  br label %265

180:                                              ; preds = %24
  %181 = load i8, i8* %6, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp sgt i32 %182, 7
  br i1 %183, label %184, label %192

184:                                              ; preds = %180
  %185 = load i8, i8* %4, align 1
  %186 = add i8 %185, 1
  store i8 %186, i8* %4, align 1
  %187 = load i32, i32* @CX86_CCR7, align 4
  %188 = load i32, i32* @CX86_CCR7, align 4
  %189 = call i32 @getCx86(i32 %188)
  %190 = or i32 %189, 1
  %191 = call i32 @setCx86(i32 %187, i32 %190)
  br label %196

192:                                              ; preds = %180
  %193 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %194 = load i32, i32* @X86_BUG_COMA, align 4
  %195 = call i32 @set_cpu_bug(%struct.cpuinfo_x86* %193, i32 %194)
  br label %196

196:                                              ; preds = %192, %184
  %197 = load i8, i8* %5, align 1
  %198 = zext i8 %197 to i32
  %199 = and i32 %198, 7
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load i8, i8* %5, align 1
  %203 = zext i8 %202 to i32
  %204 = and i32 %203, 1
  %205 = icmp ne i32 %204, 0
  br label %206

206:                                              ; preds = %201, %196
  %207 = phi i1 [ true, %196 ], [ %205, %201 ]
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i32 2, i32 0
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %9, align 1
  %211 = load i8*, i8** @cyrix_model_mult2, align 8
  %212 = load i8, i8* %5, align 1
  %213 = zext i8 %212 to i32
  %214 = and i32 %213, 7
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %211, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = load i8*, i8** @Cx86_cb, align 8
  %219 = load i8, i8* %9, align 1
  %220 = zext i8 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  store i8 %217, i8* %221, align 1
  %222 = load i8*, i8** @Cx86_cb, align 8
  %223 = load i8, i8* %9, align 1
  %224 = zext i8 %223 to i32
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %222, i64 %225
  store i8* %226, i8** %8, align 8
  %227 = load i8, i8* %6, align 1
  %228 = zext i8 %227 to i32
  %229 = and i32 %228, 15
  %230 = icmp sgt i32 %229, 4
  br i1 %230, label %236, label %231

231:                                              ; preds = %206
  %232 = load i8, i8* %6, align 1
  %233 = zext i8 %232 to i32
  %234 = and i32 %233, 240
  %235 = icmp eq i32 %234, 32
  br i1 %235, label %236, label %241

236:                                              ; preds = %231, %206
  %237 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %238 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %237, i32 0, i32 1
  %239 = load i8, i8* %238, align 8
  %240 = add i8 %239, 1
  store i8 %240, i8* %238, align 8
  br label %241

241:                                              ; preds = %236, %231
  %242 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %243 = load i32, i32* @X86_FEATURE_CYRIX_ARR, align 4
  %244 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %242, i32 %243)
  br label %265

245:                                              ; preds = %24
  %246 = load i8, i8* %5, align 1
  %247 = zext i8 %246 to i32
  switch i32 %247, label %263 [
    i32 13, label %248
    i32 14, label %259
  ]

248:                                              ; preds = %245
  store i8 0, i8* %4, align 1
  %249 = load i8**, i8*** @Cx486_name, align 8
  %250 = load i32, i32* @X86_FEATURE_FPU, align 4
  %251 = call i32 @boot_cpu_has(i32 %250)
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  %254 = xor i1 %253, true
  %255 = zext i1 %254 to i32
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8*, i8** %249, i64 %256
  %258 = load i8*, i8** %257, align 8
  store i8* %258, i8** %8, align 8
  br label %263

259:                                              ; preds = %245
  store i8 0, i8* %4, align 1
  %260 = load i8**, i8*** @Cx486S_name, align 8
  %261 = getelementptr inbounds i8*, i8** %260, i64 0
  %262 = load i8*, i8** %261, align 8
  store i8* %262, i8** %8, align 8
  br label %263

263:                                              ; preds = %245, %259, %248
  br label %265

264:                                              ; preds = %24
  store i8 7, i8* %4, align 1
  br label %265

265:                                              ; preds = %264, %263, %241, %179, %120, %82, %80, %51
  %266 = load i8*, i8** %7, align 8
  %267 = load i32*, i32** @Cx86_model, align 8
  %268 = load i8, i8* %4, align 1
  %269 = zext i8 %268 to i32
  %270 = and i32 %269, 7
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %267, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @strcpy(i8* %266, i32 %273)
  %275 = load i8*, i8** %8, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %277, label %281

277:                                              ; preds = %265
  %278 = load i8*, i8** %7, align 8
  %279 = load i8*, i8** %8, align 8
  %280 = call i32 @strcat(i8* %278, i8* %279)
  br label %281

281:                                              ; preds = %277, %265
  br label %282

282:                                              ; preds = %281, %157
  ret void
}

declare dso_local i32 @clear_cpu_cap(%struct.cpuinfo_x86*, i32) #1

declare dso_local i64 @test_cpu_cap(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @set_cpu_cap(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @do_cyrix_devid(i8*, i8*) #1

declare dso_local i32 @check_cx686_slop(%struct.cpuinfo_x86*) #1

declare dso_local i32 @set_cpu_bug(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @setCx86(i32, i32) #1

declare dso_local i32 @getCx86(i32) #1

declare dso_local i32 @geode_configure(...) #1

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

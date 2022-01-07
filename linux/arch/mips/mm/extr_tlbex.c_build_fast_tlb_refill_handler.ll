; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_build_fast_tlb_refill_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_build_fast_tlb_refill_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uasm_label = type { i32 }
%struct.uasm_reloc = type { i32 }
%struct.mips_huge_tlb_info = type { i32, i32, i32 }

@check_for_high_segbits = common dso_local global i64 0, align 8
@C0_BADVADDR = common dso_local global i32 0, align 4
@pgd_reg = common dso_local global i32 0, align 4
@C0_CONTEXT = common dso_local global i32 0, align 4
@PGDIR_SHIFT = common dso_local global i32 0, align 4
@PGD_ORDER = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@label_vmalloc = common dso_local global i32 0, align 4
@PTRS_PER_PGD = common dso_local global i32 0, align 4
@PUD_SHIFT = common dso_local global i32 0, align 4
@PTRS_PER_PUD = common dso_local global i32 0, align 4
@PMD_SHIFT = common dso_local global i32 0, align 4
@PTRS_PER_PMD = common dso_local global i32 0, align 4
@cpu_has_rixi = common dso_local global i64 0, align 8
@_PAGE_GLOBAL = common dso_local global i32 0, align 4
@C0_ENTRYLO0 = common dso_local global i32 0, align 4
@C0_ENTRYLO1 = common dso_local global i32 0, align 4
@tlb_random = common dso_local global i32 0, align 4
@LOC_PTEP = common dso_local global i32 0, align 4
@_PAGE_HUGE = common dso_local global i32 0, align 4
@label_tlb_huge_update = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i32 } (i32**, %struct.uasm_label**, %struct.uasm_reloc**, i32, i32, i32)* @build_fast_tlb_refill_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i32 } @build_fast_tlb_refill_handler(i32** %0, %struct.uasm_label** %1, %struct.uasm_reloc** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mips_huge_tlb_info, align 4
  %8 = alloca i32**, align 8
  %9 = alloca %struct.uasm_label**, align 8
  %10 = alloca %struct.uasm_reloc**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca { i64, i32 }, align 8
  store i32** %0, i32*** %8, align 8
  store %struct.uasm_label** %1, %struct.uasm_label*** %9, align 8
  store %struct.uasm_reloc** %2, %struct.uasm_reloc*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %19 = getelementptr inbounds %struct.mips_huge_tlb_info, %struct.mips_huge_tlb_info* %7, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.mips_huge_tlb_info, %struct.mips_huge_tlb_info* %7, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.mips_huge_tlb_info, %struct.mips_huge_tlb_info* %7, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = load i64, i64* @check_for_high_segbits, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %6
  %25 = load i32**, i32*** %8, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @C0_BADVADDR, align 4
  %28 = call i32 (i32**, i32, i32, ...) @UASM_i_MFC0(i32** %25, i32 %26, i32 %27)
  %29 = load i32, i32* @pgd_reg, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32**, i32*** %8, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 (...) @c0_kscratch()
  %35 = load i32, i32* @pgd_reg, align 4
  %36 = call i32 (i32**, i32, i32, ...) @UASM_i_MFC0(i32** %32, i32 %33, i32 %34, i32 %35)
  br label %42

37:                                               ; preds = %24
  %38 = load i32**, i32*** %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @C0_CONTEXT, align 4
  %41 = call i32 (i32**, i32, i32, ...) @UASM_i_MFC0(i32** %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %31
  %43 = load i32, i32* %13, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32**, i32*** %8, align 8
  %47 = call i32 (...) @c0_kscratch()
  %48 = load i32, i32* %13, align 4
  %49 = call i32 (i32**, i32, i32, ...) @UASM_i_MTC0(i32** %46, i32 1, i32 %47, i32 %48)
  br label %54

50:                                               ; preds = %42
  %51 = load i32**, i32*** %8, align 8
  %52 = call i32 @scratchpad_offset(i32 0)
  %53 = call i32 @UASM_i_SW(i32** %51, i32 1, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32**, i32*** %8, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @PGDIR_SHIFT, align 4
  %58 = load i32, i32* @PGD_ORDER, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* @PAGE_SHIFT, align 4
  %61 = add nsw i32 %59, %60
  %62 = sub nsw i32 %61, 3
  %63 = call i32 @uasm_i_dsrl_safe(i32** %55, i32 1, i32 %56, i32 %62)
  %64 = load i32**, i32*** %8, align 8
  %65 = load %struct.uasm_reloc**, %struct.uasm_reloc*** %10, align 8
  %66 = load i32, i32* @label_vmalloc, align 4
  %67 = call i32 @uasm_il_bnez(i32** %64, %struct.uasm_reloc** %65, i32 1, i32 %66)
  %68 = load i32, i32* @pgd_reg, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %74

70:                                               ; preds = %54
  store i32 1, i32* %16, align 4
  %71 = load i32**, i32*** %8, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @uasm_i_dins(i32** %71, i32 %72, i32 0, i32 0, i32 23)
  br label %74

74:                                               ; preds = %70, %54
  br label %118

75:                                               ; preds = %6
  %76 = load i32, i32* @pgd_reg, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32**, i32*** %8, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 (...) @c0_kscratch()
  %82 = load i32, i32* @pgd_reg, align 4
  %83 = call i32 (i32**, i32, i32, ...) @UASM_i_MFC0(i32** %79, i32 %80, i32 %81, i32 %82)
  br label %89

84:                                               ; preds = %75
  %85 = load i32**, i32*** %8, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @C0_CONTEXT, align 4
  %88 = call i32 (i32**, i32, i32, ...) @UASM_i_MFC0(i32** %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %78
  %90 = load i32**, i32*** %8, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @C0_BADVADDR, align 4
  %93 = call i32 (i32**, i32, i32, ...) @UASM_i_MFC0(i32** %90, i32 %91, i32 %92)
  %94 = load i32, i32* %13, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i32**, i32*** %8, align 8
  %98 = call i32 (...) @c0_kscratch()
  %99 = load i32, i32* %13, align 4
  %100 = call i32 (i32**, i32, i32, ...) @UASM_i_MTC0(i32** %97, i32 1, i32 %98, i32 %99)
  br label %105

101:                                              ; preds = %89
  %102 = load i32**, i32*** %8, align 8
  %103 = call i32 @scratchpad_offset(i32 0)
  %104 = call i32 @UASM_i_SW(i32** %102, i32 1, i32 %103, i32 0)
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i32, i32* @pgd_reg, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i32**, i32*** %8, align 8
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @uasm_i_dins(i32** %109, i32 %110, i32 0, i32 0, i32 23)
  br label %112

112:                                              ; preds = %108, %105
  %113 = load i32**, i32*** %8, align 8
  %114 = load %struct.uasm_reloc**, %struct.uasm_reloc*** %10, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @label_vmalloc, align 4
  %117 = call i32 @uasm_il_bltz(i32** %113, %struct.uasm_reloc** %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %112, %74
  %119 = load i32, i32* @pgd_reg, align 4
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  store i32 1, i32* %16, align 4
  %122 = load i32**, i32*** %8, align 8
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @uasm_i_ori(i32** %122, i32 %123, i32 %124, i32 1344)
  %126 = load i32**, i32*** %8, align 8
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @uasm_i_drotr(i32** %126, i32 %127, i32 %128, i32 11)
  br label %130

130:                                              ; preds = %121, %118
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %130
  %134 = load i32**, i32*** %8, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @PGDIR_SHIFT, align 4
  %137 = sub nsw i32 %136, 3
  %138 = call i32 @uasm_i_dsrl_safe(i32** %134, i32 1, i32 %135, i32 %137)
  br label %139

139:                                              ; preds = %133, %130
  %140 = load %struct.uasm_label**, %struct.uasm_label*** %9, align 8
  %141 = load i32**, i32*** %8, align 8
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @uasm_l_vmalloc_done(%struct.uasm_label** %140, i32* %142)
  %144 = load i32, i32* %16, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load i32**, i32*** %8, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @PGDIR_SHIFT, align 4
  %150 = sub nsw i32 %149, 3
  %151 = call i32 @uasm_i_dsrl_safe(i32** %147, i32 1, i32 %148, i32 %150)
  br label %152

152:                                              ; preds = %146, %139
  %153 = load i32**, i32*** %8, align 8
  %154 = load i32, i32* @PTRS_PER_PGD, align 4
  %155 = sub nsw i32 %154, 1
  %156 = shl i32 %155, 3
  %157 = call i32 @uasm_i_andi(i32** %153, i32 1, i32 1, i32 %156)
  %158 = call i64 (...) @use_lwx_insns()
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %152
  %161 = load i32**, i32*** %8, align 8
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @UASM_i_LWX(i32** %161, i32 %162, i32 1, i32 %163)
  br label %174

165:                                              ; preds = %152
  %166 = load i32**, i32*** %8, align 8
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @uasm_i_daddu(i32** %166, i32 %167, i32 %168, i32 1)
  %170 = load i32**, i32*** %8, align 8
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call i32 @uasm_i_ld(i32** %170, i32 %171, i32 0, i32 %172)
  br label %174

174:                                              ; preds = %165, %160
  %175 = load i32**, i32*** %8, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* @PUD_SHIFT, align 4
  %178 = sub nsw i32 %177, 3
  %179 = call i32 @uasm_i_dsrl_safe(i32** %175, i32 1, i32 %176, i32 %178)
  %180 = load i32**, i32*** %8, align 8
  %181 = load i32, i32* @PTRS_PER_PUD, align 4
  %182 = sub nsw i32 %181, 1
  %183 = shl i32 %182, 3
  %184 = call i32 @uasm_i_andi(i32** %180, i32 1, i32 1, i32 %183)
  %185 = call i64 (...) @use_lwx_insns()
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %174
  %188 = load i32**, i32*** %8, align 8
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @UASM_i_LWX(i32** %188, i32 %189, i32 1, i32 %190)
  br label %201

192:                                              ; preds = %174
  %193 = load i32**, i32*** %8, align 8
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %12, align 4
  %196 = call i32 @uasm_i_daddu(i32** %193, i32 %194, i32 %195, i32 1)
  %197 = load i32**, i32*** %8, align 8
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @UASM_i_LW(i32** %197, i32 %198, i32 0, i32 %199)
  br label %201

201:                                              ; preds = %192, %187
  %202 = load i32**, i32*** %8, align 8
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* @PMD_SHIFT, align 4
  %205 = sub nsw i32 %204, 3
  %206 = call i32 @uasm_i_dsrl_safe(i32** %202, i32 1, i32 %203, i32 %205)
  %207 = load i32**, i32*** %8, align 8
  %208 = load i32, i32* @PTRS_PER_PMD, align 4
  %209 = sub nsw i32 %208, 1
  %210 = shl i32 %209, 3
  %211 = call i32 @uasm_i_andi(i32** %207, i32 1, i32 1, i32 %210)
  %212 = load i32**, i32*** %8, align 8
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @GET_CONTEXT(i32** %212, i32 %213)
  %215 = call i64 (...) @use_lwx_insns()
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %201
  %218 = load i32**, i32*** %8, align 8
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @UASM_i_LWX(i32** %218, i32 1, i32 1, i32 %219)
  br label %229

221:                                              ; preds = %201
  %222 = load i32**, i32*** %8, align 8
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* %12, align 4
  %225 = call i32 @uasm_i_daddu(i32** %222, i32 %223, i32 %224, i32 1)
  %226 = load i32**, i32*** %8, align 8
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @UASM_i_LW(i32** %226, i32 1, i32 0, i32 %227)
  br label %229

229:                                              ; preds = %221, %217
  %230 = load i32**, i32*** %8, align 8
  %231 = load i32, i32* %11, align 4
  %232 = call i32 @build_adjust_context(i32** %230, i32 %231)
  %233 = call i64 (...) @use_lwx_insns()
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %250

235:                                              ; preds = %229
  %236 = load i32, i32* %12, align 4
  store i32 %236, i32* %14, align 4
  %237 = load i32, i32* %11, align 4
  store i32 %237, i32* %15, align 4
  %238 = load i32**, i32*** %8, align 8
  %239 = load i32, i32* %14, align 4
  %240 = load i32, i32* %11, align 4
  %241 = call i32 @UASM_i_LWX(i32** %238, i32 %239, i32 1, i32 %240)
  %242 = load i32**, i32*** %8, align 8
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* %11, align 4
  %245 = call i32 @UASM_i_ADDIU(i32** %242, i32 %243, i32 %244, i32 4)
  %246 = load i32**, i32*** %8, align 8
  %247 = load i32, i32* %15, align 4
  %248 = load i32, i32* %11, align 4
  %249 = call i32 @UASM_i_LWX(i32** %246, i32 %247, i32 1, i32 %248)
  br label %265

250:                                              ; preds = %229
  %251 = load i32**, i32*** %8, align 8
  %252 = load i32, i32* %12, align 4
  %253 = load i32, i32* %11, align 4
  %254 = call i32 @UASM_i_ADDU(i32** %251, i32 %252, i32 1, i32 %253)
  %255 = load i32, i32* %11, align 4
  store i32 %255, i32* %14, align 4
  %256 = load i32, i32* %12, align 4
  store i32 %256, i32* %15, align 4
  %257 = load i32**, i32*** %8, align 8
  %258 = load i32, i32* %14, align 4
  %259 = load i32, i32* %12, align 4
  %260 = call i32 @UASM_i_LW(i32** %257, i32 %258, i32 0, i32 %259)
  %261 = load i32**, i32*** %8, align 8
  %262 = load i32, i32* %15, align 4
  %263 = load i32, i32* %12, align 4
  %264 = call i32 @UASM_i_LW(i32** %261, i32 %262, i32 4, i32 %263)
  br label %265

265:                                              ; preds = %250, %235
  %266 = load i64, i64* @cpu_has_rixi, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %285

268:                                              ; preds = %265
  %269 = load i32**, i32*** %8, align 8
  %270 = load i32, i32* %14, align 4
  %271 = load i32, i32* %14, align 4
  %272 = load i32, i32* @_PAGE_GLOBAL, align 4
  %273 = call i32 @ilog2(i32 %272)
  %274 = call i32 @uasm_i_drotr(i32** %269, i32 %270, i32 %271, i32 %273)
  %275 = load i32**, i32*** %8, align 8
  %276 = load i32, i32* %14, align 4
  %277 = load i32, i32* @C0_ENTRYLO0, align 4
  %278 = call i32 (i32**, i32, i32, ...) @UASM_i_MTC0(i32** %275, i32 %276, i32 %277)
  %279 = load i32**, i32*** %8, align 8
  %280 = load i32, i32* %15, align 4
  %281 = load i32, i32* %15, align 4
  %282 = load i32, i32* @_PAGE_GLOBAL, align 4
  %283 = call i32 @ilog2(i32 %282)
  %284 = call i32 @uasm_i_drotr(i32** %279, i32 %280, i32 %281, i32 %283)
  br label %302

285:                                              ; preds = %265
  %286 = load i32**, i32*** %8, align 8
  %287 = load i32, i32* %14, align 4
  %288 = load i32, i32* %14, align 4
  %289 = load i32, i32* @_PAGE_GLOBAL, align 4
  %290 = call i32 @ilog2(i32 %289)
  %291 = call i32 @uasm_i_dsrl_safe(i32** %286, i32 %287, i32 %288, i32 %290)
  %292 = load i32**, i32*** %8, align 8
  %293 = load i32, i32* %14, align 4
  %294 = load i32, i32* @C0_ENTRYLO0, align 4
  %295 = call i32 (i32**, i32, i32, ...) @UASM_i_MTC0(i32** %292, i32 %293, i32 %294)
  %296 = load i32**, i32*** %8, align 8
  %297 = load i32, i32* %15, align 4
  %298 = load i32, i32* %15, align 4
  %299 = load i32, i32* @_PAGE_GLOBAL, align 4
  %300 = call i32 @ilog2(i32 %299)
  %301 = call i32 @uasm_i_dsrl_safe(i32** %296, i32 %297, i32 %298, i32 %300)
  br label %302

302:                                              ; preds = %285, %268
  %303 = load i32**, i32*** %8, align 8
  %304 = load i32, i32* %15, align 4
  %305 = load i32, i32* @C0_ENTRYLO1, align 4
  %306 = call i32 (i32**, i32, i32, ...) @UASM_i_MTC0(i32** %303, i32 %304, i32 %305)
  %307 = load i32, i32* %13, align 4
  %308 = icmp sge i32 %307, 0
  br i1 %308, label %309, label %326

309:                                              ; preds = %302
  %310 = load i32**, i32*** %8, align 8
  %311 = call i32 @uasm_i_ehb(i32** %310)
  %312 = load i32**, i32*** %8, align 8
  %313 = call i32 (...) @c0_kscratch()
  %314 = load i32, i32* %13, align 4
  %315 = call i32 (i32**, i32, i32, ...) @UASM_i_MFC0(i32** %312, i32 1, i32 %313, i32 %314)
  %316 = load i32**, i32*** %8, align 8
  %317 = load %struct.uasm_label**, %struct.uasm_label*** %9, align 8
  %318 = load %struct.uasm_reloc**, %struct.uasm_reloc*** %10, align 8
  %319 = load i32, i32* @tlb_random, align 4
  %320 = call i32 @build_tlb_write_entry(i32** %316, %struct.uasm_label** %317, %struct.uasm_reloc** %318, i32 %319)
  %321 = load %struct.uasm_label**, %struct.uasm_label*** %9, align 8
  %322 = load i32**, i32*** %8, align 8
  %323 = load i32*, i32** %322, align 8
  %324 = call i32 @uasm_l_leave(%struct.uasm_label** %321, i32* %323)
  %325 = getelementptr inbounds %struct.mips_huge_tlb_info, %struct.mips_huge_tlb_info* %7, i32 0, i32 1
  store i32 1, i32* %325, align 4
  br label %360

326:                                              ; preds = %302
  %327 = load i32, i32* @PAGE_SHIFT, align 4
  %328 = icmp eq i32 %327, 14
  br i1 %328, label %332, label %329

329:                                              ; preds = %326
  %330 = load i32, i32* @PAGE_SHIFT, align 4
  %331 = icmp eq i32 %330, 13
  br i1 %331, label %332, label %345

332:                                              ; preds = %329, %326
  %333 = load i32**, i32*** %8, align 8
  %334 = load %struct.uasm_label**, %struct.uasm_label*** %9, align 8
  %335 = load %struct.uasm_reloc**, %struct.uasm_reloc*** %10, align 8
  %336 = load i32, i32* @tlb_random, align 4
  %337 = call i32 @build_tlb_write_entry(i32** %333, %struct.uasm_label** %334, %struct.uasm_reloc** %335, i32 %336)
  %338 = load %struct.uasm_label**, %struct.uasm_label*** %9, align 8
  %339 = load i32**, i32*** %8, align 8
  %340 = load i32*, i32** %339, align 8
  %341 = call i32 @uasm_l_leave(%struct.uasm_label** %338, i32* %340)
  %342 = load i32**, i32*** %8, align 8
  %343 = call i32 @scratchpad_offset(i32 0)
  %344 = call i32 @UASM_i_LW(i32** %342, i32 1, i32 %343, i32 0)
  br label %359

345:                                              ; preds = %329
  %346 = load i32**, i32*** %8, align 8
  %347 = call i32 @scratchpad_offset(i32 0)
  %348 = call i32 @UASM_i_LW(i32** %346, i32 1, i32 %347, i32 0)
  %349 = load i32**, i32*** %8, align 8
  %350 = load %struct.uasm_label**, %struct.uasm_label*** %9, align 8
  %351 = load %struct.uasm_reloc**, %struct.uasm_reloc*** %10, align 8
  %352 = load i32, i32* @tlb_random, align 4
  %353 = call i32 @build_tlb_write_entry(i32** %349, %struct.uasm_label** %350, %struct.uasm_reloc** %351, i32 %352)
  %354 = load %struct.uasm_label**, %struct.uasm_label*** %9, align 8
  %355 = load i32**, i32*** %8, align 8
  %356 = load i32*, i32** %355, align 8
  %357 = call i32 @uasm_l_leave(%struct.uasm_label** %354, i32* %356)
  %358 = getelementptr inbounds %struct.mips_huge_tlb_info, %struct.mips_huge_tlb_info* %7, i32 0, i32 1
  store i32 1, i32* %358, align 4
  br label %359

359:                                              ; preds = %345, %332
  br label %360

360:                                              ; preds = %359, %309
  %361 = load i32**, i32*** %8, align 8
  %362 = call i32 @uasm_i_eret(i32** %361)
  %363 = bitcast { i64, i32 }* %18 to i8*
  %364 = bitcast %struct.mips_huge_tlb_info* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %363, i8* align 4 %364, i64 12, i1 false)
  %365 = load { i64, i32 }, { i64, i32 }* %18, align 8
  ret { i64, i32 } %365
}

declare dso_local i32 @UASM_i_MFC0(i32**, i32, i32, ...) #1

declare dso_local i32 @c0_kscratch(...) #1

declare dso_local i32 @UASM_i_MTC0(i32**, i32, i32, ...) #1

declare dso_local i32 @UASM_i_SW(i32**, i32, i32, i32) #1

declare dso_local i32 @scratchpad_offset(i32) #1

declare dso_local i32 @uasm_i_dsrl_safe(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_il_bnez(i32**, %struct.uasm_reloc**, i32, i32) #1

declare dso_local i32 @uasm_i_dins(i32**, i32, i32, i32, i32) #1

declare dso_local i32 @uasm_il_bltz(i32**, %struct.uasm_reloc**, i32, i32) #1

declare dso_local i32 @uasm_i_ori(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_drotr(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_l_vmalloc_done(%struct.uasm_label**, i32*) #1

declare dso_local i32 @uasm_i_andi(i32**, i32, i32, i32) #1

declare dso_local i64 @use_lwx_insns(...) #1

declare dso_local i32 @UASM_i_LWX(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_daddu(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_ld(i32**, i32, i32, i32) #1

declare dso_local i32 @UASM_i_LW(i32**, i32, i32, i32) #1

declare dso_local i32 @GET_CONTEXT(i32**, i32) #1

declare dso_local i32 @build_adjust_context(i32**, i32) #1

declare dso_local i32 @UASM_i_ADDIU(i32**, i32, i32, i32) #1

declare dso_local i32 @UASM_i_ADDU(i32**, i32, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @uasm_i_ehb(i32**) #1

declare dso_local i32 @build_tlb_write_entry(i32**, %struct.uasm_label**, %struct.uasm_reloc**, i32) #1

declare dso_local i32 @uasm_l_leave(%struct.uasm_label**, i32*) #1

declare dso_local i32 @uasm_i_eret(i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_64k.c___hash_page_64K.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_64k.c___hash_page_64K.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 (i64, i64, i64, i64, i64, i32, i64)*, i64 (i64, i64, i64, i64, i32, i64, i64, i32)*, i32 (i64)* }

@mmu_psize_defs = common dso_local global %struct.TYPE_3__* null, align 8
@MMU_PAGE_64K = common dso_local global i64 0, align 8
@H_PAGE_BUSY = common dso_local global i64 0, align 8
@MMU_FTR_CI_LARGE_PAGE = common dso_local global i32 0, align 4
@_PAGE_ACCESSED = common dso_local global i64 0, align 8
@_PAGE_WRITE = common dso_local global i64 0, align 8
@_PAGE_DIRTY = common dso_local global i64 0, align 8
@PTRS_PER_PTE = common dso_local global i32 0, align 4
@CPU_FTR_NOEXECUTE = common dso_local global i32 0, align 4
@CPU_FTR_COHERENT_ICACHE = common dso_local global i32 0, align 4
@H_PAGE_HASHPTE = common dso_local global i64 0, align 8
@mmu_hash_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@_PAGE_HPTEFLAGS = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@htab_hash_mask = common dso_local global i64 0, align 8
@HPTES_PER_GROUP = common dso_local global i64 0, align 8
@HPTE_V_SECONDARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__hash_page_64K(i64 %0, i64 %1, i64 %2, i32* %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmu_psize_defs, align 8
  %29 = load i64, i64* @MMU_PAGE_64K, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %25, align 8
  br label %33

33:                                               ; preds = %81, %7
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @READ_ONCE(i32 %35)
  store i32 %36, i32* %26, align 4
  %37 = load i32, i32* %26, align 4
  %38 = call i64 @pte_val(i32 %37)
  store i64 %38, i64* %20, align 8
  %39 = load i64, i64* %20, align 8
  %40 = load i64, i64* @H_PAGE_BUSY, align 8
  %41 = and i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %257

46:                                               ; preds = %33
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %20, align 8
  %49 = call i32 @check_pte_access(i64 %47, i64 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 1, i32* %8, align 4
  br label %257

56:                                               ; preds = %46
  %57 = load i32, i32* @MMU_FTR_CI_LARGE_PAGE, align 4
  %58 = call i32 @mmu_has_feature(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %26, align 4
  %62 = call i32 @pte_ci(i32 %61)
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %257

66:                                               ; preds = %60, %56
  %67 = load i64, i64* %20, align 8
  %68 = load i64, i64* @H_PAGE_BUSY, align 8
  %69 = or i64 %67, %68
  %70 = load i64, i64* @_PAGE_ACCESSED, align 8
  %71 = or i64 %69, %70
  store i64 %71, i64* %21, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @_PAGE_WRITE, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load i64, i64* @_PAGE_DIRTY, align 8
  %78 = load i64, i64* %21, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %21, align 8
  br label %80

80:                                               ; preds = %76, %66
  br label %81

81:                                               ; preds = %80
  %82 = load i32*, i32** %12, align 8
  %83 = load i64, i64* %20, align 8
  %84 = call i32 @__pte(i64 %83)
  %85 = load i64, i64* %21, align 8
  %86 = call i32 @__pte(i64 %85)
  %87 = call i32 @pte_xchg(i32* %82, i32 %84, i32 %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br i1 %89, label %33, label %90

90:                                               ; preds = %81
  %91 = load i64, i64* %21, align 8
  %92 = call i64 @htab_convert_pte_flags(i64 %91)
  store i64 %92, i64* %18, align 8
  %93 = load i64, i64* %20, align 8
  %94 = call i32 @__pte(i64 %93)
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* @PTRS_PER_PTE, align 4
  %97 = call i32 @__real_pte(i32 %94, i32* %95, i32 %96)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* @CPU_FTR_NOEXECUTE, align 4
  %99 = call i64 @cpu_has_feature(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %90
  %102 = load i32, i32* @CPU_FTR_COHERENT_ICACHE, align 4
  %103 = call i64 @cpu_has_feature(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %101
  %106 = load i64, i64* %18, align 8
  %107 = load i64, i64* %20, align 8
  %108 = call i32 @__pte(i64 %107)
  %109 = load i64, i64* %13, align 8
  %110 = call i64 @hash_page_do_lazy_icache(i64 %106, i32 %108, i64 %109)
  store i64 %110, i64* %18, align 8
  br label %111

111:                                              ; preds = %105, %101, %90
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load i32, i32* %15, align 4
  %115 = call i64 @hpt_vpn(i64 %112, i64 %113, i32 %114)
  store i64 %115, i64* %22, align 8
  %116 = load i64, i64* %20, align 8
  %117 = load i64, i64* @H_PAGE_HASHPTE, align 8
  %118 = and i64 %116, %117
  %119 = trunc i64 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %144

122:                                              ; preds = %111
  %123 = load i64, i64* %22, align 8
  %124 = load i64, i64* %25, align 8
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %16, align 4
  %127 = call i64 @pte_get_hash_gslot(i64 %123, i64 %124, i32 %125, i32 %126, i32 0)
  store i64 %127, i64* %27, align 8
  %128 = load i32 (i64, i64, i64, i64, i64, i32, i64)*, i32 (i64, i64, i64, i64, i64, i32, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mmu_hash_ops, i32 0, i32 0), align 8
  %129 = load i64, i64* %27, align 8
  %130 = load i64, i64* %18, align 8
  %131 = load i64, i64* %22, align 8
  %132 = load i64, i64* @MMU_PAGE_64K, align 8
  %133 = load i64, i64* @MMU_PAGE_64K, align 8
  %134 = load i32, i32* %15, align 4
  %135 = load i64, i64* %14, align 8
  %136 = call i32 %128(i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i32 %134, i64 %135)
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %143

138:                                              ; preds = %122
  %139 = load i64, i64* @_PAGE_HPTEFLAGS, align 8
  %140 = xor i64 %139, -1
  %141 = load i64, i64* %20, align 8
  %142 = and i64 %141, %140
  store i64 %142, i64* %20, align 8
  br label %143

143:                                              ; preds = %138, %122
  br label %144

144:                                              ; preds = %143, %111
  %145 = load i64, i64* %20, align 8
  %146 = load i64, i64* @H_PAGE_HASHPTE, align 8
  %147 = and i64 %145, %146
  %148 = icmp ne i64 %147, 0
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = call i64 @likely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %250

153:                                              ; preds = %144
  %154 = load i64, i64* %20, align 8
  %155 = call i32 @__pte(i64 %154)
  %156 = call i64 @pte_pfn(i32 %155)
  %157 = load i64, i64* @PAGE_SHIFT, align 8
  %158 = shl i64 %156, %157
  store i64 %158, i64* %19, align 8
  %159 = load i64, i64* %22, align 8
  %160 = load i64, i64* %25, align 8
  %161 = load i32, i32* %15, align 4
  %162 = call i64 @hpt_hash(i64 %159, i64 %160, i32 %161)
  store i64 %162, i64* %23, align 8
  br label %163

163:                                              ; preds = %212, %153
  %164 = load i64, i64* %23, align 8
  %165 = load i64, i64* @htab_hash_mask, align 8
  %166 = and i64 %164, %165
  %167 = load i64, i64* @HPTES_PER_GROUP, align 8
  %168 = mul i64 %166, %167
  store i64 %168, i64* %17, align 8
  %169 = load i64 (i64, i64, i64, i64, i32, i64, i64, i32)*, i64 (i64, i64, i64, i64, i32, i64, i64, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mmu_hash_ops, i32 0, i32 1), align 8
  %170 = load i64, i64* %17, align 8
  %171 = load i64, i64* %22, align 8
  %172 = load i64, i64* %19, align 8
  %173 = load i64, i64* %18, align 8
  %174 = load i64, i64* @MMU_PAGE_64K, align 8
  %175 = load i64, i64* @MMU_PAGE_64K, align 8
  %176 = load i32, i32* %15, align 4
  %177 = call i64 %169(i64 %170, i64 %171, i64 %172, i64 %173, i32 0, i64 %174, i64 %175, i32 %176)
  store i64 %177, i64* %24, align 8
  %178 = load i64, i64* %24, align 8
  %179 = icmp eq i64 %178, -1
  %180 = zext i1 %179 to i32
  %181 = call i64 @unlikely(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %217

183:                                              ; preds = %163
  %184 = load i64, i64* %23, align 8
  %185 = xor i64 %184, -1
  %186 = load i64, i64* @htab_hash_mask, align 8
  %187 = and i64 %185, %186
  %188 = load i64, i64* @HPTES_PER_GROUP, align 8
  %189 = mul i64 %187, %188
  store i64 %189, i64* %17, align 8
  %190 = load i64 (i64, i64, i64, i64, i32, i64, i64, i32)*, i64 (i64, i64, i64, i64, i32, i64, i64, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mmu_hash_ops, i32 0, i32 1), align 8
  %191 = load i64, i64* %17, align 8
  %192 = load i64, i64* %22, align 8
  %193 = load i64, i64* %19, align 8
  %194 = load i64, i64* %18, align 8
  %195 = load i32, i32* @HPTE_V_SECONDARY, align 4
  %196 = load i64, i64* @MMU_PAGE_64K, align 8
  %197 = load i64, i64* @MMU_PAGE_64K, align 8
  %198 = load i32, i32* %15, align 4
  %199 = call i64 %190(i64 %191, i64 %192, i64 %193, i64 %194, i32 %195, i64 %196, i64 %197, i32 %198)
  store i64 %199, i64* %24, align 8
  %200 = load i64, i64* %24, align 8
  %201 = icmp eq i64 %200, -1
  br i1 %201, label %202, label %216

202:                                              ; preds = %183
  %203 = call i32 (...) @mftb()
  %204 = and i32 %203, 1
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %202
  %207 = load i64, i64* %23, align 8
  %208 = load i64, i64* @htab_hash_mask, align 8
  %209 = and i64 %207, %208
  %210 = load i64, i64* @HPTES_PER_GROUP, align 8
  %211 = mul i64 %209, %210
  store i64 %211, i64* %17, align 8
  br label %212

212:                                              ; preds = %206, %202
  %213 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mmu_hash_ops, i32 0, i32 2), align 8
  %214 = load i64, i64* %17, align 8
  %215 = call i32 %213(i64 %214)
  br label %163

216:                                              ; preds = %183
  br label %217

217:                                              ; preds = %216, %163
  %218 = load i64, i64* %24, align 8
  %219 = icmp eq i64 %218, -2
  %220 = zext i1 %219 to i32
  %221 = call i64 @unlikely(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %236

223:                                              ; preds = %217
  %224 = load i64, i64* %20, align 8
  %225 = call i32 @__pte(i64 %224)
  %226 = load i32*, i32** %12, align 8
  store i32 %225, i32* %226, align 4
  %227 = load i64, i64* %9, align 8
  %228 = load i64, i64* %10, align 8
  %229 = load i64, i64* %11, align 8
  %230 = load i64, i64* %13, align 8
  %231 = load i32, i32* %15, align 4
  %232 = load i64, i64* @MMU_PAGE_64K, align 8
  %233 = load i64, i64* @MMU_PAGE_64K, align 8
  %234 = load i64, i64* %20, align 8
  %235 = call i32 @hash_failure_debug(i64 %227, i64 %228, i64 %229, i64 %230, i32 %231, i64 %232, i64 %233, i64 %234)
  store i32 -1, i32* %8, align 4
  br label %257

236:                                              ; preds = %217
  %237 = load i64, i64* %21, align 8
  %238 = load i64, i64* @_PAGE_HPTEFLAGS, align 8
  %239 = xor i64 %238, -1
  %240 = and i64 %237, %239
  %241 = load i64, i64* @H_PAGE_HASHPTE, align 8
  %242 = or i64 %240, %241
  store i64 %242, i64* %21, align 8
  %243 = load i32*, i32** %12, align 8
  %244 = load i32, i32* %16, align 4
  %245 = load i64, i64* %24, align 8
  %246 = load i32, i32* @PTRS_PER_PTE, align 4
  %247 = call i64 @pte_set_hidx(i32* %243, i32 %244, i32 0, i64 %245, i32 %246)
  %248 = load i64, i64* %21, align 8
  %249 = or i64 %248, %247
  store i64 %249, i64* %21, align 8
  br label %250

250:                                              ; preds = %236, %144
  %251 = load i64, i64* %21, align 8
  %252 = load i64, i64* @H_PAGE_BUSY, align 8
  %253 = xor i64 %252, -1
  %254 = and i64 %251, %253
  %255 = call i32 @__pte(i64 %254)
  %256 = load i32*, i32** %12, align 8
  store i32 %255, i32* %256, align 4
  store i32 0, i32* %8, align 4
  br label %257

257:                                              ; preds = %250, %223, %65, %55, %45
  %258 = load i32, i32* %8, align 4
  ret i32 %258
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @check_pte_access(i64, i64) #1

declare dso_local i32 @mmu_has_feature(i32) #1

declare dso_local i32 @pte_ci(i32) #1

declare dso_local i32 @pte_xchg(i32*, i32, i32) #1

declare dso_local i32 @__pte(i64) #1

declare dso_local i64 @htab_convert_pte_flags(i64) #1

declare dso_local i32 @__real_pte(i32, i32*, i32) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @hash_page_do_lazy_icache(i64, i32, i64) #1

declare dso_local i64 @hpt_vpn(i64, i64, i32) #1

declare dso_local i64 @pte_get_hash_gslot(i64, i64, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i64 @hpt_hash(i64, i64, i32) #1

declare dso_local i32 @mftb(...) #1

declare dso_local i32 @hash_failure_debug(i64, i64, i64, i64, i32, i64, i64, i64) #1

declare dso_local i64 @pte_set_hidx(i32*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

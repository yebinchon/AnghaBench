; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_4k.c___hash_page_4K.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_4k.c___hash_page_4K.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 (i64, i64, i64, i64, i64, i32, i64)*, i64 (i64, i64, i64, i64, i32, i64, i64, i32)*, i32 (i64)* }

@mmu_psize_defs = common dso_local global %struct.TYPE_3__* null, align 8
@MMU_PAGE_4K = common dso_local global i64 0, align 8
@H_PAGE_BUSY = common dso_local global i64 0, align 8
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
define dso_local i32 @__hash_page_4K(i64 %0, i64 %1, i64 %2, i32* %3, i64 %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmu_psize_defs, align 8
  %31 = load i64, i64* @MMU_PAGE_4K, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %27, align 8
  br label %35

35:                                               ; preds = %73, %8
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @READ_ONCE(i32 %37)
  store i32 %38, i32* %28, align 4
  %39 = load i32, i32* %28, align 4
  %40 = call i64 @pte_val(i32 %39)
  store i64 %40, i64* %22, align 8
  %41 = load i64, i64* %22, align 8
  %42 = load i64, i64* @H_PAGE_BUSY, align 8
  %43 = and i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %249

48:                                               ; preds = %35
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %22, align 8
  %51 = call i32 @check_pte_access(i64 %49, i64 %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 1, i32* %9, align 4
  br label %249

58:                                               ; preds = %48
  %59 = load i64, i64* %22, align 8
  %60 = load i64, i64* @H_PAGE_BUSY, align 8
  %61 = or i64 %59, %60
  %62 = load i64, i64* @_PAGE_ACCESSED, align 8
  %63 = or i64 %61, %62
  store i64 %63, i64* %23, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* @_PAGE_WRITE, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load i64, i64* @_PAGE_DIRTY, align 8
  %70 = load i64, i64* %23, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %23, align 8
  br label %72

72:                                               ; preds = %68, %58
  br label %73

73:                                               ; preds = %72
  %74 = load i32*, i32** %13, align 8
  %75 = load i64, i64* %22, align 8
  %76 = call i32 @__pte(i64 %75)
  %77 = load i64, i64* %23, align 8
  %78 = call i32 @__pte(i64 %77)
  %79 = call i32 @pte_xchg(i32* %74, i32 %76, i32 %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br i1 %81, label %35, label %82

82:                                               ; preds = %73
  %83 = load i64, i64* %23, align 8
  %84 = call i64 @htab_convert_pte_flags(i64 %83)
  store i64 %84, i64* %20, align 8
  %85 = load i64, i64* %22, align 8
  %86 = call i32 @__pte(i64 %85)
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* @PTRS_PER_PTE, align 4
  %89 = call i32 @__real_pte(i32 %86, i32* %87, i32 %88)
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* @CPU_FTR_NOEXECUTE, align 4
  %91 = call i64 @cpu_has_feature(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %82
  %94 = load i32, i32* @CPU_FTR_COHERENT_ICACHE, align 4
  %95 = call i64 @cpu_has_feature(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = load i64, i64* %20, align 8
  %99 = load i64, i64* %22, align 8
  %100 = call i32 @__pte(i64 %99)
  %101 = load i64, i64* %14, align 8
  %102 = call i64 @hash_page_do_lazy_icache(i64 %98, i32 %100, i64 %101)
  store i64 %102, i64* %20, align 8
  br label %103

103:                                              ; preds = %97, %93, %82
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load i32, i32* %16, align 4
  %107 = call i64 @hpt_vpn(i64 %104, i64 %105, i32 %106)
  store i64 %107, i64* %24, align 8
  %108 = load i64, i64* %22, align 8
  %109 = load i64, i64* @H_PAGE_HASHPTE, align 8
  %110 = and i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %136

114:                                              ; preds = %103
  %115 = load i64, i64* %24, align 8
  %116 = load i64, i64* %27, align 8
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %18, align 4
  %119 = call i64 @pte_get_hash_gslot(i64 %115, i64 %116, i32 %117, i32 %118, i32 0)
  store i64 %119, i64* %29, align 8
  %120 = load i32 (i64, i64, i64, i64, i64, i32, i64)*, i32 (i64, i64, i64, i64, i64, i32, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mmu_hash_ops, i32 0, i32 0), align 8
  %121 = load i64, i64* %29, align 8
  %122 = load i64, i64* %20, align 8
  %123 = load i64, i64* %24, align 8
  %124 = load i64, i64* @MMU_PAGE_4K, align 8
  %125 = load i64, i64* @MMU_PAGE_4K, align 8
  %126 = load i32, i32* %16, align 4
  %127 = load i64, i64* %15, align 8
  %128 = call i32 %120(i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i32 %126, i64 %127)
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %135

130:                                              ; preds = %114
  %131 = load i64, i64* @_PAGE_HPTEFLAGS, align 8
  %132 = xor i64 %131, -1
  %133 = load i64, i64* %22, align 8
  %134 = and i64 %133, %132
  store i64 %134, i64* %22, align 8
  br label %135

135:                                              ; preds = %130, %114
  br label %136

136:                                              ; preds = %135, %103
  %137 = load i64, i64* %22, align 8
  %138 = load i64, i64* @H_PAGE_HASHPTE, align 8
  %139 = and i64 %137, %138
  %140 = icmp ne i64 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = call i64 @likely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %242

145:                                              ; preds = %136
  %146 = load i64, i64* %22, align 8
  %147 = call i32 @__pte(i64 %146)
  %148 = call i64 @pte_pfn(i32 %147)
  %149 = load i64, i64* @PAGE_SHIFT, align 8
  %150 = shl i64 %148, %149
  store i64 %150, i64* %21, align 8
  %151 = load i64, i64* %24, align 8
  %152 = load i64, i64* %27, align 8
  %153 = load i32, i32* %16, align 4
  %154 = call i64 @hpt_hash(i64 %151, i64 %152, i32 %153)
  store i64 %154, i64* %25, align 8
  br label %155

155:                                              ; preds = %204, %145
  %156 = load i64, i64* %25, align 8
  %157 = load i64, i64* @htab_hash_mask, align 8
  %158 = and i64 %156, %157
  %159 = load i64, i64* @HPTES_PER_GROUP, align 8
  %160 = mul i64 %158, %159
  store i64 %160, i64* %19, align 8
  %161 = load i64 (i64, i64, i64, i64, i32, i64, i64, i32)*, i64 (i64, i64, i64, i64, i32, i64, i64, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mmu_hash_ops, i32 0, i32 1), align 8
  %162 = load i64, i64* %19, align 8
  %163 = load i64, i64* %24, align 8
  %164 = load i64, i64* %21, align 8
  %165 = load i64, i64* %20, align 8
  %166 = load i64, i64* @MMU_PAGE_4K, align 8
  %167 = load i64, i64* @MMU_PAGE_4K, align 8
  %168 = load i32, i32* %16, align 4
  %169 = call i64 %161(i64 %162, i64 %163, i64 %164, i64 %165, i32 0, i64 %166, i64 %167, i32 %168)
  store i64 %169, i64* %26, align 8
  %170 = load i64, i64* %26, align 8
  %171 = icmp eq i64 %170, -1
  %172 = zext i1 %171 to i32
  %173 = call i64 @unlikely(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %209

175:                                              ; preds = %155
  %176 = load i64, i64* %25, align 8
  %177 = xor i64 %176, -1
  %178 = load i64, i64* @htab_hash_mask, align 8
  %179 = and i64 %177, %178
  %180 = load i64, i64* @HPTES_PER_GROUP, align 8
  %181 = mul i64 %179, %180
  store i64 %181, i64* %19, align 8
  %182 = load i64 (i64, i64, i64, i64, i32, i64, i64, i32)*, i64 (i64, i64, i64, i64, i32, i64, i64, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mmu_hash_ops, i32 0, i32 1), align 8
  %183 = load i64, i64* %19, align 8
  %184 = load i64, i64* %24, align 8
  %185 = load i64, i64* %21, align 8
  %186 = load i64, i64* %20, align 8
  %187 = load i32, i32* @HPTE_V_SECONDARY, align 4
  %188 = load i64, i64* @MMU_PAGE_4K, align 8
  %189 = load i64, i64* @MMU_PAGE_4K, align 8
  %190 = load i32, i32* %16, align 4
  %191 = call i64 %182(i64 %183, i64 %184, i64 %185, i64 %186, i32 %187, i64 %188, i64 %189, i32 %190)
  store i64 %191, i64* %26, align 8
  %192 = load i64, i64* %26, align 8
  %193 = icmp eq i64 %192, -1
  br i1 %193, label %194, label %208

194:                                              ; preds = %175
  %195 = call i32 (...) @mftb()
  %196 = and i32 %195, 1
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = load i64, i64* %25, align 8
  %200 = load i64, i64* @htab_hash_mask, align 8
  %201 = and i64 %199, %200
  %202 = load i64, i64* @HPTES_PER_GROUP, align 8
  %203 = mul i64 %201, %202
  store i64 %203, i64* %19, align 8
  br label %204

204:                                              ; preds = %198, %194
  %205 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mmu_hash_ops, i32 0, i32 2), align 8
  %206 = load i64, i64* %19, align 8
  %207 = call i32 %205(i64 %206)
  br label %155

208:                                              ; preds = %175
  br label %209

209:                                              ; preds = %208, %155
  %210 = load i64, i64* %26, align 8
  %211 = icmp eq i64 %210, -2
  %212 = zext i1 %211 to i32
  %213 = call i64 @unlikely(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %228

215:                                              ; preds = %209
  %216 = load i64, i64* %22, align 8
  %217 = call i32 @__pte(i64 %216)
  %218 = load i32*, i32** %13, align 8
  store i32 %217, i32* %218, align 4
  %219 = load i64, i64* %10, align 8
  %220 = load i64, i64* %11, align 8
  %221 = load i64, i64* %12, align 8
  %222 = load i64, i64* %14, align 8
  %223 = load i32, i32* %16, align 4
  %224 = load i64, i64* @MMU_PAGE_4K, align 8
  %225 = load i64, i64* @MMU_PAGE_4K, align 8
  %226 = load i64, i64* %22, align 8
  %227 = call i32 @hash_failure_debug(i64 %219, i64 %220, i64 %221, i64 %222, i32 %223, i64 %224, i64 %225, i64 %226)
  store i32 -1, i32* %9, align 4
  br label %249

228:                                              ; preds = %209
  %229 = load i64, i64* %23, align 8
  %230 = load i64, i64* @_PAGE_HPTEFLAGS, align 8
  %231 = xor i64 %230, -1
  %232 = and i64 %229, %231
  %233 = load i64, i64* @H_PAGE_HASHPTE, align 8
  %234 = or i64 %232, %233
  store i64 %234, i64* %23, align 8
  %235 = load i32*, i32** %13, align 8
  %236 = load i32, i32* %18, align 4
  %237 = load i64, i64* %26, align 8
  %238 = load i32, i32* @PTRS_PER_PTE, align 4
  %239 = call i64 @pte_set_hidx(i32* %235, i32 %236, i32 0, i64 %237, i32 %238)
  %240 = load i64, i64* %23, align 8
  %241 = or i64 %240, %239
  store i64 %241, i64* %23, align 8
  br label %242

242:                                              ; preds = %228, %136
  %243 = load i64, i64* %23, align 8
  %244 = load i64, i64* @H_PAGE_BUSY, align 8
  %245 = xor i64 %244, -1
  %246 = and i64 %243, %245
  %247 = call i32 @__pte(i64 %246)
  %248 = load i32*, i32** %13, align 8
  store i32 %247, i32* %248, align 4
  store i32 0, i32* %9, align 4
  br label %249

249:                                              ; preds = %242, %215, %57, %47
  %250 = load i32, i32* %9, align 4
  ret i32 %250
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @check_pte_access(i64, i64) #1

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

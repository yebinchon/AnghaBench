; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_hugetlbpage.c___hash_page_huge.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_hugetlbpage.c___hash_page_huge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i64, i64, i64, i32, i32, i32, i64)* }

@mmu_psize_defs = common dso_local global %struct.TYPE_3__* null, align 8
@H_PAGE_BUSY = common dso_local global i64 0, align 8
@_PAGE_ACCESSED = common dso_local global i64 0, align 8
@_PAGE_WRITE = common dso_local global i64 0, align 8
@_PAGE_DIRTY = common dso_local global i64 0, align 8
@H_PAGE_THP_HUGE = common dso_local global i64 0, align 8
@_PAGE_DEVMAP = common dso_local global i64 0, align 8
@MMU_PAGE_16G = common dso_local global i32 0, align 4
@PTRS_PER_PUD = common dso_local global i64 0, align 8
@PTRS_PER_PMD = common dso_local global i64 0, align 8
@CPU_FTR_COHERENT_ICACHE = common dso_local global i32 0, align 4
@H_PAGE_HASHPTE = common dso_local global i64 0, align 8
@mmu_hash_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@_PAGE_HPTEFLAGS = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__hash_page_huge(i64 %0, i64 %1, i64 %2, i32* %3, i64 %4, i64 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store i64 %0, i64* %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i32* %3, i32** %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %30 = load i32, i32* %18, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmu_psize_defs, align 8
  %32 = load i32, i32* %19, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %30, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i32, i32* %17, align 4
  %43 = call i64 @hpt_vpn(i64 %40, i64 %41, i32 %42)
  store i64 %43, i64* %21, align 8
  br label %44

44:                                               ; preds = %80, %9
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @pte_val(i32 %46)
  store i64 %47, i64* %22, align 8
  %48 = load i64, i64* %22, align 8
  %49 = load i64, i64* @H_PAGE_BUSY, align 8
  %50 = and i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 0, i32* %10, align 4
  br label %219

55:                                               ; preds = %44
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %22, align 8
  %58 = call i32 @check_pte_access(i64 %56, i64 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store i32 1, i32* %10, align 4
  br label %219

65:                                               ; preds = %55
  %66 = load i64, i64* %22, align 8
  %67 = load i64, i64* @H_PAGE_BUSY, align 8
  %68 = or i64 %66, %67
  %69 = load i64, i64* @_PAGE_ACCESSED, align 8
  %70 = or i64 %68, %69
  store i64 %70, i64* %23, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @_PAGE_WRITE, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load i64, i64* @_PAGE_DIRTY, align 8
  %77 = load i64, i64* %23, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %23, align 8
  br label %79

79:                                               ; preds = %75, %65
  br label %80

80:                                               ; preds = %79
  %81 = load i32*, i32** %14, align 8
  %82 = load i64, i64* %22, align 8
  %83 = call i32 @__pte(i64 %82)
  %84 = load i64, i64* %23, align 8
  %85 = call i32 @__pte(i64 %84)
  %86 = call i32 @pte_xchg(i32* %81, i32 %83, i32 %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br i1 %88, label %44, label %89

89:                                               ; preds = %80
  %90 = load i64, i64* %22, align 8
  %91 = load i64, i64* @H_PAGE_THP_HUGE, align 8
  %92 = load i64, i64* @_PAGE_DEVMAP, align 8
  %93 = or i64 %91, %92
  %94 = and i64 %90, %93
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store i32 0, i32* %10, align 4
  br label %219

97:                                               ; preds = %89
  %98 = load i64, i64* %23, align 8
  %99 = call i64 @htab_convert_pte_flags(i64 %98)
  store i64 %99, i64* %24, align 8
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* @MMU_PAGE_16G, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i64, i64* @PTRS_PER_PUD, align 8
  store i64 %107, i64* %27, align 8
  br label %110

108:                                              ; preds = %97
  %109 = load i64, i64* @PTRS_PER_PMD, align 8
  store i64 %109, i64* %27, align 8
  br label %110

110:                                              ; preds = %108, %106
  %111 = load i64, i64* %22, align 8
  %112 = call i32 @__pte(i64 %111)
  %113 = load i32*, i32** %14, align 8
  %114 = load i64, i64* %27, align 8
  %115 = call i32 @__real_pte(i32 %112, i32* %113, i64 %114)
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* @CPU_FTR_COHERENT_ICACHE, align 4
  %117 = call i32 @cpu_has_feature(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %110
  %120 = load i64, i64* %24, align 8
  %121 = load i64, i64* %22, align 8
  %122 = call i32 @__pte(i64 %121)
  %123 = load i64, i64* %15, align 8
  %124 = call i64 @hash_page_do_lazy_icache(i64 %120, i32 %122, i64 %123)
  store i64 %124, i64* %24, align 8
  br label %125

125:                                              ; preds = %119, %110
  %126 = load i64, i64* %22, align 8
  %127 = load i64, i64* @H_PAGE_HASHPTE, align 8
  %128 = and i64 %126, %127
  %129 = trunc i64 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %154

132:                                              ; preds = %125
  %133 = load i64, i64* %21, align 8
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %20, align 4
  %137 = call i64 @pte_get_hash_gslot(i64 %133, i32 %134, i32 %135, i32 %136, i32 0)
  store i64 %137, i64* %28, align 8
  %138 = load i32 (i64, i64, i64, i32, i32, i32, i64)*, i32 (i64, i64, i64, i32, i32, i32, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mmu_hash_ops, i32 0, i32 0), align 8
  %139 = load i64, i64* %28, align 8
  %140 = load i64, i64* %24, align 8
  %141 = load i64, i64* %21, align 8
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %19, align 4
  %144 = load i32, i32* %17, align 4
  %145 = load i64, i64* %16, align 8
  %146 = call i32 %138(i64 %139, i64 %140, i64 %141, i32 %142, i32 %143, i32 %144, i64 %145)
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %153

148:                                              ; preds = %132
  %149 = load i64, i64* @_PAGE_HPTEFLAGS, align 8
  %150 = xor i64 %149, -1
  %151 = load i64, i64* %22, align 8
  %152 = and i64 %151, %150
  store i64 %152, i64* %22, align 8
  br label %153

153:                                              ; preds = %148, %132
  br label %154

154:                                              ; preds = %153, %125
  %155 = load i64, i64* %22, align 8
  %156 = load i64, i64* @H_PAGE_HASHPTE, align 8
  %157 = and i64 %155, %156
  %158 = icmp ne i64 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = call i64 @likely(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %212

163:                                              ; preds = %154
  %164 = load i64, i64* %21, align 8
  %165 = load i32, i32* %18, align 4
  %166 = load i32, i32* %17, align 4
  %167 = call i64 @hpt_hash(i64 %164, i32 %165, i32 %166)
  store i64 %167, i64* %29, align 8
  %168 = load i64, i64* %22, align 8
  %169 = call i32 @__pte(i64 %168)
  %170 = call i64 @pte_pfn(i32 %169)
  %171 = load i64, i64* @PAGE_SHIFT, align 8
  %172 = shl i64 %170, %171
  store i64 %172, i64* %25, align 8
  %173 = load i64, i64* %23, align 8
  %174 = load i64, i64* @_PAGE_HPTEFLAGS, align 8
  %175 = xor i64 %174, -1
  %176 = and i64 %173, %175
  %177 = load i64, i64* @H_PAGE_HASHPTE, align 8
  %178 = or i64 %176, %177
  store i64 %178, i64* %23, align 8
  %179 = load i64, i64* %29, align 8
  %180 = load i64, i64* %21, align 8
  %181 = load i64, i64* %25, align 8
  %182 = load i64, i64* %24, align 8
  %183 = load i32, i32* %19, align 4
  %184 = load i32, i32* %17, align 4
  %185 = call i64 @hpte_insert_repeating(i64 %179, i64 %180, i64 %181, i64 %182, i32 0, i32 %183, i32 %184)
  store i64 %185, i64* %26, align 8
  %186 = load i64, i64* %26, align 8
  %187 = icmp eq i64 %186, -2
  %188 = zext i1 %187 to i32
  %189 = call i64 @unlikely(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %163
  %192 = load i64, i64* %22, align 8
  %193 = call i32 @__pte(i64 %192)
  %194 = load i32*, i32** %14, align 8
  store i32 %193, i32* %194, align 4
  %195 = load i64, i64* %11, align 8
  %196 = load i64, i64* %12, align 8
  %197 = load i64, i64* %13, align 8
  %198 = load i64, i64* %15, align 8
  %199 = load i32, i32* %17, align 4
  %200 = load i32, i32* %19, align 4
  %201 = load i32, i32* %19, align 4
  %202 = load i64, i64* %22, align 8
  %203 = call i32 @hash_failure_debug(i64 %195, i64 %196, i64 %197, i64 %198, i32 %199, i32 %200, i32 %201, i64 %202)
  store i32 -1, i32* %10, align 4
  br label %219

204:                                              ; preds = %163
  %205 = load i32*, i32** %14, align 8
  %206 = load i32, i32* %20, align 4
  %207 = load i64, i64* %26, align 8
  %208 = load i64, i64* %27, align 8
  %209 = call i64 @pte_set_hidx(i32* %205, i32 %206, i32 0, i64 %207, i64 %208)
  %210 = load i64, i64* %23, align 8
  %211 = or i64 %210, %209
  store i64 %211, i64* %23, align 8
  br label %212

212:                                              ; preds = %204, %154
  %213 = load i64, i64* %23, align 8
  %214 = load i64, i64* @H_PAGE_BUSY, align 8
  %215 = xor i64 %214, -1
  %216 = and i64 %213, %215
  %217 = call i32 @__pte(i64 %216)
  %218 = load i32*, i32** %14, align 8
  store i32 %217, i32* %218, align 4
  store i32 0, i32* %10, align 4
  br label %219

219:                                              ; preds = %212, %191, %96, %64, %54
  %220 = load i32, i32* %10, align 4
  ret i32 %220
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @hpt_vpn(i64, i64, i32) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @check_pte_access(i64, i64) #1

declare dso_local i32 @pte_xchg(i32*, i32, i32) #1

declare dso_local i32 @__pte(i64) #1

declare dso_local i64 @htab_convert_pte_flags(i64) #1

declare dso_local i32 @__real_pte(i32, i32*, i64) #1

declare dso_local i32 @cpu_has_feature(i32) #1

declare dso_local i64 @hash_page_do_lazy_icache(i64, i32, i64) #1

declare dso_local i64 @pte_get_hash_gslot(i64, i32, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @hpt_hash(i64, i32, i32) #1

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i64 @hpte_insert_repeating(i64, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @hash_failure_debug(i64, i64, i64, i64, i32, i32, i32, i64) #1

declare dso_local i64 @pte_set_hidx(i32*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

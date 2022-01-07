; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_native.c_hpte_decode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_native.c_hpte_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.hash_pte = type { i32, i32 }

@LP_SHIFT = common dso_local global i64 0, align 8
@LP_BITS = common dso_local global i32 0, align 4
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@HPTE_V_LARGE = common dso_local global i64 0, align 8
@MMU_PAGE_4K = common dso_local global i32 0, align 4
@hpte_page_sizes = common dso_local global i32* null, align 8
@HPTE_V_SSIZE_SHIFT = common dso_local global i64 0, align 8
@mmu_psize_defs = common dso_local global %struct.TYPE_2__* null, align 8
@HPTES_PER_GROUP = common dso_local global i64 0, align 8
@HPTE_V_SECONDARY = common dso_local global i64 0, align 8
@htab_hash_mask = common dso_local global i64 0, align 8
@SID_SHIFT = common dso_local global i64 0, align 8
@VPN_SHIFT = common dso_local global i64 0, align 8
@SID_SHIFT_1T = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hash_pte*, i64, i32*, i32*, i32*, i64*)* @hpte_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpte_decode(%struct.hash_pte* %0, i64 %1, i32* %2, i32* %3, i32* %4, i64* %5) #0 {
  %7 = alloca %struct.hash_pte*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.hash_pte* %0, %struct.hash_pte** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64* %5, i64** %12, align 8
  %24 = load %struct.hash_pte*, %struct.hash_pte** %7, align 8
  %25 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @be64_to_cpu(i32 %26)
  store i64 %27, i64* %16, align 8
  %28 = load %struct.hash_pte*, %struct.hash_pte** %7, align 8
  %29 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @be64_to_cpu(i32 %30)
  store i64 %31, i64* %17, align 8
  %32 = load i64, i64* %17, align 8
  %33 = load i64, i64* @LP_SHIFT, align 8
  %34 = lshr i64 %32, %33
  %35 = load i32, i32* @LP_BITS, align 4
  %36 = shl i32 1, %35
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = and i64 %34, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %23, align 4
  %41 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %42 = call i64 @cpu_has_feature(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %6
  %45 = load i64, i64* %16, align 8
  %46 = load i64, i64* %17, align 8
  %47 = call i64 @hpte_new_to_old_v(i64 %45, i64 %46)
  store i64 %47, i64* %16, align 8
  %48 = load i64, i64* %17, align 8
  %49 = call i64 @hpte_new_to_old_r(i64 %48)
  store i64 %49, i64* %17, align 8
  br label %50

50:                                               ; preds = %44, %6
  %51 = load i64, i64* %16, align 8
  %52 = load i64, i64* @HPTE_V_LARGE, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @MMU_PAGE_4K, align 4
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* @MMU_PAGE_4K, align 4
  store i32 %57, i32* %21, align 4
  br label %71

58:                                               ; preds = %50
  %59 = load i32*, i32** @hpte_page_sizes, align 8
  %60 = load i32, i32* %23, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 15
  store i32 %64, i32* %20, align 4
  %65 = load i32*, i32** @hpte_page_sizes, align 8
  %66 = load i32, i32* %23, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 4
  store i32 %70, i32* %21, align 4
  br label %71

71:                                               ; preds = %58, %55
  %72 = load i64, i64* %16, align 8
  %73 = load i64, i64* @HPTE_V_SSIZE_SHIFT, align 8
  %74 = lshr i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = load i32*, i32** %11, align 8
  store i32 %75, i32* %76, align 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %78 = load i32, i32* %20, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %22, align 4
  %83 = load i64, i64* %16, align 8
  %84 = call i64 @HPTE_V_AVPN_VAL(i64 %83)
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %86 = load i32, i32* %20, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = xor i64 %90, -1
  %92 = and i64 %84, %91
  store i64 %92, i64* %13, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* @HPTES_PER_GROUP, align 8
  %95 = udiv i64 %93, %94
  store i64 %95, i64* %14, align 8
  %96 = load i64, i64* %16, align 8
  %97 = load i64, i64* @HPTE_V_SECONDARY, align 8
  %98 = and i64 %96, %97
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %71
  %101 = load i64, i64* %14, align 8
  %102 = xor i64 %101, -1
  store i64 %102, i64* %14, align 8
  br label %103

103:                                              ; preds = %100, %71
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %171 [
    i32 128, label %106
    i32 129, label %137
  ]

106:                                              ; preds = %103
  %107 = load i64, i64* %13, align 8
  %108 = and i64 %107, 31
  %109 = shl i64 %108, 23
  store i64 %109, i64* %19, align 8
  %110 = load i64, i64* %13, align 8
  %111 = lshr i64 %110, 5
  store i64 %111, i64* %18, align 8
  %112 = load i32, i32* %22, align 4
  %113 = icmp slt i32 %112, 23
  br i1 %113, label %114, label %126

114:                                              ; preds = %106
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* %14, align 8
  %117 = xor i64 %115, %116
  %118 = load i64, i64* @htab_hash_mask, align 8
  %119 = and i64 %117, %118
  store i64 %119, i64* %15, align 8
  %120 = load i64, i64* %15, align 8
  %121 = load i32, i32* %22, align 4
  %122 = zext i32 %121 to i64
  %123 = shl i64 %120, %122
  %124 = load i64, i64* %19, align 8
  %125 = or i64 %124, %123
  store i64 %125, i64* %19, align 8
  br label %126

126:                                              ; preds = %114, %106
  %127 = load i64, i64* %18, align 8
  %128 = load i64, i64* @SID_SHIFT, align 8
  %129 = load i64, i64* @VPN_SHIFT, align 8
  %130 = sub i64 %128, %129
  %131 = shl i64 %127, %130
  %132 = load i64, i64* %19, align 8
  %133 = load i64, i64* @VPN_SHIFT, align 8
  %134 = lshr i64 %132, %133
  %135 = or i64 %131, %134
  %136 = load i64*, i64** %12, align 8
  store i64 %135, i64* %136, align 8
  br label %173

137:                                              ; preds = %103
  %138 = load i64, i64* %13, align 8
  %139 = and i64 %138, 131071
  %140 = shl i64 %139, 23
  store i64 %140, i64* %19, align 8
  %141 = load i64, i64* %13, align 8
  %142 = lshr i64 %141, 17
  store i64 %142, i64* %18, align 8
  %143 = load i32, i32* %22, align 4
  %144 = icmp slt i32 %143, 23
  br i1 %144, label %145, label %160

145:                                              ; preds = %137
  %146 = load i64, i64* %18, align 8
  %147 = load i64, i64* %18, align 8
  %148 = shl i64 %147, 25
  %149 = xor i64 %146, %148
  %150 = load i64, i64* %14, align 8
  %151 = xor i64 %149, %150
  %152 = load i64, i64* @htab_hash_mask, align 8
  %153 = and i64 %151, %152
  store i64 %153, i64* %15, align 8
  %154 = load i64, i64* %15, align 8
  %155 = load i32, i32* %22, align 4
  %156 = zext i32 %155 to i64
  %157 = shl i64 %154, %156
  %158 = load i64, i64* %19, align 8
  %159 = or i64 %158, %157
  store i64 %159, i64* %19, align 8
  br label %160

160:                                              ; preds = %145, %137
  %161 = load i64, i64* %18, align 8
  %162 = load i64, i64* @SID_SHIFT_1T, align 8
  %163 = load i64, i64* @VPN_SHIFT, align 8
  %164 = sub i64 %162, %163
  %165 = shl i64 %161, %164
  %166 = load i64, i64* %19, align 8
  %167 = load i64, i64* @VPN_SHIFT, align 8
  %168 = lshr i64 %166, %167
  %169 = or i64 %165, %168
  %170 = load i64*, i64** %12, align 8
  store i64 %169, i64* %170, align 8
  br label %173

171:                                              ; preds = %103
  store i32 0, i32* %20, align 4
  %172 = load i64*, i64** %12, align 8
  store i64 0, i64* %172, align 8
  br label %173

173:                                              ; preds = %171, %160, %126
  %174 = load i32, i32* %20, align 4
  %175 = load i32*, i32** %9, align 8
  store i32 %174, i32* %175, align 4
  %176 = load i32, i32* %21, align 4
  %177 = load i32*, i32** %10, align 8
  store i32 %176, i32* %177, align 4
  ret void
}

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @hpte_new_to_old_v(i64, i64) #1

declare dso_local i64 @hpte_new_to_old_r(i64) #1

declare dso_local i64 @HPTE_V_AVPN_VAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

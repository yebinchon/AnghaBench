; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_utils.c_htab_bolt_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_utils.c_htab_bolt_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i64, i64, i64, i64, i32, i32, i32, i32)* }

@mmu_psize_defs = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"htab_bolt_mapping(%lx..%lx -> %lx (%lx,%d,%d)\0A\00", align 1
@HPTE_R_N = common dso_local global i64 0, align 8
@PHYSICAL_START = common dso_local global i64 0, align 8
@MEMORY_START = common dso_local global i64 0, align 8
@htab_hash_mask = common dso_local global i64 0, align 8
@HPTES_PER_GROUP = common dso_local global i64 0, align 8
@mmu_hash_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@HPTE_V_BOLTED = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@linear_map_hash_count = common dso_local global i64 0, align 8
@linear_map_hash_slots = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @htab_bolt_mapping(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
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
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmu_psize_defs, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = shl i32 1, %30
  store i32 %31, i32* %16, align 4
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @htab_convert_pte_flags(i64 %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @DBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %35, i64 %36, i64 %37, i32 %38, i32 %39)
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %10, align 8
  store i64 %42, i64* %15, align 8
  br label %43

43:                                               ; preds = %118, %6
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %127

47:                                               ; preds = %43
  %48 = load i64, i64* %14, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i64 @get_kernel_vsid(i64 %48, i32 %49)
  store i64 %50, i64* %21, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %21, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i64 @hpt_vpn(i64 %51, i64 %52, i32 %53)
  store i64 %54, i64* %22, align 8
  %55 = load i64, i64* %11, align 8
  store i64 %55, i64* %23, align 8
  %56 = load i64, i64* %21, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %47
  store i32 -1, i32* %7, align 4
  br label %135

59:                                               ; preds = %47
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* %14, align 8
  %62 = load i32, i32* %16, align 4
  %63 = zext i32 %62 to i64
  %64 = add i64 %61, %63
  %65 = call i64 @overlaps_kernel_text(i64 %60, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load i64, i64* @HPTE_R_N, align 8
  %69 = xor i64 %68, -1
  %70 = load i64, i64* %23, align 8
  %71 = and i64 %70, %69
  store i64 %71, i64* %23, align 8
  br label %72

72:                                               ; preds = %67, %59
  %73 = load i64, i64* @PHYSICAL_START, align 8
  %74 = load i64, i64* @MEMORY_START, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i32, i32* %16, align 4
  %80 = zext i32 %79 to i64
  %81 = add i64 %78, %80
  %82 = call i64 @overlaps_interrupt_vector_text(i64 %77, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = load i64, i64* @HPTE_R_N, align 8
  %86 = xor i64 %85, -1
  %87 = load i64, i64* %23, align 8
  %88 = and i64 %87, %86
  store i64 %88, i64* %23, align 8
  br label %89

89:                                               ; preds = %84, %76, %72
  %90 = load i64, i64* %22, align 8
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i64 @hpt_hash(i64 %90, i32 %91, i32 %92)
  store i64 %93, i64* %19, align 8
  %94 = load i64, i64* %19, align 8
  %95 = load i64, i64* @htab_hash_mask, align 8
  %96 = and i64 %94, %95
  %97 = load i64, i64* @HPTES_PER_GROUP, align 8
  %98 = mul i64 %96, %97
  store i64 %98, i64* %20, align 8
  %99 = load i32 (i64, i64, i64, i64, i32, i32, i32, i32)*, i32 (i64, i64, i64, i64, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mmu_hash_ops, i32 0, i32 0), align 8
  %100 = icmp ne i32 (i64, i64, i64, i64, i32, i32, i32, i32)* %99, null
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i32 @BUG_ON(i32 %102)
  %104 = load i32 (i64, i64, i64, i64, i32, i32, i32, i32)*, i32 (i64, i64, i64, i64, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mmu_hash_ops, i32 0, i32 0), align 8
  %105 = load i64, i64* %20, align 8
  %106 = load i64, i64* %22, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* %23, align 8
  %109 = load i32, i32* @HPTE_V_BOLTED, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 %104(i64 %105, i64 %106, i64 %107, i64 %108, i32 %109, i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %18, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %89
  br label %127

117:                                              ; preds = %89
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %16, align 4
  %120 = zext i32 %119 to i64
  %121 = load i64, i64* %14, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* %14, align 8
  %123 = load i32, i32* %16, align 4
  %124 = zext i32 %123 to i64
  %125 = load i64, i64* %15, align 8
  %126 = add i64 %125, %124
  store i64 %126, i64* %15, align 8
  br label %43

127:                                              ; preds = %116, %43
  %128 = load i32, i32* %18, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i32, i32* %18, align 4
  br label %133

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi i32 [ %131, %130 ], [ 0, %132 ]
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %133, %58
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local i64 @htab_convert_pte_flags(i64) #1

declare dso_local i32 @DBG(i8*, i64, i64, i64, i64, i32, i32) #1

declare dso_local i64 @get_kernel_vsid(i64, i32) #1

declare dso_local i64 @hpt_vpn(i64, i64, i32) #1

declare dso_local i64 @overlaps_kernel_text(i64, i64) #1

declare dso_local i64 @overlaps_interrupt_vector_text(i64, i64) #1

declare dso_local i64 @hpt_hash(i64, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

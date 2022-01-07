; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_subpage_prot.c_subpage_prot_clear.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_subpage_prot.c_subpage_prot_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, i32 }
%struct.subpage_prot_table = type { i64, i32***, i32** }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@SBP_L3_SHIFT = common dso_local global i64 0, align 8
@SBP_L2_SHIFT = common dso_local global i64 0, align 8
@SBP_L2_COUNT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@SBP_L1_COUNT = common dso_local global i32 0, align 4
@PTRS_PER_PTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @subpage_prot_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subpage_prot_clear(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.subpage_prot_table*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  store %struct.mm_struct* %15, %struct.mm_struct** %5, align 8
  %16 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %17 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %16, i32 0, i32 0
  %18 = call i32 @down_write(i32* %17)
  %19 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 1
  %21 = call %struct.subpage_prot_table* @mm_ctx_subpage_prot(i32* %20)
  store %struct.subpage_prot_table* %21, %struct.subpage_prot_table** %6, align 8
  %22 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %6, align 8
  %23 = icmp ne %struct.subpage_prot_table* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %126

25:                                               ; preds = %2
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %26, %27
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %6, align 8
  %31 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ugt i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %6, align 8
  %36 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %12, align 8
  br label %38

38:                                               ; preds = %34, %25
  br label %39

39:                                               ; preds = %123, %38
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %125

43:                                               ; preds = %39
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i64 @pmd_addr_end(i64 %44, i64 %45)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %3, align 8
  %48 = icmp ult i64 %47, 4294967296
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %6, align 8
  %51 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  store i32** %52, i32*** %7, align 8
  br label %66

53:                                               ; preds = %43
  %54 = load %struct.subpage_prot_table*, %struct.subpage_prot_table** %6, align 8
  %55 = getelementptr inbounds %struct.subpage_prot_table, %struct.subpage_prot_table* %54, i32 0, i32 1
  %56 = load i32***, i32**** %55, align 8
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @SBP_L3_SHIFT, align 8
  %59 = lshr i64 %57, %58
  %60 = getelementptr inbounds i32**, i32*** %56, i64 %59
  %61 = load i32**, i32*** %60, align 8
  store i32** %61, i32*** %7, align 8
  %62 = load i32**, i32*** %7, align 8
  %63 = icmp ne i32** %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %53
  br label %123

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %49
  %67 = load i32**, i32*** %7, align 8
  %68 = load i64, i64* %3, align 8
  %69 = load i64, i64* @SBP_L2_SHIFT, align 8
  %70 = lshr i64 %68, %69
  %71 = load i32, i32* @SBP_L2_COUNT, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = and i64 %70, %73
  %75 = getelementptr inbounds i32*, i32** %67, i64 %74
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %8, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %66
  br label %123

80:                                               ; preds = %66
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* @PAGE_SHIFT, align 8
  %83 = lshr i64 %81, %82
  %84 = load i32, i32* @SBP_L1_COUNT, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = and i64 %83, %86
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 %87
  store i32* %89, i32** %8, align 8
  %90 = load i64, i64* %3, align 8
  %91 = load i64, i64* @PAGE_SHIFT, align 8
  %92 = lshr i64 %90, %91
  %93 = load i32, i32* @PTRS_PER_PTE, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = and i64 %92, %95
  store i64 %96, i64* %9, align 8
  %97 = load i32, i32* @PTRS_PER_PTE, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %9, align 8
  %100 = sub i64 %98, %99
  store i64 %100, i64* %10, align 8
  %101 = load i64, i64* %3, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* @PAGE_SHIFT, align 8
  %104 = shl i64 %102, %103
  %105 = add i64 %101, %104
  %106 = load i64, i64* %11, align 8
  %107 = icmp ugt i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %80
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* %3, align 8
  %111 = sub i64 %109, %110
  %112 = load i64, i64* @PAGE_SHIFT, align 8
  %113 = lshr i64 %111, %112
  store i64 %113, i64* %10, align 8
  br label %114

114:                                              ; preds = %108, %80
  %115 = load i32*, i32** %8, align 8
  %116 = load i64, i64* %10, align 8
  %117 = mul i64 %116, 4
  %118 = call i32 @memset(i32* %115, i32 0, i64 %117)
  %119 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %120 = load i64, i64* %3, align 8
  %121 = load i64, i64* %10, align 8
  %122 = call i32 @hpte_flush_range(%struct.mm_struct* %119, i64 %120, i64 %121)
  br label %123

123:                                              ; preds = %114, %79, %64
  %124 = load i64, i64* %11, align 8
  store i64 %124, i64* %3, align 8
  br label %39

125:                                              ; preds = %39
  br label %126

126:                                              ; preds = %125, %24
  %127 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %128 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %127, i32 0, i32 0
  %129 = call i32 @up_write(i32* %128)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.subpage_prot_table* @mm_ctx_subpage_prot(i32*) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @hpte_flush_range(%struct.mm_struct*, i64, i64) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

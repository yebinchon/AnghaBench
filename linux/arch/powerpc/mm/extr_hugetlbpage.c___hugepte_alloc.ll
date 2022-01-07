; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_hugetlbpage.c___hugepte_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_hugetlbpage.c___hugepte_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.kmem_cache = type { i32 }

@PTE_T_ORDER = common dso_local global i32 0, align 4
@CONFIG_PPC_8xx = common dso_local global i32 0, align 4
@PTE_INDEX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"No page table cache created for hugetlb tables\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@HUGEPD_SHIFT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i32*, i64, i32, i32, i32*)* @__hugepte_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hugepte_alloc(%struct.mm_struct* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.kmem_cache*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %6
  %22 = load i32, i32* @PTE_T_ORDER, align 4
  %23 = call %struct.kmem_cache* @PGT_CACHE(i32 %22)
  store %struct.kmem_cache* %23, %struct.kmem_cache** %14, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = sub i32 %24, %25
  %27 = shl i32 1, %26
  store i32 %27, i32* %17, align 4
  br label %41

28:                                               ; preds = %6
  %29 = load i32, i32* @CONFIG_PPC_8xx, align 4
  %30 = call i64 @IS_ENABLED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @PTE_INDEX_SIZE, align 4
  %34 = call %struct.kmem_cache* @PGT_CACHE(i32 %33)
  store %struct.kmem_cache* %34, %struct.kmem_cache** %14, align 8
  store i32 1, i32* %17, align 4
  br label %40

35:                                               ; preds = %28
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sub i32 %36, %37
  %39 = call %struct.kmem_cache* @PGT_CACHE(i32 %38)
  store %struct.kmem_cache* %39, %struct.kmem_cache** %14, align 8
  store i32 1, i32* %17, align 4
  br label %40

40:                                               ; preds = %35, %32
  br label %41

41:                                               ; preds = %40, %21
  %42 = load %struct.kmem_cache*, %struct.kmem_cache** %14, align 8
  %43 = icmp ne %struct.kmem_cache* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %127

48:                                               ; preds = %41
  %49 = load %struct.kmem_cache*, %struct.kmem_cache** %14, align 8
  %50 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @pgtable_gfp_flags(%struct.mm_struct* %50, i32 %51)
  %53 = call i32* @kmem_cache_alloc(%struct.kmem_cache* %49, i32 %52)
  store i32* %53, i32** %15, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @HUGEPD_SHIFT_MASK, align 4
  %56 = icmp ugt i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = call i32 @BUG_ON(i64 %58)
  %60 = load i32*, i32** %15, align 8
  %61 = ptrtoint i32* %60 to i64
  %62 = load i32, i32* @HUGEPD_SHIFT_MASK, align 4
  %63 = zext i32 %62 to i64
  %64 = and i64 %61, %63
  %65 = call i32 @BUG_ON(i64 %64)
  %66 = load i32*, i32** %15, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %48
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %127

71:                                               ; preds = %48
  %72 = call i32 (...) @smp_wmb()
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @spin_lock(i32* %73)
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %94, %71
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %75
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @hugepd_none(i32 %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %99

89:                                               ; preds = %79
  %90 = load i32*, i32** %9, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @hugepd_populate(i32* %90, i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %16, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %9, align 8
  br label %75

99:                                               ; preds = %88, %75
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %99
  %104 = load i32, i32* %16, align 4
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %112, %103
  %107 = load i32, i32* %16, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = call i32 @__hugepd(i32 0)
  %111 = load i32*, i32** %9, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %16, align 4
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 -1
  store i32* %116, i32** %9, align 8
  br label %106

117:                                              ; preds = %106
  %118 = load %struct.kmem_cache*, %struct.kmem_cache** %14, align 8
  %119 = load i32*, i32** %15, align 8
  %120 = call i32 @kmem_cache_free(%struct.kmem_cache* %118, i32* %119)
  br label %124

121:                                              ; preds = %99
  %122 = load i32*, i32** %15, align 8
  %123 = call i32 @kmemleak_ignore(i32* %122)
  br label %124

124:                                              ; preds = %121, %117
  %125 = load i32*, i32** %13, align 8
  %126 = call i32 @spin_unlock(i32* %125)
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %124, %68, %44
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local %struct.kmem_cache* @PGT_CACHE(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

declare dso_local i32 @pgtable_gfp_flags(%struct.mm_struct*, i32) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hugepd_none(i32) #1

declare dso_local i32 @hugepd_populate(i32*, i32*, i32) #1

declare dso_local i32 @__hugepd(i32) #1

declare dso_local i32 @kmem_cache_free(%struct.kmem_cache*, i32*) #1

declare dso_local i32 @kmemleak_ignore(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

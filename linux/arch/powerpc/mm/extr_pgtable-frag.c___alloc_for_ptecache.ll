; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_pgtable-frag.c___alloc_for_ptecache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_pgtable-frag.c___alloc_for_ptecache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, i32 }
%struct.page = type { i32 }

@PGALLOC_GFP = common dso_local global i32 0, align 4
@__GFP_ACCOUNT = common dso_local global i32 0, align 4
@PTE_FRAG_NR = common dso_local global i32 0, align 4
@PTE_FRAG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mm_struct*, i32)* @__alloc_for_ptecache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__alloc_for_ptecache(%struct.mm_struct* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @PGALLOC_GFP, align 4
  %12 = load i32, i32* @__GFP_ACCOUNT, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.page* @alloc_page(i32 %13)
  store %struct.page* %14, %struct.page** %7, align 8
  %15 = load %struct.page*, %struct.page** %7, align 8
  %16 = icmp ne %struct.page* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  store i8* null, i8** %3, align 8
  br label %72

18:                                               ; preds = %10
  %19 = load %struct.page*, %struct.page** %7, align 8
  %20 = call i32 @pgtable_pte_page_ctor(%struct.page* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load %struct.page*, %struct.page** %7, align 8
  %24 = call i32 @__free_page(%struct.page* %23)
  store i8* null, i8** %3, align 8
  br label %72

25:                                               ; preds = %18
  br label %33

26:                                               ; preds = %2
  %27 = load i32, i32* @PGALLOC_GFP, align 4
  %28 = call %struct.page* @alloc_page(i32 %27)
  store %struct.page* %28, %struct.page** %7, align 8
  %29 = load %struct.page*, %struct.page** %7, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i8* null, i8** %3, align 8
  br label %72

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %25
  %34 = load %struct.page*, %struct.page** %7, align 8
  %35 = getelementptr inbounds %struct.page, %struct.page* %34, i32 0, i32 0
  %36 = call i32 @atomic_set(i32* %35, i32 1)
  %37 = load %struct.page*, %struct.page** %7, align 8
  %38 = call i8* @page_address(%struct.page* %37)
  store i8* %38, i8** %6, align 8
  %39 = load i32, i32* @PTE_FRAG_NR, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i8*, i8** %6, align 8
  store i8* %42, i8** %3, align 8
  br label %72

43:                                               ; preds = %33
  %44 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %45 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %44, i32 0, i32 0
  %46 = call i32 @spin_lock(i32* %45)
  %47 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %48 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %47, i32 0, i32 1
  %49 = call i32 @pte_frag_get(i32* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @likely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %43
  %56 = load %struct.page*, %struct.page** %7, align 8
  %57 = getelementptr inbounds %struct.page, %struct.page* %56, i32 0, i32 0
  %58 = load i32, i32* @PTE_FRAG_NR, align 4
  %59 = call i32 @atomic_set(i32* %57, i32 %58)
  %60 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %61 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %60, i32 0, i32 1
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* @PTE_FRAG_SIZE, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr i8, i8* %62, i64 %64
  %66 = call i32 @pte_frag_set(i32* %61, i8* %65)
  br label %67

67:                                               ; preds = %55, %43
  %68 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %69 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load i8*, i8** %6, align 8
  store i8* %71, i8** %3, align 8
  br label %72

72:                                               ; preds = %67, %41, %31, %22, %17
  %73 = load i8*, i8** %3, align 8
  ret i8* %73
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @pgtable_pte_page_ctor(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pte_frag_get(i32*) #1

declare dso_local i32 @pte_frag_set(i32*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

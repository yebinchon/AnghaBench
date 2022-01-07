; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_pgtable.c___alloc_for_pmdcache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_pgtable.c___alloc_for_pmdcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.page = type { i32 }

@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 8
@__GFP_ACCOUNT = common dso_local global i32 0, align 4
@PMD_FRAG_NR = common dso_local global i32 0, align 4
@PMD_FRAG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mm_struct*)* @__alloc_for_pmdcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__alloc_for_pmdcache(%struct.mm_struct* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i8* null, i8** %4, align 8
  %7 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %8 = load i32, i32* @__GFP_ZERO, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %11 = icmp eq %struct.mm_struct* %10, @init_mm
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @__GFP_ACCOUNT, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.page* @alloc_page(i32 %18)
  store %struct.page* %19, %struct.page** %5, align 8
  %20 = load %struct.page*, %struct.page** %5, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i8* null, i8** %2, align 8
  br label %70

23:                                               ; preds = %17
  %24 = load %struct.page*, %struct.page** %5, align 8
  %25 = call i32 @pgtable_pmd_page_ctor(%struct.page* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = call i32 @__free_pages(%struct.page* %28, i32 0)
  store i8* null, i8** %2, align 8
  br label %70

30:                                               ; preds = %23
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = getelementptr inbounds %struct.page, %struct.page* %31, i32 0, i32 0
  %33 = call i32 @atomic_set(i32* %32, i32 1)
  %34 = load %struct.page*, %struct.page** %5, align 8
  %35 = call i8* @page_address(%struct.page* %34)
  store i8* %35, i8** %4, align 8
  %36 = load i32, i32* @PMD_FRAG_NR, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i8*, i8** %4, align 8
  store i8* %39, i8** %2, align 8
  br label %70

40:                                               ; preds = %30
  %41 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %42 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %41, i32 0, i32 0
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %45 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @likely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %40
  %54 = load %struct.page*, %struct.page** %5, align 8
  %55 = getelementptr inbounds %struct.page, %struct.page* %54, i32 0, i32 0
  %56 = load i32, i32* @PMD_FRAG_NR, align 4
  %57 = call i32 @atomic_set(i32* %55, i32 %56)
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* @PMD_FRAG_SIZE, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr i8, i8* %58, i64 %60
  %62 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %63 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  br label %65

65:                                               ; preds = %53, %40
  %66 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %67 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load i8*, i8** %4, align 8
  store i8* %69, i8** %2, align 8
  br label %70

70:                                               ; preds = %65, %38, %27, %22
  %71 = load i8*, i8** %2, align 8
  ret i8* %71
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @pgtable_pmd_page_ctor(%struct.page*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

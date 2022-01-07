; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_highmem.c_kmap_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_highmem.c_kmap_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@FIX_KMAP_BEGIN = common dso_local global i32 0, align 4
@KM_TYPE_NR = common dso_local global i32 0, align 4
@kmap_prot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kmap_atomic(%struct.page* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %8 = call i32 (...) @preempt_disable()
  %9 = call i32 (...) @pagefault_disable()
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call i32 @PageHighMem(%struct.page* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = call i8* @page_address(%struct.page* %14)
  store i8* %15, i8** %2, align 8
  br label %41

16:                                               ; preds = %1
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i8* @kmap_high_get(%struct.page* %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %2, align 8
  br label %41

23:                                               ; preds = %16
  %24 = call i32 (...) @kmap_atomic_idx_push()
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @FIX_KMAP_BEGIN, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* @KM_TYPE_NR, align 4
  %29 = call i32 (...) @smp_processor_id()
  %30 = mul nsw i32 %28, %29
  %31 = add nsw i32 %27, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @__fix_to_virt(i32 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.page*, %struct.page** %3, align 8
  %36 = load i32, i32* @kmap_prot, align 4
  %37 = call i32 @mk_pte(%struct.page* %35, i32 %36)
  %38 = call i32 @set_fixmap_pte(i32 %34, i32 %37)
  %39 = load i64, i64* %5, align 8
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %2, align 8
  br label %41

41:                                               ; preds = %23, %21, %13
  %42 = load i8*, i8** %2, align 8
  ret i8* %42
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @pagefault_disable(...) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i8* @kmap_high_get(%struct.page*) #1

declare dso_local i32 @kmap_atomic_idx_push(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @__fix_to_virt(i32) #1

declare dso_local i32 @set_fixmap_pte(i32, i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

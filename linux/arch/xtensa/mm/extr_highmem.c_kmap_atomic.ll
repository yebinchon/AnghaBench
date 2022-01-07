; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/mm/extr_highmem.c_kmap_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/mm/extr_highmem.c_kmap_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@FIX_KMAP_BEGIN = common dso_local global i32 0, align 4
@kmap_pte = common dso_local global i32* null, align 8
@PAGE_KERNEL_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kmap_atomic(%struct.page* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %6 = call i32 (...) @preempt_disable()
  %7 = call i32 (...) @pagefault_disable()
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = call i32 @PageHighMem(%struct.page* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = call i8* @page_address(%struct.page* %12)
  store i8* %13, i8** %2, align 8
  br label %34

14:                                               ; preds = %1
  %15 = call i32 (...) @kmap_atomic_idx_push()
  %16 = load %struct.page*, %struct.page** %3, align 8
  %17 = call i32 @page_to_phys(%struct.page* %16)
  %18 = call i32 @DCACHE_ALIAS(i32 %17)
  %19 = call i32 @kmap_idx(i32 %15, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @FIX_KMAP_BEGIN, align 4
  %21 = load i32, i32* %4, align 4
  %22 = add i32 %20, %21
  %23 = call i64 @__fix_to_virt(i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i32*, i32** @kmap_pte, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = load i32, i32* @PAGE_KERNEL_EXEC, align 4
  %30 = call i32 @mk_pte(%struct.page* %28, i32 %29)
  %31 = call i32 @set_pte(i32* %27, i32 %30)
  %32 = load i64, i64* %5, align 8
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %2, align 8
  br label %34

34:                                               ; preds = %14, %11
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @pagefault_disable(...) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @kmap_idx(i32, i32) #1

declare dso_local i32 @kmap_atomic_idx_push(...) #1

declare dso_local i32 @DCACHE_ALIAS(i32) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i64 @__fix_to_virt(i32) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

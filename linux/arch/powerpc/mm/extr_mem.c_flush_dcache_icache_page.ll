; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_mem.c_flush_dcache_icache_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_mem.c_flush_dcache_icache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@CONFIG_BOOKE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_dcache_icache_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %4 = load i32, i32* @CONFIG_BOOKE, align 4
  %5 = call i64 @IS_ENABLED(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.page*, %struct.page** %2, align 8
  %9 = call i8* @kmap_atomic(%struct.page* %8)
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @__flush_dcache_icache(i8* %10)
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @kunmap_atomic(i8* %12)
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.page*, %struct.page** %2, align 8
  %16 = call i32 @page_to_pfn(%struct.page* %15)
  %17 = load i32, i32* @PAGE_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = call i32 @__flush_dcache_icache_phys(i32 %18)
  br label %20

20:                                               ; preds = %14, %7
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @__flush_dcache_icache(i8*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @__flush_dcache_icache_phys(i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

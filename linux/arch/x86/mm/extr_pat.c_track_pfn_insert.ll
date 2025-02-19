; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_track_pfn_insert.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_track_pfn_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@_PAGE_CACHE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @track_pfn_insert(%struct.vm_area_struct* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @pat_enabled()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %26

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @pfn_t_to_phys(i32 %12)
  %14 = call i32 @lookup_memtype(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pgprot_val(i32 %16)
  %18 = load i32, i32* @_PAGE_CACHE_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @cachemode2protval(i32 %21)
  %23 = or i32 %20, %22
  %24 = call i32 @__pgprot(i32 %23)
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @pat_enabled(...) #1

declare dso_local i32 @lookup_memtype(i32) #1

declare dso_local i32 @pfn_t_to_phys(i32) #1

declare dso_local i32 @__pgprot(i32) #1

declare dso_local i32 @pgprot_val(i32) #1

declare dso_local i32 @cachemode2protval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_memtrace.c_memtrace_alloc_node.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_memtrace.c_memtrace_alloc_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @memtrace_alloc_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memtrace_alloc_node(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = call i32 (...) @memory_block_size_bytes()
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @node_spanned_pages(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @node_start_pfn(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @node_end_pfn(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @round_down(i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = call i32 (...) @lock_device_hotplug()
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %70, %17
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @memtrace_offline_pages(i32 %37, i32 %38, i32 %39)
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %69

42:                                               ; preds = %36
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %58, %42
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @PAGE_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @__remove_memory(i32 %52, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @PAGE_SHIFT, align 4
  %61 = ashr i32 %59, %60
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %47

64:                                               ; preds = %47
  %65 = call i32 (...) @unlock_device_hotplug()
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @PAGE_SHIFT, align 4
  %68 = shl i32 %66, %67
  store i32 %68, i32* %3, align 4
  br label %76

69:                                               ; preds = %36
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %10, align 4
  br label %32

74:                                               ; preds = %32
  %75 = call i32 (...) @unlock_device_hotplug()
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %64, %16
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @memory_block_size_bytes(...) #1

declare dso_local i32 @node_spanned_pages(i32) #1

declare dso_local i32 @node_start_pfn(i32) #1

declare dso_local i32 @node_end_pfn(i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @lock_device_hotplug(...) #1

declare dso_local i32 @memtrace_offline_pages(i32, i32, i32) #1

declare dso_local i32 @__remove_memory(i32, i32, i32) #1

declare dso_local i32 @unlock_device_hotplug(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

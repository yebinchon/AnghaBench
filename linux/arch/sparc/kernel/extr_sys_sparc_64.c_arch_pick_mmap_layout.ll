; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sys_sparc_64.c_arch_pick_mmap_layout.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sys_sparc_64.c_arch_pick_mmap_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mm_struct = type { i32, i64 }
%struct.rlimit = type { i64 }

@TIF_32BIT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@ADDR_COMPAT_LAYOUT = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i64 0, align 8
@sysctl_legacy_va_layout = common dso_local global i64 0, align 8
@TASK_UNMAPPED_BASE = common dso_local global i64 0, align 8
@arch_get_unmapped_area = common dso_local global i32 0, align 4
@STACK_TOP32 = common dso_local global i64 0, align 8
@arch_get_unmapped_area_topdown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_pick_mmap_layout(%struct.mm_struct* %0, %struct.rlimit* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.rlimit*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store %struct.rlimit* %1, %struct.rlimit** %4, align 8
  %8 = call i64 (...) @mmap_rnd()
  store i64 %8, i64* %5, align 8
  %9 = load %struct.rlimit*, %struct.rlimit** %4, align 8
  %10 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i32, i32* @TIF_32BIT, align 4
  %13 = call i32 @test_thread_flag(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ADDR_COMPAT_LAYOUT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @RLIM_INFINITY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* @sysctl_legacy_va_layout, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26, %22, %15, %2
  %30 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %30, %31
  %33 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %34 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @arch_get_unmapped_area, align 4
  %36 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %37 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %65

38:                                               ; preds = %26
  %39 = load i64, i64* @STACK_TOP32, align 8
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ult i64 %40, 134217728
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i64 134217728, i64* %6, align 8
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = udiv i64 %45, 6
  %47 = mul i64 %46, 5
  %48 = icmp ugt i64 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i64, i64* %7, align 8
  %51 = udiv i64 %50, 6
  %52 = mul i64 %51, 5
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %6, align 8
  %56 = sub i64 %54, %55
  %57 = load i64, i64* %5, align 8
  %58 = sub i64 %56, %57
  %59 = call i64 @PAGE_ALIGN(i64 %58)
  %60 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %61 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @arch_get_unmapped_area_topdown, align 4
  %63 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %64 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %53, %29
  ret void
}

declare dso_local i64 @mmap_rnd(...) #1

declare dso_local i32 @test_thread_flag(i32) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_mmap.c_arch_pick_mmap_layout.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_mmap.c_arch_pick_mmap_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mm_struct = type { i32, i32 }
%struct.rlimit = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@PF_RANDOMIZE = common dso_local global i32 0, align 4
@TASK_UNMAPPED_BASE = common dso_local global i32 0, align 4
@arch_get_unmapped_area = common dso_local global i32 0, align 4
@arch_get_unmapped_area_topdown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_pick_mmap_layout(%struct.mm_struct* %0, %struct.rlimit* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.rlimit*, align 8
  %5 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store %struct.rlimit* %1, %struct.rlimit** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PF_RANDOMIZE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i64 (...) @arch_mmap_rnd()
  store i64 %13, i64* %5, align 8
  br label %14

14:                                               ; preds = %12, %2
  %15 = call i64 (...) @radix_enabled()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.rlimit*, %struct.rlimit** %4, align 8
  call void @radix__arch_pick_mmap_layout(%struct.mm_struct* %18, i64 %19, %struct.rlimit* %20)
  br label %41

21:                                               ; preds = %14
  %22 = load %struct.rlimit*, %struct.rlimit** %4, align 8
  %23 = call i64 @mmap_is_legacy(%struct.rlimit* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* @TASK_UNMAPPED_BASE, align 4
  %27 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %28 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @arch_get_unmapped_area, align 4
  %30 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %31 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %41

32:                                               ; preds = %21
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.rlimit*, %struct.rlimit** %4, align 8
  %35 = call i32 @mmap_base(i64 %33, %struct.rlimit* %34)
  %36 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %37 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @arch_get_unmapped_area_topdown, align 4
  %39 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %40 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %17, %32, %25
  ret void
}

declare dso_local i64 @arch_mmap_rnd(...) #1

declare dso_local i64 @radix_enabled(...) #1

declare dso_local void @radix__arch_pick_mmap_layout(%struct.mm_struct*, i64, %struct.rlimit*) #1

declare dso_local i64 @mmap_is_legacy(%struct.rlimit*) #1

declare dso_local i32 @mmap_base(i64, %struct.rlimit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

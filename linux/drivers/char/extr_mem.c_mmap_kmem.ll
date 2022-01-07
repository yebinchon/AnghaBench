; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_mem.c_mmap_kmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_mem.c_mmap_kmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @mmap_kmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_kmem(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %8 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PAGE_SHIFT, align 8
  %11 = shl i64 %9, %10
  %12 = call i64 @__pa(i64 %11)
  %13 = load i64, i64* @PAGE_SHIFT, align 8
  %14 = lshr i64 %12, %13
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @pfn_valid(i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %27 = call i32 @mmap_mem(%struct.file* %25, %struct.vm_area_struct* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @__pa(i64) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local i32 @mmap_mem(%struct.file*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

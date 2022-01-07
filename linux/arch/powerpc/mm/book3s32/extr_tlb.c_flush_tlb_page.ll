; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s32/extr_tlb.c_flush_tlb_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s32/extr_tlb.c_flush_tlb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { %struct.mm_struct* }

@Hash = common dso_local global i32 0, align 4
@TASK_SIZE = common dso_local global i64 0, align 8
@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_page(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @Hash, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @_tlbie(i64 %10)
  br label %44

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @TASK_SIZE, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  br label %21

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi %struct.mm_struct* [ %19, %16 ], [ @init_mm, %20 ]
  store %struct.mm_struct* %22, %struct.mm_struct** %5, align 8
  %23 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @pgd_offset(%struct.mm_struct* %23, i64 %24)
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @pud_offset(i32 %25, i64 %26)
  %28 = load i64, i64* %4, align 8
  %29 = call i32* @pmd_offset(i32 %27, i64 %28)
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pmd_none(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %21
  %35 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %36 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %4, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pmd_val(i32 %41)
  %43 = call i32 @flush_hash_pages(i32 %38, i64 %39, i32 %42, i32 1)
  br label %44

44:                                               ; preds = %9, %34, %21
  ret void
}

declare dso_local i32 @_tlbie(i64) #1

declare dso_local i32* @pmd_offset(i32, i64) #1

declare dso_local i32 @pud_offset(i32, i64) #1

declare dso_local i32 @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32 @flush_hash_pages(i32, i64, i32, i32) #1

declare dso_local i32 @pmd_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

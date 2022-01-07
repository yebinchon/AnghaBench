; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_utils.c_hash_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_utils.c_hash_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@VMALLOC_REGION_ID = common dso_local global i64 0, align 8
@IO_REGION_ID = common dso_local global i64 0, align 8
@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 4
@DSISR_NOHPTE = common dso_local global i64 0, align 8
@HPTE_NOHPTE_UPDATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_page(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mm_struct*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  store %struct.mm_struct* %13, %struct.mm_struct** %10, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @get_region_id(i64 %14)
  %16 = load i64, i64* @VMALLOC_REGION_ID, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @get_region_id(i64 %19)
  %21 = load i64, i64* @IO_REGION_ID, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %4
  store %struct.mm_struct* @init_mm, %struct.mm_struct** %10, align 8
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @DSISR_NOHPTE, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i64, i64* @HPTE_NOHPTE_UPDATE, align 8
  %31 = load i64, i64* %9, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @hash_page_mm(%struct.mm_struct* %34, i64 %35, i64 %36, i64 %37, i64 %38)
  ret i32 %39
}

declare dso_local i64 @get_region_id(i64) #1

declare dso_local i32 @hash_page_mm(%struct.mm_struct*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

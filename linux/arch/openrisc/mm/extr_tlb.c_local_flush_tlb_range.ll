; ModuleID = '/home/carl/AnghaBench/linux/arch/openrisc/mm/extr_tlb.c_local_flush_tlb_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/openrisc/mm/extr_tlb.c_local_flush_tlb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@have_dtlbeir = common dso_local global i32 0, align 4
@have_itlbeir = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* @have_dtlbeir, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @have_itlbeir, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i64, i64* %5, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %38, %3
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @flush_dtlb_page_eir(i32 %23)
  br label %28

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @flush_dtlb_page_no_eir(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @flush_itlb_page_eir(i32 %32)
  br label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @flush_itlb_page_no_eir(i32 %35)
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* @PAGE_SIZE, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  br label %14

44:                                               ; preds = %14
  ret void
}

declare dso_local i32 @flush_dtlb_page_eir(i32) #1

declare dso_local i32 @flush_dtlb_page_no_eir(i32) #1

declare dso_local i32 @flush_itlb_page_eir(i32) #1

declare dso_local i32 @flush_itlb_page_no_eir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_sync_current_stack_to_mm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_sync_current_stack_to_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@current_stack_pointer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*)* @sync_current_stack_to_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_current_stack_to_mm(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %9 = load i64, i64* @current_stack_pointer, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i32* @pgd_offset(%struct.mm_struct* %10, i64 %11)
  store i32* %12, i32** %4, align 8
  %13 = call i64 (...) @pgtable_l5_enabled()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pgd_none(i32 %17)
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8
  %23 = call i32* @pgd_offset_k(i64 %22)
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @set_pgd(i32* %24, i32 %26)
  br label %28

28:                                               ; preds = %21, %15
  br label %49

29:                                               ; preds = %1
  %30 = load i32*, i32** %4, align 8
  %31 = load i64, i64* %3, align 8
  %32 = call i32* @p4d_offset(i32* %30, i64 %31)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @p4d_none(i32 %34)
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %29
  %39 = load i64, i64* %3, align 8
  %40 = call i32* @pgd_offset_k(i64 %39)
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i64, i64* %3, align 8
  %43 = call i32* @p4d_offset(i32* %41, i64 %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @set_p4d(i32* %44, i32 %46)
  br label %48

48:                                               ; preds = %38, %29
  br label %49

49:                                               ; preds = %48, %28
  ret void
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i64 @pgtable_l5_enabled(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pgd_none(i32) #1

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i32 @set_pgd(i32*, i32) #1

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i32 @p4d_none(i32) #1

declare dso_local i32 @set_p4d(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

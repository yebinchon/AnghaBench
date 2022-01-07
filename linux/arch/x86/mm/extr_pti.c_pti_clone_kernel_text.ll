; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pti.c_pti_clone_kernel_text.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pti.c_pti_clone_kernel_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_text = common dso_local global i64 0, align 8
@__end_rodata_aligned = common dso_local global i64 0, align 8
@__stop___ex_table = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"mapping partial kernel image into user address space\0A\00", align 1
@PTI_LEVEL_KERNEL_IMAGE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pti_clone_kernel_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pti_clone_kernel_text() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @_text, align 8
  %5 = call i64 @PFN_ALIGN(i64 %4)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* @__end_rodata_aligned, align 8
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* @__stop___ex_table, align 8
  %8 = call i64 @PFN_ALIGN(i64 %7)
  store i64 %8, i64* %3, align 8
  %9 = call i32 (...) @pti_kernel_image_global_ok()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %25

12:                                               ; preds = %0
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i32, i32* @PTI_LEVEL_KERNEL_IMAGE, align 4
  %17 = call i32 @pti_clone_pgtable(i64 %14, i64 %15, i32 %16)
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* %1, align 8
  %21 = sub i64 %19, %20
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = lshr i64 %21, %22
  %24 = call i32 @set_memory_global(i64 %18, i64 %23)
  br label %25

25:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @PFN_ALIGN(i64) #1

declare dso_local i32 @pti_kernel_image_global_ok(...) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @pti_clone_pgtable(i64, i64, i32) #1

declare dso_local i32 @set_memory_global(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

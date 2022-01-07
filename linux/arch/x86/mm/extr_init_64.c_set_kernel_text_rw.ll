; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_init_64.c_set_kernel_text_rw.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_init_64.c_set_kernel_text_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_text = common dso_local global i32 0, align 4
@__stop___ex_table = common dso_local global i32 0, align 4
@kernel_set_to_readonly = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Set kernel text: %lx - %lx for read write\0A\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_kernel_text_rw() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @_text, align 4
  %4 = call i64 @PFN_ALIGN(i32 %3)
  store i64 %4, i64* %1, align 8
  %5 = load i32, i32* @__stop___ex_table, align 4
  %6 = call i64 @PFN_ALIGN(i32 %5)
  store i64 %6, i64* %2, align 8
  %7 = load i32, i32* @kernel_set_to_readonly, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %21

10:                                               ; preds = %0
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %11, i64 %12)
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* %1, align 8
  %17 = sub i64 %15, %16
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = lshr i64 %17, %18
  %20 = call i32 @set_memory_rw(i64 %14, i64 %19)
  br label %21

21:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @PFN_ALIGN(i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @set_memory_rw(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

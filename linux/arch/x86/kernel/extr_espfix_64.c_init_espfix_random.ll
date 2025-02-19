; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_espfix_64.c_init_espfix_random.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_espfix_64.c_init_espfix_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESPFIX_STACKS_PER_PAGE = common dso_local global i64 0, align 8
@slot_random = common dso_local global i64 0, align 8
@ESPFIX_PAGE_SPACE = common dso_local global i32 0, align 4
@page_random = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_espfix_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_espfix_random() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @arch_get_random_long(i64* %1)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = call i64 (...) @rdtsc()
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = mul i64 %6, -4375872972837002973
  store i64 %7, i64* %1, align 8
  br label %8

8:                                                ; preds = %4, %0
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @ESPFIX_STACKS_PER_PAGE, align 8
  %11 = urem i64 %9, %10
  store i64 %11, i64* @slot_random, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @ESPFIX_STACKS_PER_PAGE, align 8
  %14 = udiv i64 %12, %13
  %15 = load i32, i32* @ESPFIX_PAGE_SPACE, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = and i64 %14, %17
  store i64 %18, i64* @page_random, align 8
  ret void
}

declare dso_local i32 @arch_get_random_long(i64*) #1

declare dso_local i64 @rdtsc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

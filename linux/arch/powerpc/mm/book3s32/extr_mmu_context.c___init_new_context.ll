; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s32/extr_mmu_context.c___init_new_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s32/extr_mmu_context.c___init_new_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@next_mmu_context = common dso_local global i64 0, align 8
@context_map = common dso_local global i32 0, align 4
@LAST_CONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__init_new_context() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @next_mmu_context, align 8
  store i64 %2, i64* %1, align 8
  br label %3

3:                                                ; preds = %19, %0
  %4 = load i64, i64* %1, align 8
  %5 = load i32, i32* @context_map, align 4
  %6 = call i64 @test_and_set_bit(i64 %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = load i32, i32* @context_map, align 4
  %10 = load i32, i32* @LAST_CONTEXT, align 4
  %11 = add nsw i32 %10, 1
  %12 = load i64, i64* %1, align 8
  %13 = call i64 @find_next_zero_bit(i32 %9, i32 %11, i64 %12)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i32, i32* @LAST_CONTEXT, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ugt i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  store i64 0, i64* %1, align 8
  br label %19

19:                                               ; preds = %18, %8
  br label %3

20:                                               ; preds = %3
  %21 = load i64, i64* %1, align 8
  %22 = add i64 %21, 1
  %23 = load i32, i32* @LAST_CONTEXT, align 4
  %24 = sext i32 %23 to i64
  %25 = and i64 %22, %24
  store i64 %25, i64* @next_mmu_context, align 8
  %26 = load i64, i64* %1, align 8
  ret i64 %26
}

declare dso_local i64 @test_and_set_bit(i64, i32) #1

declare dso_local i64 @find_next_zero_bit(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

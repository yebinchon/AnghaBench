; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_mmu_context.c_hash__alloc_context_id.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_mmu_context.c_hash__alloc_context_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMU_FTR_68_BIT_VA = common dso_local global i32 0, align 4
@MAX_USER_CONTEXT = common dso_local global i64 0, align 8
@MAX_USER_CONTEXT_65BIT_VA = common dso_local global i64 0, align 8
@MIN_USER_CONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash__alloc_context_id() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @MMU_FTR_68_BIT_VA, align 4
  %3 = call i64 @mmu_has_feature(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i64, i64* @MAX_USER_CONTEXT, align 8
  store i64 %6, i64* %1, align 8
  br label %9

7:                                                ; preds = %0
  %8 = load i64, i64* @MAX_USER_CONTEXT_65BIT_VA, align 8
  store i64 %8, i64* %1, align 8
  br label %9

9:                                                ; preds = %7, %5
  %10 = load i32, i32* @MIN_USER_CONTEXT, align 4
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @alloc_context_id(i32 %10, i64 %11)
  ret i32 %12
}

declare dso_local i64 @mmu_has_feature(i32) #1

declare dso_local i32 @alloc_context_id(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

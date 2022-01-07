; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_context.c_check_mmu_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_context.c_check_mmu_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@CONFIG_DEBUG_VM = common dso_local global i32 0, align 4
@cpu_has_mmid = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_mmu_context(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %4 = call i32 (...) @smp_processor_id()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @CONFIG_DEBUG_VM, align 4
  %6 = call i64 @IS_ENABLED(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* @cpu_has_mmid, align 8
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i1 [ false, %1 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %29

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %21 = call i32 @cpu_context(i32 %19, %struct.mm_struct* %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @asid_cache(i32 %22)
  %24 = call i32 @asid_versions_eq(i32 %18, i32 %21, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %28 = call i32 @get_new_mmu_context(%struct.mm_struct* %27)
  br label %29

29:                                               ; preds = %16, %26, %17
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @asid_versions_eq(i32, i32, i32) #1

declare dso_local i32 @cpu_context(i32, %struct.mm_struct*) #1

declare dso_local i32 @asid_cache(i32) #1

declare dso_local i32 @get_new_mmu_context(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

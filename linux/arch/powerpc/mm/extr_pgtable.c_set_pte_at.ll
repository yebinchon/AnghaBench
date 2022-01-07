; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_pgtable.c_set_pte_at.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_pgtable.c_set_pte_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_pte_at(%struct.mm_struct* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %7, align 8
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @pte_hw_valid(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pte_protnone(i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %4
  %20 = phi i1 [ false, %4 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @VM_WARN_ON(i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @pte_mkpte(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @set_pte_filter(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @__set_pte_at(%struct.mm_struct* %27, i64 %28, i32* %29, i32 %30, i32 0)
  ret void
}

declare dso_local i32 @VM_WARN_ON(i32) #1

declare dso_local i64 @pte_hw_valid(i32) #1

declare dso_local i32 @pte_protnone(i32) #1

declare dso_local i32 @pte_mkpte(i32) #1

declare dso_local i32 @set_pte_filter(i32) #1

declare dso_local i32 @__set_pte_at(%struct.mm_struct*, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_slice.c_slice_set_range_psize.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_slice.c_slice_set_range_psize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.slice_mask = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slice_set_range_psize(%struct.mm_struct* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.slice_mask, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call i32 (...) @radix_enabled()
  %11 = call i32 @VM_BUG_ON(i32 %10)
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @slice_range_to_mask(i64 %12, i64 %13, %struct.slice_mask* %9)
  %15 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @slice_convert(%struct.mm_struct* %15, %struct.slice_mask* %9, i32 %16)
  ret void
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @radix_enabled(...) #1

declare dso_local i32 @slice_range_to_mask(i64, i64, %struct.slice_mask*) #1

declare dso_local i32 @slice_convert(%struct.mm_struct*, %struct.slice_mask*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

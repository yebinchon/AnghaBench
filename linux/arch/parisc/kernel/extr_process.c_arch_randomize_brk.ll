; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_process.c_arch_randomize_brk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_process.c_arch_randomize_brk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_randomize_brk(%struct.mm_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %5 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %6 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i64 (...) @brk_rnd()
  %9 = add i64 %7, %8
  %10 = call i64 @PAGE_ALIGN(i64 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %13 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %18 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %2, align 8
  br label %22

20:                                               ; preds = %1
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* %2, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i64, i64* %2, align 8
  ret i64 %23
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @brk_rnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

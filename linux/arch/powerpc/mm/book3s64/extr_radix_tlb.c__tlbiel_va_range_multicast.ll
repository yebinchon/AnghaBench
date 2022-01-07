; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c__tlbiel_va_range_multicast.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c__tlbiel_va_range_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cpumask = type { i32 }
%struct.tlbiel_va_range = type { i64, i64, i64, i64, i64, i32 }

@do_tlbiel_va_range = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i64, i64, i64, i64, i64, i32)* @_tlbiel_va_range_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_tlbiel_va_range_multicast(%struct.mm_struct* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.cpumask*, align 8
  %16 = alloca %struct.tlbiel_va_range, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %18 = call %struct.cpumask* @mm_cpumask(%struct.mm_struct* %17)
  store %struct.cpumask* %18, %struct.cpumask** %15, align 8
  %19 = getelementptr inbounds %struct.tlbiel_va_range, %struct.tlbiel_va_range* %16, i32 0, i32 0
  %20 = load i64, i64* %9, align 8
  store i64 %20, i64* %19, align 8
  %21 = getelementptr inbounds %struct.tlbiel_va_range, %struct.tlbiel_va_range* %16, i32 0, i32 1
  %22 = load i64, i64* %10, align 8
  store i64 %22, i64* %21, align 8
  %23 = getelementptr inbounds %struct.tlbiel_va_range, %struct.tlbiel_va_range* %16, i32 0, i32 2
  %24 = load i64, i64* %11, align 8
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds %struct.tlbiel_va_range, %struct.tlbiel_va_range* %16, i32 0, i32 3
  %26 = load i64, i64* %12, align 8
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds %struct.tlbiel_va_range, %struct.tlbiel_va_range* %16, i32 0, i32 4
  %28 = load i64, i64* %13, align 8
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds %struct.tlbiel_va_range, %struct.tlbiel_va_range* %16, i32 0, i32 5
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %29, align 8
  %31 = load %struct.cpumask*, %struct.cpumask** %15, align 8
  %32 = load i32, i32* @do_tlbiel_va_range, align 4
  %33 = call i32 @on_each_cpu_mask(%struct.cpumask* %31, i32 %32, %struct.tlbiel_va_range* %16, i32 1)
  %34 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %35 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i64 @atomic_read(i32* %36)
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %7
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @_tlbie_va_range(i64 %40, i64 %41, i64 %42, i64 %43, i64 %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %7
  ret void
}

declare dso_local %struct.cpumask* @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @on_each_cpu_mask(%struct.cpumask*, i32, %struct.tlbiel_va_range*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @_tlbie_va_range(i64, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

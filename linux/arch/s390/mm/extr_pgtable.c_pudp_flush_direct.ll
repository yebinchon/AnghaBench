; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgtable.c_pudp_flush_direct.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgtable.c_pudp_flush_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@_REGION_ENTRY_INVALID = common dso_local global i32 0, align 4
@MACHINE_HAS_TLB_LC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i64, i32*)* @pudp_flush_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pudp_flush_direct(%struct.mm_struct* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @pud_val(i32 %11)
  %13 = load i32, i32* @_REGION_ENTRY_INVALID, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %48

18:                                               ; preds = %3
  %19 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @atomic_inc(i32* %21)
  %23 = load i64, i64* @MACHINE_HAS_TLB_LC, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %27 = call i32 @mm_cpumask(%struct.mm_struct* %26)
  %28 = call i32 (...) @smp_processor_id()
  %29 = call i32 @cpumask_of(i32 %28)
  %30 = call i64 @cpumask_equal(i32 %27, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @pudp_idte_local(%struct.mm_struct* %33, i64 %34, i32* %35)
  br label %42

37:                                               ; preds = %25, %18
  %38 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @pudp_idte_global(%struct.mm_struct* %38, i64 %39, i32* %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %44 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @atomic_dec(i32* %45)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @pud_val(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @cpumask_equal(i32, i32) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @pudp_idte_local(%struct.mm_struct*, i64, i32*) #1

declare dso_local i32 @pudp_idte_global(%struct.mm_struct*, i64, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

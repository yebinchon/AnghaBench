; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgtable.c_ptep_modify_prot_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgtable.c_ptep_modify_prot_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@_PGSTE_GPS_NODAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptep_modify_prot_start(%struct.vm_area_struct* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mm_struct*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  store %struct.mm_struct* %13, %struct.mm_struct** %10, align 8
  %14 = call i32 (...) @preempt_disable()
  %15 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @ptep_xchg_start(%struct.mm_struct* %15, i64 %16, i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @pgste_val(i32 %19)
  %21 = load i32, i32* @_PGSTE_GPS_NODAT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @ptep_flush_lazy(%struct.mm_struct* %27, i64 %28, i32* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %33 = call i64 @mm_has_pgste(%struct.mm_struct* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %3
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %39 = call i32 @pgste_update_all(i32 %36, i32 %37, %struct.mm_struct* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @pgste_set(i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %35, %3
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @ptep_xchg_start(%struct.mm_struct*, i64, i32*) #1

declare dso_local i32 @pgste_val(i32) #1

declare dso_local i32 @ptep_flush_lazy(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i64 @mm_has_pgste(%struct.mm_struct*) #1

declare dso_local i32 @pgste_update_all(i32, i32, %struct.mm_struct*) #1

declare dso_local i32 @pgste_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

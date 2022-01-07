; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgtable.c_ptep_xchg_direct.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgtable.c_ptep_xchg_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@_PGSTE_GPS_NODAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptep_xchg_direct(%struct.mm_struct* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = call i32 (...) @preempt_disable()
  %13 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @ptep_xchg_start(%struct.mm_struct* %13, i64 %14, i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @pgste_val(i32 %17)
  %19 = load i32, i32* @_PGSTE_GPS_NODAT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @ptep_flush_direct(%struct.mm_struct* %25, i64 %26, i32* %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @ptep_xchg_commit(%struct.mm_struct* %30, i64 %31, i32* %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = call i32 (...) @preempt_enable()
  %38 = load i32, i32* %10, align 4
  ret i32 %38
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @ptep_xchg_start(%struct.mm_struct*, i64, i32*) #1

declare dso_local i32 @pgste_val(i32) #1

declare dso_local i32 @ptep_flush_direct(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @ptep_xchg_commit(%struct.mm_struct*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

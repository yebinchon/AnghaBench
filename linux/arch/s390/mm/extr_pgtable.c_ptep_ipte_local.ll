; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgtable.c_ptep_ipte_local.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgtable.c_ptep_ipte_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@MACHINE_HAS_TLB_GUEST = common dso_local global i64 0, align 8
@IPTE_NODAT = common dso_local global i64 0, align 8
@IPTE_GUEST_ASCE = common dso_local global i64 0, align 8
@IPTE_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i64, i32*, i32)* @ptep_ipte_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptep_ipte_local(%struct.mm_struct* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* @MACHINE_HAS_TLB_GUEST, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  %14 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %15 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @READ_ONCE(i32 %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21, %13
  %25 = load i64, i64* @IPTE_NODAT, align 8
  %26 = load i64, i64* %9, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, -1
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %40

35:                                               ; preds = %31
  %36 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %37 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  br label %40

40:                                               ; preds = %35, %34
  %41 = phi i64 [ %32, %34 ], [ %39, %35 ]
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* @IPTE_GUEST_ASCE, align 8
  %43 = load i64, i64* %9, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %40, %28
  %46 = load i64, i64* %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* @IPTE_LOCAL, align 4
  %51 = call i32 @__ptep_ipte(i64 %46, i32* %47, i64 %48, i64 %49, i32 %50)
  br label %57

52:                                               ; preds = %4
  %53 = load i64, i64* %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @IPTE_LOCAL, align 4
  %56 = call i32 @__ptep_ipte(i64 %53, i32* %54, i64 0, i64 0, i32 %55)
  br label %57

57:                                               ; preds = %52, %45
  ret void
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @__ptep_ipte(i64, i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

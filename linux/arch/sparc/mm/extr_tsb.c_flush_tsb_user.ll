; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_tsb.c_flush_tsb_user.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_tsb.c_flush_tsb_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlb_batch = type { i32, %struct.mm_struct* }
%struct.mm_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@REAL_HPAGE_SHIFT = common dso_local global i32 0, align 4
@MM_TSB_BASE = common dso_local global i64 0, align 8
@tlb_type = common dso_local global i64 0, align 8
@cheetah_plus = common dso_local global i64 0, align 8
@hypervisor = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MM_TSB_HUGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tsb_user(%struct.tlb_batch* %0) #0 {
  %2 = alloca %struct.tlb_batch*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.tlb_batch* %0, %struct.tlb_batch** %2, align 8
  %7 = load %struct.tlb_batch*, %struct.tlb_batch** %2, align 8
  %8 = getelementptr inbounds %struct.tlb_batch, %struct.tlb_batch* %7, i32 0, i32 1
  %9 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  store %struct.mm_struct* %9, %struct.mm_struct** %3, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.tlb_batch*, %struct.tlb_batch** %2, align 8
  %16 = getelementptr inbounds %struct.tlb_batch, %struct.tlb_batch* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @REAL_HPAGE_SHIFT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %1
  %21 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %22 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i64, i64* @MM_TSB_BASE, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  %29 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %30 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i64, i64* @MM_TSB_BASE, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* @tlb_type, align 8
  %38 = load i64, i64* @cheetah_plus, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %20
  %41 = load i64, i64* @tlb_type, align 8
  %42 = load i64, i64* @hypervisor, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %20
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @__pa(i64 %45)
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %44, %40
  %48 = load %struct.tlb_batch*, %struct.tlb_batch** %2, align 8
  %49 = getelementptr inbounds %struct.tlb_batch, %struct.tlb_batch* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PAGE_SHIFT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.tlb_batch*, %struct.tlb_batch** %2, align 8
  %55 = load i32, i32* @PAGE_SHIFT, align 4
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @__flush_tsb_one(%struct.tlb_batch* %54, i32 %55, i64 %56, i64 %57)
  br label %59

59:                                               ; preds = %53, %47
  br label %60

60:                                               ; preds = %59, %1
  %61 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %62 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @__pa(i64) #1

declare dso_local i32 @__flush_tsb_one(%struct.tlb_batch*, i32, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

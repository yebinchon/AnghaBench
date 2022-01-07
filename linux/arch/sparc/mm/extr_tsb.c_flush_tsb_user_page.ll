; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_tsb.c_flush_tsb_user_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_tsb.c_flush_tsb_user_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
define dso_local void @flush_tsb_user_page(%struct.mm_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @REAL_HPAGE_SHIFT, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %3
  %19 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i64, i64* @MM_TSB_BASE, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %28 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i64, i64* @MM_TSB_BASE, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* @tlb_type, align 8
  %36 = load i64, i64* @cheetah_plus, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %18
  %39 = load i64, i64* @tlb_type, align 8
  %40 = load i64, i64* @hypervisor, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %18
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @__pa(i64 %43)
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @PAGE_SHIFT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i32, i32* @PAGE_SHIFT, align 4
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @__flush_tsb_one_entry(i64 %50, i64 %51, i32 %52, i64 %53)
  br label %55

55:                                               ; preds = %49, %45
  br label %56

56:                                               ; preds = %55, %3
  %57 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %58 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @__pa(i64) #1

declare dso_local i32 @__flush_tsb_one_entry(i64, i64, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-irq.c_install_ipi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-irq.c_install_ipi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@irq_enable_mask = common dso_local global i32 0, align 4
@PI_CPU_NUM = common dso_local global i32 0, align 4
@CPU_RESCHED_A_IRQ = common dso_local global i32 0, align 4
@CPU_CALL_A_IRQ = common dso_local global i32 0, align 4
@PI_INT_MASK0_A = common dso_local global i32 0, align 4
@PI_INT_MASK1_A = common dso_local global i32 0, align 4
@PI_INT_MASK0_B = common dso_local global i32 0, align 4
@PI_INT_MASK1_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @install_ipi() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @smp_processor_id()
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @irq_enable_mask, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i64* @per_cpu(i32 %7, i32 %8)
  store i64* %9, i64** %2, align 8
  %10 = load i32, i32* @PI_CPU_NUM, align 4
  %11 = call i32 @LOCAL_HUB_L(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @CPU_RESCHED_A_IRQ, align 4
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i64*, i64** %2, align 8
  %17 = call i32 @set_bit(i32 %15, i64* %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @LOCAL_HUB_CLR_INTR(i32 %18)
  %20 = load i32, i32* @CPU_CALL_A_IRQ, align 4
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i64*, i64** %2, align 8
  %25 = call i32 @set_bit(i32 %23, i64* %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @LOCAL_HUB_CLR_INTR(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %0
  %31 = load i32, i32* @PI_INT_MASK0_A, align 4
  %32 = load i64*, i64** %2, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @LOCAL_HUB_S(i32 %31, i64 %34)
  %36 = load i32, i32* @PI_INT_MASK1_A, align 4
  %37 = load i64*, i64** %2, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @LOCAL_HUB_S(i32 %36, i64 %39)
  br label %52

41:                                               ; preds = %0
  %42 = load i32, i32* @PI_INT_MASK0_B, align 4
  %43 = load i64*, i64** %2, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @LOCAL_HUB_S(i32 %42, i64 %45)
  %47 = load i32, i32* @PI_INT_MASK1_B, align 4
  %48 = load i64*, i64** %2, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @LOCAL_HUB_S(i32 %47, i64 %50)
  br label %52

52:                                               ; preds = %41, %30
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64* @per_cpu(i32, i32) #1

declare dso_local i32 @LOCAL_HUB_L(i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @LOCAL_HUB_CLR_INTR(i32) #1

declare dso_local i32 @LOCAL_HUB_S(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/extr_irq.c_ltq_hw_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/extr_irq.c_ltq_hw_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@LTQ_ICU_IOSR = common dso_local global i32 0, align 4
@MIPS_CPU_IRQ_CASCADE = common dso_local global i64 0, align 8
@INT_NUM_IM_OFFSET = common dso_local global i32 0, align 4
@ltq_domain = common dso_local global i32 0, align 4
@LTQ_ICU_EBU_IRQ = common dso_local global i64 0, align 8
@LTQ_EBU_PCC_ISTAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @ltq_hw_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ltq_hw_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %7 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %8 = call i32 @irq_desc_get_irq(%struct.irq_desc* %7)
  %9 = sub nsw i32 %8, 2
  store i32 %9, i32* %3, align 4
  %10 = call i32 (...) @smp_processor_id()
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @LTQ_ICU_IOSR, align 4
  %14 = call i64 @ltq_icu_r32(i32 %11, i32 %12, i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %48

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @__fls(i64 %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @MIPS_CPU_IRQ_CASCADE, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i32, i32* @INT_NUM_IM_OFFSET, align 4
  %25 = load i32, i32* %3, align 4
  %26 = mul i32 %24, %25
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %23, %27
  store i64 %28, i64* %5, align 8
  %29 = load i32, i32* @ltq_domain, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @irq_linear_revmap(i32 %29, i64 %30)
  %32 = call i32 @generic_handle_irq(i32 %31)
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @LTQ_ICU_EBU_IRQ, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %18
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i64, i64* @LTQ_EBU_PCC_ISTAT, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i64, i64* @LTQ_EBU_PCC_ISTAT, align 8
  %44 = call i32 @ltq_ebu_r32(i64 %43)
  %45 = or i32 %44, 16
  %46 = load i64, i64* @LTQ_EBU_PCC_ISTAT, align 8
  %47 = call i32 @ltq_ebu_w32(i32 %45, i64 %46)
  br label %48

48:                                               ; preds = %17, %42, %39, %36, %18
  ret void
}

declare dso_local i32 @irq_desc_get_irq(%struct.irq_desc*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @ltq_icu_r32(i32, i32, i32) #1

declare dso_local i64 @__fls(i64) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irq_linear_revmap(i32, i64) #1

declare dso_local i32 @ltq_ebu_w32(i32, i64) #1

declare dso_local i32 @ltq_ebu_r32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

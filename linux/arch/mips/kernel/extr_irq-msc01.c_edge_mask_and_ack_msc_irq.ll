; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_irq-msc01.c_edge_mask_and_ack_msc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_irq-msc01.c_edge_mask_and_ack_msc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@cpu_has_veic = common dso_local global i32 0, align 4
@MSC01_IC_EOI = common dso_local global i64 0, align 8
@MSC01_IC_SUP = common dso_local global i64 0, align 8
@MSC01_IC_SUP_EDGE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @edge_mask_and_ack_msc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edge_mask_and_ack_msc_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call i32 @mask_msc_irq(%struct.irq_data* %8)
  %10 = load i32, i32* @cpu_has_veic, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* @MSC01_IC_EOI, align 8
  %14 = call i32 @MSCIC_WRITE(i64 %13, i32 0)
  br label %40

15:                                               ; preds = %1
  %16 = load i64, i64* @MSC01_IC_SUP, align 8
  %17 = load i32, i32* %3, align 4
  %18 = mul i32 %17, 8
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @MSCIC_READ(i64 %20, i32 %21)
  %23 = load i64, i64* @MSC01_IC_SUP, align 8
  %24 = load i32, i32* %3, align 4
  %25 = mul i32 %24, 8
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @MSC01_IC_SUP_EDGE_BIT, align 4
  %30 = xor i32 %29, -1
  %31 = or i32 %28, %30
  %32 = call i32 @MSCIC_WRITE(i64 %27, i32 %31)
  %33 = load i64, i64* @MSC01_IC_SUP, align 8
  %34 = load i32, i32* %3, align 4
  %35 = mul i32 %34, 8
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @MSCIC_WRITE(i64 %37, i32 %38)
  br label %40

40:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @mask_msc_irq(%struct.irq_data*) #1

declare dso_local i32 @MSCIC_WRITE(i64, i32) #1

declare dso_local i32 @MSCIC_READ(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

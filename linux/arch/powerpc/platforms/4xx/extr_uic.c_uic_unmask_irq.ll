; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/4xx/extr_uic.c_uic_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/4xx/extr_uic.c_uic_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.uic = type { i32, i64 }

@UIC_SR = common dso_local global i64 0, align 8
@UIC_ER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @uic_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uic_unmask_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.uic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call %struct.uic* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.uic* %9, %struct.uic** %3, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %11 = call i32 @irqd_to_hwirq(%struct.irq_data* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sub i32 31, %12
  %14 = shl i32 1, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.uic*, %struct.uic** %3, align 8
  %16 = getelementptr inbounds %struct.uic, %struct.uic* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @raw_spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %20 = call i64 @irqd_is_level_type(%struct.irq_data* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.uic*, %struct.uic** %3, align 8
  %24 = getelementptr inbounds %struct.uic, %struct.uic* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @UIC_SR, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @mtdcr(i64 %27, i32 %28)
  br label %30

30:                                               ; preds = %22, %1
  %31 = load %struct.uic*, %struct.uic** %3, align 8
  %32 = getelementptr inbounds %struct.uic, %struct.uic* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @UIC_ER, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @mfdcr(i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load %struct.uic*, %struct.uic** %3, align 8
  %41 = getelementptr inbounds %struct.uic, %struct.uic* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @UIC_ER, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @mtdcr(i64 %44, i32 %45)
  %47 = load %struct.uic*, %struct.uic** %3, align 8
  %48 = getelementptr inbounds %struct.uic, %struct.uic* %47, i32 0, i32 0
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @raw_spin_unlock_irqrestore(i32* %48, i64 %49)
  ret void
}

declare dso_local %struct.uic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @irqd_is_level_type(%struct.irq_data*) #1

declare dso_local i32 @mtdcr(i64, i32) #1

declare dso_local i32 @mfdcr(i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

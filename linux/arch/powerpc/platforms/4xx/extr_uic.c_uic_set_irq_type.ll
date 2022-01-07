; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/4xx/extr_uic.c_uic_set_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/4xx/extr_uic.c_uic_set_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.uic = type { i32, i64 }

@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UIC_TR = common dso_local global i64 0, align 8
@UIC_PR = common dso_local global i64 0, align 8
@UIC_SR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @uic_set_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uic_set_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %15 = call %struct.uic* @irq_data_get_irq_chip_data(%struct.irq_data* %14)
  store %struct.uic* %15, %struct.uic** %6, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %17 = call i32 @irqd_to_hwirq(%struct.irq_data* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %28 [
    i32 128, label %21
    i32 131, label %24
    i32 132, label %25
    i32 130, label %26
    i32 129, label %27
  ]

21:                                               ; preds = %2
  %22 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %23 = call i32 @uic_mask_irq(%struct.irq_data* %22)
  store i32 0, i32* %3, align 4
  br label %94

24:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %31

25:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %31

26:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %31

27:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %94

31:                                               ; preds = %27, %26, %25, %24
  %32 = load i32, i32* %7, align 4
  %33 = sub i32 31, %32
  %34 = shl i32 1, %33
  %35 = xor i32 %34, -1
  store i32 %35, i32* %13, align 4
  %36 = load %struct.uic*, %struct.uic** %6, align 8
  %37 = getelementptr inbounds %struct.uic, %struct.uic* %36, i32 0, i32 0
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @raw_spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.uic*, %struct.uic** %6, align 8
  %41 = getelementptr inbounds %struct.uic, %struct.uic* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @UIC_TR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @mfdcr(i64 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.uic*, %struct.uic** %6, align 8
  %47 = getelementptr inbounds %struct.uic, %struct.uic* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @UIC_PR, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @mfdcr(i64 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %13, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub i32 31, %56
  %58 = shl i32 %55, %57
  %59 = or i32 %54, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sub i32 31, %64
  %66 = shl i32 %63, %65
  %67 = or i32 %62, %66
  store i32 %67, i32* %12, align 4
  %68 = load %struct.uic*, %struct.uic** %6, align 8
  %69 = getelementptr inbounds %struct.uic, %struct.uic* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @UIC_PR, align 8
  %72 = add nsw i64 %70, %71
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @mtdcr(i64 %72, i32 %73)
  %75 = load %struct.uic*, %struct.uic** %6, align 8
  %76 = getelementptr inbounds %struct.uic, %struct.uic* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @UIC_TR, align 8
  %79 = add nsw i64 %77, %78
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @mtdcr(i64 %79, i32 %80)
  %82 = load %struct.uic*, %struct.uic** %6, align 8
  %83 = getelementptr inbounds %struct.uic, %struct.uic* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @UIC_SR, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i32, i32* %13, align 4
  %88 = xor i32 %87, -1
  %89 = call i32 @mtdcr(i64 %86, i32 %88)
  %90 = load %struct.uic*, %struct.uic** %6, align 8
  %91 = getelementptr inbounds %struct.uic, %struct.uic* %90, i32 0, i32 0
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @raw_spin_unlock_irqrestore(i32* %91, i64 %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %31, %28, %21
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.uic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @uic_mask_irq(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mfdcr(i64) #1

declare dso_local i32 @mtdcr(i64, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

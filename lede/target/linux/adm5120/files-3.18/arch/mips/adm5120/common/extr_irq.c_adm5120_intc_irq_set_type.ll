; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/arch/mips/adm5120/common/extr_irq.c_adm5120_intc_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/arch/mips/adm5120/common/extr_irq.c_adm5120_intc_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INTC_REG_INT_MODE = common dso_local global i32 0, align 4
@ADM5120_INTC_IRQ_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @adm5120_intc_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm5120_intc_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %25 [
    i32 128, label %17
    i32 130, label %17
    i32 129, label %18
  ]

17:                                               ; preds = %2, %2
  br label %28

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %21 [
    i32 132, label %20
    i32 131, label %20
  ]

20:                                               ; preds = %18, %18
  br label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %21, %20
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %25, %24, %17
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %62

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %61 [
    i32 132, label %35
    i32 131, label %35
  ]

35:                                               ; preds = %33, %33
  %36 = load i32, i32* @INTC_REG_INT_MODE, align 4
  %37 = call i64 @intc_read_reg(i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 129
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ADM5120_INTC_IRQ_BASE, align 4
  %43 = sub i32 %41, %42
  %44 = shl i32 1, %43
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %8, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %8, align 8
  br label %57

48:                                               ; preds = %35
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @ADM5120_INTC_IRQ_BASE, align 4
  %51 = sub i32 %49, %50
  %52 = shl i32 1, %51
  %53 = xor i32 %52, -1
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %8, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %48, %40
  %58 = load i32, i32* @INTC_REG_INT_MODE, align 4
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @intc_write_reg(i32 %58, i64 %59)
  br label %61

61:                                               ; preds = %33, %57
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %31
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @intc_read_reg(i32) #1

declare dso_local i32 @intc_write_reg(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

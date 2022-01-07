; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_irq-msc01.c_mask_msc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_irq-msc01.c_mask_msc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@irq_base = common dso_local global i32 0, align 4
@MSC01_IC_DISL = common dso_local global i32 0, align 4
@MSC01_IC_DISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @mask_msc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mask_msc_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @irq_base, align 4
  %9 = add nsw i32 %8, 32
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* @MSC01_IC_DISL, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @irq_base, align 4
  %15 = sub i32 %13, %14
  %16 = shl i32 1, %15
  %17 = call i32 @MSCIC_WRITE(i32 %12, i32 %16)
  br label %26

18:                                               ; preds = %1
  %19 = load i32, i32* @MSC01_IC_DISH, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @irq_base, align 4
  %22 = sub i32 %20, %21
  %23 = sub i32 %22, 32
  %24 = shl i32 1, %23
  %25 = call i32 @MSCIC_WRITE(i32 %19, i32 %24)
  br label %26

26:                                               ; preds = %18, %11
  ret void
}

declare dso_local i32 @MSCIC_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

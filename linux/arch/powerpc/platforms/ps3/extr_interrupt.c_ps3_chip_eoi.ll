; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/ps3/extr_interrupt.c_ps3_chip_eoi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/ps3/extr_interrupt.c_ps3_chip_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.ps3_private = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ps3_chip_eoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps3_chip_eoi(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.ps3_private*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = call %struct.ps3_private* @irq_data_get_irq_chip_data(%struct.irq_data* %4)
  store %struct.ps3_private* %5, %struct.ps3_private** %3, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 63, %8
  %10 = load %struct.ps3_private*, %struct.ps3_private** %3, align 8
  %11 = getelementptr inbounds %struct.ps3_private, %struct.ps3_private* %10, i32 0, i32 2
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %1
  %15 = load %struct.ps3_private*, %struct.ps3_private** %3, align 8
  %16 = getelementptr inbounds %struct.ps3_private, %struct.ps3_private* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ps3_private*, %struct.ps3_private** %3, align 8
  %19 = getelementptr inbounds %struct.ps3_private, %struct.ps3_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %22 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @lv1_end_of_interrupt_ext(i32 %17, i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %14, %1
  ret void
}

declare dso_local %struct.ps3_private* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @lv1_end_of_interrupt_ext(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

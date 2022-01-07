; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/paravirt/extr_paravirt-irq.c_irq_core_set_enable_local.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/paravirt/extr_paravirt-irq.c_irq_core_set_enable_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.core_chip_data = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @irq_core_set_enable_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_core_set_enable_local(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.core_chip_data*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.irq_data*
  store %struct.irq_data* %7, %struct.irq_data** %3, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %9 = call %struct.core_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.core_chip_data* %9, %struct.core_chip_data** %4, align 8
  %10 = load %struct.core_chip_data*, %struct.core_chip_data** %4, align 8
  %11 = getelementptr inbounds %struct.core_chip_data, %struct.core_chip_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 256, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.core_chip_data*, %struct.core_chip_data** %4, align 8
  %15 = getelementptr inbounds %struct.core_chip_data, %struct.core_chip_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @set_c0_status(i32 %19)
  br label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @clear_c0_status(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  ret void
}

declare dso_local %struct.core_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @set_c0_status(i32) #1

declare dso_local i32 @clear_c0_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

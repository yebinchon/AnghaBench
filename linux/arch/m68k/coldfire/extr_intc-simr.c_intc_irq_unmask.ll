; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_intc-simr.c_intc_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_intc-simr.c_intc_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@MCFINT_VECBASE = common dso_local global i32 0, align 4
@MCFINTC2_CIMR = common dso_local global i64 0, align 8
@MCFINTC1_CIMR = common dso_local global i64 0, align 8
@MCFINTC0_CIMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @intc_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intc_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MCFINT_VECBASE, align 4
  %8 = sub i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i64, i64* @MCFINTC2_CIMR, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp ugt i32 %12, 128
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = sub i32 %15, 128
  %17 = load i64, i64* @MCFINTC2_CIMR, align 8
  %18 = call i32 @__raw_writeb(i32 %16, i64 %17)
  br label %35

19:                                               ; preds = %11, %1
  %20 = load i64, i64* @MCFINTC1_CIMR, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = icmp ugt i32 %23, 64
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = sub i32 %26, 64
  %28 = load i64, i64* @MCFINTC1_CIMR, align 8
  %29 = call i32 @__raw_writeb(i32 %27, i64 %28)
  br label %34

30:                                               ; preds = %22, %19
  %31 = load i32, i32* %3, align 4
  %32 = load i64, i64* @MCFINTC0_CIMR, align 8
  %33 = call i32 @__raw_writeb(i32 %31, i64 %32)
  br label %34

34:                                               ; preds = %30, %25
  br label %35

35:                                               ; preds = %34, %14
  ret void
}

declare dso_local i32 @__raw_writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

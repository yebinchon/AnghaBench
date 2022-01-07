; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_intc-simr.c_intc_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_intc-simr.c_intc_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@handle_edge_irq = common dso_local global i32 0, align 4
@MCFEPORT_EPPAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @intc_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intc_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %16 [
    i32 128, label %13
    i32 129, label %14
    i32 130, label %15
  ]

13:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %17

14:                                               ; preds = %2
  store i32 2, i32* %8, align 4
  br label %17

15:                                               ; preds = %2
  store i32 3, i32* %8, align 4
  br label %17

16:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %16, %15, %14, %13
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @handle_edge_irq, align 4
  %23 = call i32 @irq_set_handler(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @irq2ebit(i32 %25)
  %27 = mul nsw i32 %26, 2
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @MCFEPORT_EPPAR, align 4
  %29 = call i32 @__raw_readw(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 3, %31
  %33 = xor i32 %32, -1
  %34 = and i32 %30, %33
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %35, %36
  %38 = or i32 %34, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @MCFEPORT_EPPAR, align 4
  %41 = call i32 @__raw_writew(i32 %39, i32 %40)
  ret i32 0
}

declare dso_local i32 @irq_set_handler(i32, i32) #1

declare dso_local i32 @irq2ebit(i32) #1

declare dso_local i32 @__raw_readw(i32) #1

declare dso_local i32 @__raw_writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

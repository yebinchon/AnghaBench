; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_intc-simr.c_intc_irq_startup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_intc-simr.c_intc_irq_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@EINT1 = common dso_local global i32 0, align 4
@EINT7 = common dso_local global i32 0, align 4
@MCFEPORT_EPIER = common dso_local global i64 0, align 8
@MCFINT_VECBASE = common dso_local global i64 0, align 8
@MCFINTC2_ICR0 = common dso_local global i64 0, align 8
@MCFINTC1_ICR0 = common dso_local global i64 0, align 8
@MCFINTC0_ICR0 = common dso_local global i64 0, align 8
@MCFEPORT_EPDDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*)* @intc_irq_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intc_irq_startup(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @EINT1, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @EINT7, align 4
  %15 = icmp ule i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @irq2ebit(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i64, i64* @MCFEPORT_EPIER, align 8
  %20 = call i32 @__raw_readb(i64 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 1, %22
  %24 = or i32 %21, %23
  %25 = load i64, i64* @MCFEPORT_EPIER, align 8
  %26 = call i32 @__raw_writeb(i32 %24, i64 %25)
  br label %27

27:                                               ; preds = %16, %12, %1
  %28 = load i64, i64* @MCFINT_VECBASE, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = sub nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %3, align 4
  %33 = load i64, i64* @MCFINTC2_ICR0, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load i32, i32* %3, align 4
  %37 = icmp ugt i32 %36, 128
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i64, i64* @MCFINTC2_ICR0, align 8
  %40 = load i32, i32* %3, align 4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = sub nsw i64 %42, 128
  %44 = call i32 @__raw_writeb(i32 5, i64 %43)
  br label %65

45:                                               ; preds = %35, %27
  %46 = load i64, i64* @MCFINTC1_ICR0, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = icmp ugt i32 %49, 64
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i64, i64* @MCFINTC1_ICR0, align 8
  %53 = load i32, i32* %3, align 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = sub nsw i64 %55, 64
  %57 = call i32 @__raw_writeb(i32 5, i64 %56)
  br label %64

58:                                               ; preds = %48, %45
  %59 = load i64, i64* @MCFINTC0_ICR0, align 8
  %60 = load i32, i32* %3, align 4
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = call i32 @__raw_writeb(i32 5, i64 %62)
  br label %64

64:                                               ; preds = %58, %51
  br label %65

65:                                               ; preds = %64, %38
  %66 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %67 = call i32 @intc_irq_unmask(%struct.irq_data* %66)
  ret i32 0
}

declare dso_local i32 @irq2ebit(i32) #1

declare dso_local i32 @__raw_readb(i64) #1

declare dso_local i32 @__raw_writeb(i32, i64) #1

declare dso_local i32 @intc_irq_unmask(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

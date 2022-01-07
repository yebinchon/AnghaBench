; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_intc-2.c_intc_irq_startup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_intc-2.c_intc_irq_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@MCFINT_VECBASE = common dso_local global i32 0, align 4
@MCFICM_INTC0 = common dso_local global i64 0, align 8
@MCFINTC_ICR0 = common dso_local global i64 0, align 8
@intc_intpri = common dso_local global i32 0, align 4
@EINT1 = common dso_local global i32 0, align 4
@EINT7 = common dso_local global i32 0, align 4
@EINT0 = common dso_local global i64 0, align 8
@MCFEPORT_EPDDR = common dso_local global i64 0, align 8
@MCFEPORT_EPIER = common dso_local global i64 0, align 8
@MCFICM_INTC1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*)* @intc_irq_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intc_irq_startup(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MCFINT_VECBASE, align 4
  %10 = sub i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i64, i64* @MCFICM_INTC0, align 8
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* @MCFINTC_ICR0, align 8
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 63
  %15 = zext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = load i64, i64* %4, align 8
  %18 = add i64 %17, %16
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @__raw_readb(i64 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @intc_intpri, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* @intc_intpri, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @__raw_writeb(i32 %23, i64 %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %29 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @EINT1, align 4
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %27
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @EINT7, align 4
  %37 = icmp ule i32 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %34
  %39 = load i64, i64* @EINT0, align 8
  %40 = load i32, i32* %3, align 4
  %41 = zext i32 %40 to i64
  %42 = sub nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %3, align 4
  %44 = load i64, i64* @MCFEPORT_EPDDR, align 8
  %45 = call i64 @__raw_readb(i64 %44)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %3, align 4
  %49 = shl i32 1, %48
  %50 = xor i32 %49, -1
  %51 = and i32 %47, %50
  %52 = load i64, i64* @MCFEPORT_EPDDR, align 8
  %53 = call i32 @__raw_writeb(i32 %51, i64 %52)
  %54 = load i64, i64* @MCFEPORT_EPIER, align 8
  %55 = call i64 @__raw_readb(i64 %54)
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %3, align 4
  %59 = shl i32 1, %58
  %60 = or i32 %57, %59
  %61 = load i64, i64* @MCFEPORT_EPIER, align 8
  %62 = call i32 @__raw_writeb(i32 %60, i64 %61)
  br label %63

63:                                               ; preds = %38, %34, %27
  %64 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %65 = call i32 @intc_irq_unmask(%struct.irq_data* %64)
  ret i32 0
}

declare dso_local i64 @__raw_readb(i64) #1

declare dso_local i32 @__raw_writeb(i32, i64) #1

declare dso_local i32 @intc_irq_unmask(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

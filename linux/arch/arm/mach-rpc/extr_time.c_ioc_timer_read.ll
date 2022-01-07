; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-rpc/extr_time.c_ioc_timer_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-rpc/extr_time.c_ioc_timer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }

@IOC_T0LATCH = common dso_local global i32 0, align 4
@IOC_T0CNTL = common dso_local global i32 0, align 4
@IOC_T0CNTH = common dso_local global i32 0, align 4
@IOC_IRQREQA = common dso_local global i32 0, align 4
@ioc_time = common dso_local global i64 0, align 8
@RPC_LATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clocksource*)* @ioc_timer_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ioc_timer_read(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load i32, i32* @IOC_T0LATCH, align 4
  %11 = call i32 @ioc_writeb(i32 0, i32 %10)
  %12 = call i32 (...) @barrier()
  %13 = load i32, i32* @IOC_T0CNTL, align 4
  %14 = call i32 @ioc_readb(i32 %13)
  %15 = load i32, i32* @IOC_T0CNTH, align 4
  %16 = call i32 @ioc_readb(i32 %15)
  %17 = shl i32 %16, 8
  %18 = or i32 %14, %17
  store i32 %18, i32* %3, align 4
  %19 = call i32 (...) @barrier()
  %20 = load i32, i32* @IOC_IRQREQA, align 4
  %21 = call i32 @ioc_readb(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = call i32 (...) @barrier()
  %23 = load i32, i32* @IOC_T0LATCH, align 4
  %24 = call i32 @ioc_writeb(i32 0, i32 %23)
  %25 = call i32 (...) @barrier()
  %26 = load i32, i32* @IOC_T0CNTL, align 4
  %27 = call i32 @ioc_readb(i32 %26)
  %28 = load i32, i32* @IOC_T0CNTH, align 4
  %29 = call i32 @ioc_readb(i32 %28)
  %30 = shl i32 %29, 8
  %31 = or i32 %27, %30
  store i32 %31, i32* %4, align 4
  %32 = load i64, i64* @ioc_time, align 8
  %33 = load i64, i64* @RPC_LATCH, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = sub nsw i64 %34, %36
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @local_irq_restore(i64 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %1
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i64, i64* @RPC_LATCH, align 8
  %49 = load i64, i64* %7, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %47, %43
  br label %61

52:                                               ; preds = %1
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* @RPC_LATCH, align 8
  %58 = load i64, i64* %7, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %7, align 8
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %51
  %62 = load i64, i64* %7, align 8
  ret i64 %62
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @ioc_writeb(i32, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @ioc_readb(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_low_i2c.c_kw_i2c_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_low_i2c.c_kw_i2c_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmac_i2c_host_kw = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@reg_isr = common dso_local global i32 0, align 4
@state_idle = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@KW_POLL_TIMEOUT = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @kw_i2c_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kw_i2c_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pmac_i2c_host_kw*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.pmac_i2c_host_kw*
  store %struct.pmac_i2c_host_kw* %8, %struct.pmac_i2c_host_kw** %5, align 8
  %9 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %5, align 8
  %10 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %9, i32 0, i32 1
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %5, align 8
  %14 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %13, i32 0, i32 2
  %15 = call i32 @del_timer(%struct.TYPE_3__* %14)
  %16 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %5, align 8
  %17 = load i32, i32* @reg_isr, align 4
  %18 = call i32 @kw_read_reg(i32 %17)
  %19 = call i32 @kw_i2c_handle_interrupt(%struct.pmac_i2c_host_kw* %16, i32 %18)
  %20 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %5, align 8
  %21 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @state_idle, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i64, i64* @KW_POLL_TIMEOUT, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %5, align 8
  %30 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %5, align 8
  %33 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %32, i32 0, i32 2
  %34 = call i32 @add_timer(%struct.TYPE_3__* %33)
  br label %35

35:                                               ; preds = %25, %2
  %36 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %5, align 8
  %37 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %36, i32 0, i32 1
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @kw_i2c_handle_interrupt(%struct.pmac_i2c_host_kw*, i32) #1

declare dso_local i32 @kw_read_reg(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

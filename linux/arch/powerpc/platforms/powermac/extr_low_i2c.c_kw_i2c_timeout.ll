; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_low_i2c.c_kw_i2c_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_low_i2c.c_kw_i2c_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmac_i2c_host_kw = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.timer_list = type { i32 }

@timeout_timer = common dso_local global i32 0, align 4
@reg_isr = common dso_local global i32 0, align 4
@state_idle = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@KW_POLL_TIMEOUT = common dso_local global i64 0, align 8
@host = common dso_local global %struct.pmac_i2c_host_kw* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @kw_i2c_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kw_i2c_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.pmac_i2c_host_kw*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %3, align 8
  %6 = ptrtoint %struct.pmac_i2c_host_kw* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timeout_timer, align 4
  %9 = call %struct.pmac_i2c_host_kw* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.pmac_i2c_host_kw* %9, %struct.pmac_i2c_host_kw** %3, align 8
  %10 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %3, align 8
  %11 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %10, i32 0, i32 1
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %3, align 8
  %15 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %14, i32 0, i32 2
  %16 = call i64 @timer_pending(%struct.TYPE_3__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %40

19:                                               ; preds = %1
  %20 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %3, align 8
  %21 = load i32, i32* @reg_isr, align 4
  %22 = call i32 @kw_read_reg(i32 %21)
  %23 = call i32 @kw_i2c_handle_interrupt(%struct.pmac_i2c_host_kw* %20, i32 %22)
  %24 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %3, align 8
  %25 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @state_idle, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %19
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* @KW_POLL_TIMEOUT, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %3, align 8
  %34 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %3, align 8
  %37 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %36, i32 0, i32 2
  %38 = call i32 @add_timer(%struct.TYPE_3__* %37)
  br label %39

39:                                               ; preds = %29, %19
  br label %40

40:                                               ; preds = %39, %18
  %41 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %3, align 8
  %42 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %41, i32 0, i32 1
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  ret void
}

declare dso_local %struct.pmac_i2c_host_kw* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @timer_pending(%struct.TYPE_3__*) #1

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

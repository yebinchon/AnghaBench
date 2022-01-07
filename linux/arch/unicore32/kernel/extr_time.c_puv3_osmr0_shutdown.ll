; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_time.c_puv3_osmr0_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_time.c_puv3_osmr0_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@OST_OIER = common dso_local global i32 0, align 4
@OST_OIER_E0 = common dso_local global i32 0, align 4
@OST_OSSR = common dso_local global i32 0, align 4
@OST_OSSR_M0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*)* @puv3_osmr0_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puv3_osmr0_shutdown(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %3 = load i32, i32* @OST_OIER, align 4
  %4 = call i32 @readl(i32 %3)
  %5 = load i32, i32* @OST_OIER_E0, align 4
  %6 = xor i32 %5, -1
  %7 = and i32 %4, %6
  %8 = load i32, i32* @OST_OIER, align 4
  %9 = call i32 @writel(i32 %7, i32 %8)
  %10 = load i32, i32* @OST_OSSR, align 4
  %11 = call i32 @readl(i32 %10)
  %12 = load i32, i32* @OST_OSSR_M0, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = load i32, i32* @OST_OSSR, align 4
  %16 = call i32 @writel(i32 %14, i32 %15)
  ret i32 0
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_network.c_iss_net_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_network.c_iss_net_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_net_private = type { i32, i64, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@lp = common dso_local global %struct.iss_net_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @iss_net_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iss_net_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.iss_net_private*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %5 = ptrtoint %struct.iss_net_private* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.iss_net_private* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.iss_net_private* %8, %struct.iss_net_private** %3, align 8
  %9 = call i32 (...) @iss_net_poll()
  %10 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %11 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %14 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %13, i32 0, i32 2
  %15 = load i64, i64* @jiffies, align 8
  %16 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %17 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = call i32 @mod_timer(i32* %14, i64 %19)
  %21 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %22 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  ret void
}

declare dso_local %struct.iss_net_private* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @iss_net_poll(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

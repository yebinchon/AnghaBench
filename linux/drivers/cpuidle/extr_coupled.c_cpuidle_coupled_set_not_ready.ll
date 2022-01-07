; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_coupled.c_cpuidle_coupled_set_not_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_coupled.c_cpuidle_coupled_set_not_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_coupled = type { i32, i32 }

@WAITING_BITS = common dso_local global i32 0, align 4
@MAX_WAITING_CPUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_coupled*)* @cpuidle_coupled_set_not_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuidle_coupled_set_not_ready(%struct.cpuidle_coupled* %0) #0 {
  %2 = alloca %struct.cpuidle_coupled*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cpuidle_coupled* %0, %struct.cpuidle_coupled** %2, align 8
  %5 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %2, align 8
  %6 = getelementptr inbounds %struct.cpuidle_coupled, %struct.cpuidle_coupled* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %2, align 8
  %9 = getelementptr inbounds %struct.cpuidle_coupled, %struct.cpuidle_coupled* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @WAITING_BITS, align 4
  %12 = shl i32 %10, %11
  %13 = or i32 %7, %12
  store i32 %13, i32* %3, align 4
  %14 = load %struct.cpuidle_coupled*, %struct.cpuidle_coupled** %2, align 8
  %15 = getelementptr inbounds %struct.cpuidle_coupled, %struct.cpuidle_coupled* %14, i32 0, i32 1
  %16 = load i32, i32* @MAX_WAITING_CPUS, align 4
  %17 = sub nsw i32 0, %16
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @atomic_add_unless(i32* %15, i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  br label %26

26:                                               ; preds = %23, %22
  %27 = phi i32 [ 0, %22 ], [ %25, %23 ]
  ret i32 %27
}

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

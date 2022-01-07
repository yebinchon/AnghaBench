; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_haltpoll.c_adjust_poll_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_haltpoll.c_adjust_poll_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32 }

@NSEC_PER_USEC = common dso_local global i32 0, align 4
@guest_halt_poll_ns = common dso_local global i32 0, align 4
@guest_halt_poll_grow = common dso_local global i32 0, align 4
@guest_halt_poll_grow_start = common dso_local global i32 0, align 4
@guest_halt_poll_allow_shrink = common dso_local global i64 0, align 8
@guest_halt_poll_shrink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuidle_device*, i32)* @adjust_poll_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_poll_limit(%struct.cpuidle_device* %0, i32 %1) #0 {
  %3 = alloca %struct.cpuidle_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NSEC_PER_USEC, align 4
  %10 = mul i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %13 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ugt i32 %11, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @guest_halt_poll_ns, align 4
  %19 = icmp ule i32 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %22 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @guest_halt_poll_grow, align 4
  %25 = mul i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @guest_halt_poll_grow_start, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @guest_halt_poll_grow_start, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %20
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @guest_halt_poll_ns, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @guest_halt_poll_ns, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %40 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %65

41:                                               ; preds = %16, %2
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @guest_halt_poll_ns, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load i64, i64* @guest_halt_poll_allow_shrink, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load i32, i32* @guest_halt_poll_shrink, align 4
  store i32 %49, i32* %7, align 4
  %50 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %51 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %60

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %5, align 4
  %59 = udiv i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %55
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %63 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %45, %41
  br label %65

65:                                               ; preds = %64, %37
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

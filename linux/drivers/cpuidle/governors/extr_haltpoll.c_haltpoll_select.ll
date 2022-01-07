; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_haltpoll.c_haltpoll_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_haltpoll.c_haltpoll_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { i32 }
%struct.cpuidle_device = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*, i32*)* @haltpoll_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @haltpoll_select(%struct.cpuidle_driver* %0, %struct.cpuidle_device* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuidle_driver*, align 8
  %6 = alloca %struct.cpuidle_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.cpuidle_driver* %0, %struct.cpuidle_driver** %5, align 8
  store %struct.cpuidle_device* %1, %struct.cpuidle_device** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %10 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cpuidle_governor_latency_req(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %14 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %3
  %21 = load i32*, i32** %7, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %4, align 4
  br label %43

22:                                               ; preds = %17
  %23 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %24 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %43

28:                                               ; preds = %22
  %29 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %30 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %35 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %43

39:                                               ; preds = %33
  %40 = load i32*, i32** %7, align 8
  store i32 0, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %43

41:                                               ; preds = %28
  %42 = load i32*, i32** %7, align 8
  store i32 0, i32* %42, align 4
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %39, %38, %27, %20
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @cpuidle_governor_latency_req(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

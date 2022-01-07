; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_teo.c_teo_find_shallower_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_teo.c_teo_find_shallower_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.cpuidle_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*, i32, i32)* @teo_find_shallower_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @teo_find_shallower_state(%struct.cpuidle_driver* %0, %struct.cpuidle_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cpuidle_driver*, align 8
  %6 = alloca %struct.cpuidle_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpuidle_driver* %0, %struct.cpuidle_driver** %5, align 8
  store %struct.cpuidle_device* %1, %struct.cpuidle_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %50, %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %12
  %16 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %17 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %15
  %26 = load %struct.cpuidle_device*, %struct.cpuidle_device** %6, align 8
  %27 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25, %15
  br label %50

36:                                               ; preds = %25
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %39 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = icmp ule i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %53

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %35
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %9, align 4
  br label %12

53:                                               ; preds = %48, %12
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

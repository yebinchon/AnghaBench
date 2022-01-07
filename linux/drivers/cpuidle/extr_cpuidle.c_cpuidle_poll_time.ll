; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle.c_cpuidle_poll_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle.c_cpuidle_poll_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.cpuidle_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@TICK_NSEC = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpuidle_poll_time(%struct.cpuidle_driver* %0, %struct.cpuidle_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpuidle_driver*, align 8
  %5 = alloca %struct.cpuidle_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cpuidle_driver* %0, %struct.cpuidle_driver** %4, align 8
  store %struct.cpuidle_device* %1, %struct.cpuidle_device** %5, align 8
  %8 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %9 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %14 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %3, align 4
  br label %67

16:                                               ; preds = %2
  %17 = load i32, i32* @TICK_NSEC, align 4
  store i32 %17, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %18

18:                                               ; preds = %57, %16
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %4, align 8
  %21 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %18
  %25 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %4, align 8
  %26 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %24
  %35 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %36 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34, %24
  br label %57

45:                                               ; preds = %34
  %46 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %4, align 8
  %47 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @NSEC_PER_USEC, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %45, %44
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %18

60:                                               ; preds = %18
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %63 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %65 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %60, %12
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

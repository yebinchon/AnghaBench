; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_tmu_channel = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_tmu_channel*)* @sh_tmu_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_tmu_disable(%struct.sh_tmu_channel* %0) #0 {
  %2 = alloca %struct.sh_tmu_channel*, align 8
  store %struct.sh_tmu_channel* %0, %struct.sh_tmu_channel** %2, align 8
  %3 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %2, align 8
  %4 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i64 @WARN_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %35

11:                                               ; preds = %1
  %12 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %2, align 8
  %13 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %35

18:                                               ; preds = %11
  %19 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %2, align 8
  %20 = call i32 @__sh_tmu_disable(%struct.sh_tmu_channel* %19)
  %21 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %2, align 8
  %22 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @dev_pm_syscore_device(i32* %26, i32 0)
  %28 = load %struct.sh_tmu_channel*, %struct.sh_tmu_channel** %2, align 8
  %29 = getelementptr inbounds %struct.sh_tmu_channel, %struct.sh_tmu_channel* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @pm_runtime_put(i32* %33)
  br label %35

35:                                               ; preds = %18, %17, %10
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @__sh_tmu_disable(%struct.sh_tmu_channel*) #1

declare dso_local i32 @dev_pm_syscore_device(i32*, i32) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

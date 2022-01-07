; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-powernv.c_powernv_cpuidle_driver_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-powernv.c_powernv_cpuidle_driver_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { i64, %struct.cpumask*, %struct.TYPE_2__* }
%struct.cpumask = type { i32 }
%struct.TYPE_2__ = type { i32* }

@powernv_idle_driver = common dso_local global %struct.cpuidle_driver zeroinitializer, align 8
@max_idle_state = common dso_local global i32 0, align 4
@cpuidle_state_table = common dso_local global %struct.TYPE_2__* null, align 8
@cpu_present_mask = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @powernv_cpuidle_driver_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernv_cpuidle_driver_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cpuidle_driver*, align 8
  store %struct.cpuidle_driver* @powernv_idle_driver, %struct.cpuidle_driver** %2, align 8
  %3 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %2, align 8
  %4 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %36, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @max_idle_state, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_state_table, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %36

18:                                               ; preds = %9
  %19 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %2, align 8
  %20 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %2, align 8
  %23 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_state_table, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = bitcast %struct.TYPE_2__* %25 to i8*
  %31 = bitcast %struct.TYPE_2__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 8, i1 false)
  %32 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %2, align 8
  %33 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  br label %36

36:                                               ; preds = %18, %17
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %5

39:                                               ; preds = %5
  %40 = load i64, i64* @cpu_present_mask, align 8
  %41 = inttoptr i64 %40 to %struct.cpumask*
  %42 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %2, align 8
  %43 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %42, i32 0, i32 1
  store %struct.cpumask* %41, %struct.cpumask** %43, align 8
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

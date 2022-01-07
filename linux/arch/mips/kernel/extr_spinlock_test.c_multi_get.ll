; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_spinlock_test.c_multi_get.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_spinlock_test.c_multi_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spin_multi_state = type { i32, i32, i32, i32, i32 }
%struct.spin_multi_per_thread = type { i32, %struct.spin_multi_state* }

@.str = private unnamed_addr constant [10 x i8] c"multi_get\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @multi_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multi_get(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spin_multi_state, align 4
  %7 = alloca %struct.spin_multi_per_thread, align 8
  %8 = alloca %struct.spin_multi_per_thread, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = call i32 @__RAW_SPIN_LOCK_UNLOCKED(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds %struct.spin_multi_state, %struct.spin_multi_state* %6, i32 0, i32 4
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.spin_multi_state, %struct.spin_multi_state* %6, i32 0, i32 0
  store i32 1000000, i32* %11, align 4
  %12 = getelementptr inbounds %struct.spin_multi_state, %struct.spin_multi_state* %6, i32 0, i32 3
  %13 = call i32 @atomic_set(i32* %12, i32 2)
  %14 = getelementptr inbounds %struct.spin_multi_state, %struct.spin_multi_state* %6, i32 0, i32 2
  %15 = call i32 @atomic_set(i32* %14, i32 2)
  %16 = getelementptr inbounds %struct.spin_multi_state, %struct.spin_multi_state* %6, i32 0, i32 1
  %17 = call i32 @atomic_set(i32* %16, i32 2)
  %18 = getelementptr inbounds %struct.spin_multi_per_thread, %struct.spin_multi_per_thread* %7, i32 0, i32 1
  store %struct.spin_multi_state* %6, %struct.spin_multi_state** %18, align 8
  %19 = getelementptr inbounds %struct.spin_multi_per_thread, %struct.spin_multi_per_thread* %8, i32 0, i32 1
  store %struct.spin_multi_state* %6, %struct.spin_multi_state** %19, align 8
  %20 = call i32 @kthread_run(i32 (%struct.spin_multi_per_thread*)* @multi_other, %struct.spin_multi_per_thread* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @multi_other(%struct.spin_multi_per_thread* %7)
  %22 = call i32 (...) @ktime_get()
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = getelementptr inbounds %struct.spin_multi_per_thread, %struct.spin_multi_per_thread* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ktime_us_delta(i32 %23, i32 %25)
  %27 = load i32*, i32** %4, align 8
  store i32 %26, i32* %27, align 4
  ret i32 0
}

declare dso_local i32 @__RAW_SPIN_LOCK_UNLOCKED(i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kthread_run(i32 (%struct.spin_multi_per_thread*)*, %struct.spin_multi_per_thread*, i8*) #1

declare dso_local i32 @multi_other(%struct.spin_multi_per_thread*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_us_delta(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

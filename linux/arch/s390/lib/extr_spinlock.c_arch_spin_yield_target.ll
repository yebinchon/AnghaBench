; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/lib/extr_spinlock.c_arch_spin_yield_target.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/lib/extr_spinlock.c_arch_spin_yield_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spin_wait = type { i32, %struct.spin_wait* }

@_Q_LOCK_CPU_MASK = common dso_local global i32 0, align 4
@_Q_TAIL_CPU_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.spin_wait*)* @arch_spin_yield_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arch_spin_yield_target(i32 %0, %struct.spin_wait* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.spin_wait*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.spin_wait* %1, %struct.spin_wait** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @_Q_LOCK_CPU_MASK, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @_Q_LOCK_CPU_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %3, align 4
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.spin_wait*, %struct.spin_wait** %5, align 8
  %16 = icmp eq %struct.spin_wait* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load %struct.spin_wait*, %struct.spin_wait** %5, align 8
  %19 = getelementptr inbounds %struct.spin_wait, %struct.spin_wait* %18, i32 0, i32 1
  %20 = load %struct.spin_wait*, %struct.spin_wait** %19, align 8
  %21 = icmp eq %struct.spin_wait* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %14
  store i32 0, i32* %3, align 4
  br label %39

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %29, %23
  %25 = load %struct.spin_wait*, %struct.spin_wait** %5, align 8
  %26 = getelementptr inbounds %struct.spin_wait, %struct.spin_wait* %25, i32 0, i32 1
  %27 = load %struct.spin_wait*, %struct.spin_wait** %26, align 8
  %28 = icmp ne %struct.spin_wait* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.spin_wait*, %struct.spin_wait** %5, align 8
  %31 = getelementptr inbounds %struct.spin_wait, %struct.spin_wait* %30, i32 0, i32 1
  %32 = load %struct.spin_wait*, %struct.spin_wait** %31, align 8
  store %struct.spin_wait* %32, %struct.spin_wait** %5, align 8
  br label %24

33:                                               ; preds = %24
  %34 = load %struct.spin_wait*, %struct.spin_wait** %5, align 8
  %35 = getelementptr inbounds %struct.spin_wait, %struct.spin_wait* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @_Q_TAIL_CPU_OFFSET, align 4
  %38 = ashr i32 %36, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %33, %22, %10
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

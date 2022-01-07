; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/lib/extr_spinlock.c_arch_spin_lock_classic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/lib/extr_spinlock.c_arch_spin_lock_classic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SPINLOCK_LOCKVAL = common dso_local global i32 0, align 4
@spin_retry = common dso_local global i32 0, align 4
@_Q_LOCK_CPU_MASK = common dso_local global i32 0, align 4
@_Q_TAIL_MASK = common dso_local global i32 0, align 4
@MACHINE_IS_LPAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @arch_spin_lock_classic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arch_spin_lock_classic(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load i32, i32* @SPINLOCK_LOCKVAL, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @READ_ONCE(i32 %11)
  %13 = call i32 @arch_spin_yield_target(i32 %12, i32* null)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 1
  %19 = call i64 @arch_vcpu_is_preempted(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 1
  %24 = call i32 @smp_yield_cpu(i32 %23)
  br label %25

25:                                               ; preds = %21, %16, %1
  %26 = load i32, i32* @spin_retry, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %25, %49, %54, %68
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @arch_load_niai4(i32* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @_Q_LOCK_CPU_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @_Q_TAIL_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %5, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @arch_cmpxchg_niai8(i32* %43, i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  ret void

49:                                               ; preds = %36
  br label %27

50:                                               ; preds = %27
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  %53 = icmp sge i32 %51, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %27

55:                                               ; preds = %50
  %56 = load i32, i32* @spin_retry, align 4
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* @MACHINE_IS_LPAR, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 %60, 1
  %62 = call i64 @arch_vcpu_is_preempted(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59, %55
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %65, 1
  %67 = call i32 @smp_yield_cpu(i32 %66)
  br label %68

68:                                               ; preds = %64, %59
  br label %27
}

declare dso_local i32 @arch_spin_yield_target(i32, i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @arch_vcpu_is_preempted(i32) #1

declare dso_local i32 @smp_yield_cpu(i32) #1

declare dso_local i32 @arch_load_niai4(i32*) #1

declare dso_local i64 @arch_cmpxchg_niai8(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/lib/extr_spinlock.c_arch_spin_lock_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/lib/extr_spinlock.c_arch_spin_lock_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spin_wait = type { i32 }

@spin_wait = common dso_local global i32* null, align 8
@_Q_TAIL_CPU_OFFSET = common dso_local global i32 0, align 4
@_Q_TAIL_IDX_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_spin_lock_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spin_wait*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32*, i32** @spin_wait, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.spin_wait* @per_cpu_ptr(i32* %6, i32 %7)
  store %struct.spin_wait* %8, %struct.spin_wait** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %25, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load %struct.spin_wait*, %struct.spin_wait** %3, align 8
  %14 = call i32 @memset(%struct.spin_wait* %13, i32 0, i32 4)
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  %17 = load i32, i32* @_Q_TAIL_CPU_OFFSET, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @_Q_TAIL_IDX_OFFSET, align 4
  %21 = shl i32 %19, %20
  %22 = add nsw i32 %18, %21
  %23 = load %struct.spin_wait*, %struct.spin_wait** %3, align 8
  %24 = getelementptr inbounds %struct.spin_wait, %struct.spin_wait* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = load %struct.spin_wait*, %struct.spin_wait** %3, align 8
  %29 = getelementptr inbounds %struct.spin_wait, %struct.spin_wait* %28, i32 1
  store %struct.spin_wait* %29, %struct.spin_wait** %3, align 8
  br label %9

30:                                               ; preds = %9
  ret void
}

declare dso_local %struct.spin_wait* @per_cpu_ptr(i32*, i32) #1

declare dso_local i32 @memset(%struct.spin_wait*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

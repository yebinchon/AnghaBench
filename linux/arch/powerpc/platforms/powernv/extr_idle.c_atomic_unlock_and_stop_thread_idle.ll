; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_idle.c_atomic_unlock_and_stop_thread_idle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_idle.c_atomic_unlock_and_stop_thread_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@paca_ptrs = common dso_local global %struct.TYPE_2__** null, align 8
@PNV_CORE_IDLE_LOCK_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @atomic_unlock_and_stop_thread_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atomic_unlock_and_stop_thread_idle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = call i32 (...) @raw_smp_processor_id()
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @cpu_first_thread_sibling(i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i64 @cpu_thread_in_core(i32 %11)
  %13 = shl i64 1, %12
  store i64 %13, i64* %3, align 8
  %14 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @paca_ptrs, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %14, i64 %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64* %19, i64** %4, align 8
  %20 = load i64*, i64** %4, align 8
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @READ_ONCE(i64 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @PNV_CORE_IDLE_LOCK_BIT, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = call i32 @BUG_ON(i64 %29)
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %3, align 8
  %33 = and i64 %31, %32
  %34 = call i32 @BUG_ON(i64 %33)
  br label %35

35:                                               ; preds = %52, %0
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %3, align 8
  %38 = or i64 %36, %37
  %39 = load i64, i64* @PNV_CORE_IDLE_LOCK_BIT, align 8
  %40 = xor i64 %39, -1
  %41 = and i64 %38, %40
  store i64 %41, i64* %6, align 8
  %42 = load i64*, i64** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @cmpxchg(i64* %42, i64 %43, i64 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp ne i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = load i64, i64* %7, align 8
  store i64 %53, i64* %5, align 8
  br label %35

54:                                               ; preds = %35
  ret void
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @cpu_first_thread_sibling(i32) #1

declare dso_local i64 @cpu_thread_in_core(i32) #1

declare dso_local i64 @READ_ONCE(i64) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i64 @cmpxchg(i64*, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

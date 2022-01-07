; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_idle.c_atomic_lock_thread_idle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_idle.c_atomic_lock_thread_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@paca_ptrs = common dso_local global %struct.TYPE_2__** null, align 8
@NR_PNV_CORE_IDLE_LOCK_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @atomic_lock_thread_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atomic_lock_thread_idle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = call i32 (...) @raw_smp_processor_id()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @cpu_first_thread_sibling(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @paca_ptrs, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %7, i64 %9
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i64* %12, i64** %3, align 8
  br label %13

13:                                               ; preds = %19, %0
  %14 = load i32, i32* @NR_PNV_CORE_IDLE_LOCK_BIT, align 4
  %15 = load i64*, i64** %3, align 8
  %16 = call i32 @test_and_set_bit_lock(i32 %14, i64* %15)
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 (...) @barrier()
  br label %13

21:                                               ; preds = %13
  ret void
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @cpu_first_thread_sibling(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_and_set_bit_lock(i32, i64*) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

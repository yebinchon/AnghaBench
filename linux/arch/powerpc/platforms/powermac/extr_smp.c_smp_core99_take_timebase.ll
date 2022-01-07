; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_smp.c_smp_core99_take_timebase.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_smp.c_smp_core99_take_timebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tb_req = common dso_local global i32 0, align 4
@timebase = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @smp_core99_take_timebase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_core99_take_timebase() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 @local_irq_save(i64 %2)
  store i32 1, i32* @tb_req, align 4
  %4 = call i32 (...) @mb()
  br label %5

5:                                                ; preds = %9, %0
  %6 = load i32, i32* @timebase, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = call i32 (...) @barrier()
  br label %5

11:                                               ; preds = %5
  %12 = call i32 (...) @mb()
  %13 = load i32, i32* @timebase, align 4
  %14 = ashr i32 %13, 32
  %15 = load i32, i32* @timebase, align 4
  %16 = call i32 @set_tb(i32 %14, i32 %15)
  store i32 0, i32* @timebase, align 4
  %17 = call i32 (...) @mb()
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @local_irq_restore(i64 %18)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @set_tb(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

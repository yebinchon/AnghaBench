; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_smp.c_smp_core99_give_timebase.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_smp.c_smp_core99_give_timebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tb_req = common dso_local global i64 0, align 8
@timebase = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @smp_core99_give_timebase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_core99_give_timebase() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 @local_irq_save(i64 %2)
  br label %4

4:                                                ; preds = %8, %0
  %5 = load i64, i64* @tb_req, align 8
  %6 = icmp ne i64 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = call i32 (...) @barrier()
  br label %4

10:                                               ; preds = %4
  store i64 0, i64* @tb_req, align 8
  %11 = call i32 @pmac_tb_freeze(i32 1)
  %12 = call i32 (...) @mb()
  %13 = call i64 (...) @get_tb()
  store i64 %13, i64* @timebase, align 8
  %14 = call i32 (...) @mb()
  br label %15

15:                                               ; preds = %18, %10
  %16 = load i64, i64* @timebase, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @barrier()
  br label %15

20:                                               ; preds = %15
  %21 = call i32 (...) @mb()
  %22 = call i32 @pmac_tb_freeze(i32 0)
  %23 = call i32 (...) @mb()
  %24 = load i64, i64* %1, align 8
  %25 = call i32 @local_irq_restore(i64 %24)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @pmac_tb_freeze(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @get_tb(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

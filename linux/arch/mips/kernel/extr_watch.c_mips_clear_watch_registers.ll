; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_watch.c_mips_clear_watch_registers.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_watch.c_mips_clear_watch_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_clear_watch_registers() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 4
  switch i32 %1, label %2 [
    i32 8, label %4
    i32 7, label %6
    i32 6, label %8
    i32 5, label %10
    i32 4, label %12
    i32 3, label %14
    i32 2, label %16
    i32 1, label %18
  ]

2:                                                ; preds = %0
  %3 = call i32 (...) @BUG()
  br label %4

4:                                                ; preds = %0, %2
  %5 = call i32 @write_c0_watchlo7(i32 0)
  br label %6

6:                                                ; preds = %0, %4
  %7 = call i32 @write_c0_watchlo6(i32 0)
  br label %8

8:                                                ; preds = %0, %6
  %9 = call i32 @write_c0_watchlo5(i32 0)
  br label %10

10:                                               ; preds = %0, %8
  %11 = call i32 @write_c0_watchlo4(i32 0)
  br label %12

12:                                               ; preds = %0, %10
  %13 = call i32 @write_c0_watchlo3(i32 0)
  br label %14

14:                                               ; preds = %0, %12
  %15 = call i32 @write_c0_watchlo2(i32 0)
  br label %16

16:                                               ; preds = %0, %14
  %17 = call i32 @write_c0_watchlo1(i32 0)
  br label %18

18:                                               ; preds = %0, %16
  %19 = call i32 @write_c0_watchlo0(i32 0)
  br label %20

20:                                               ; preds = %18
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @write_c0_watchlo7(i32) #1

declare dso_local i32 @write_c0_watchlo6(i32) #1

declare dso_local i32 @write_c0_watchlo5(i32) #1

declare dso_local i32 @write_c0_watchlo4(i32) #1

declare dso_local i32 @write_c0_watchlo3(i32) #1

declare dso_local i32 @write_c0_watchlo2(i32) #1

declare dso_local i32 @write_c0_watchlo1(i32) #1

declare dso_local i32 @write_c0_watchlo0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

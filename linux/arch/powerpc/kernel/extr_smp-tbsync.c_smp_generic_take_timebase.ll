; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_smp-tbsync.c_smp_generic_take_timebase.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_smp-tbsync.c_smp_generic_take_timebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }

@running = common dso_local global i32 0, align 4
@tbsync = common dso_local global %struct.TYPE_2__* null, align 8
@kExit = common dso_local global i32 0, align 4
@kSetAndTest = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_generic_take_timebase() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @local_irq_save(i64 %4)
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* @running, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 (...) @barrier()
  br label %6

12:                                               ; preds = %6
  %13 = call i32 (...) @rmb()
  br label %14

14:                                               ; preds = %60, %12
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tbsync, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  br label %17

17:                                               ; preds = %23, %14
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tbsync, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 (...) @barrier()
  br label %17

25:                                               ; preds = %17
  %26 = call i32 (...) @rmb()
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tbsync, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %1, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tbsync, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %2, align 4
  %33 = call i32 (...) @mb()
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tbsync, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @kExit, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  br label %65

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %46, %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tbsync, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 (...) @barrier()
  br label %41

48:                                               ; preds = %41
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @kSetAndTest, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i32, i32* %2, align 4
  %54 = ashr i32 %53, 32
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = and i64 %56, 4294967295
  %58 = trunc i64 %57 to i32
  %59 = call i32 @set_tb(i32 %54, i32 %58)
  br label %60

60:                                               ; preds = %52, %48
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tbsync, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @enter_contest(i32 %63, i32 -1)
  br label %14

65:                                               ; preds = %39
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @local_irq_restore(i64 %66)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @set_tb(i32, i32) #1

declare dso_local i32 @enter_contest(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_sync-timer.c_synchronise_count_master.c'
source_filename = "/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_sync-timer.c_synchronise_count_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"Synchronize counters for CPU %u: \00", align 1
@NR_LOOPS = common dso_local global i32 0, align 4
@count_count_start = common dso_local global i32 0, align 4
@count_count_stop = common dso_local global i32 0, align 4
@initcount = common dso_local global i32 0, align 4
@COUNTON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @synchronise_count_master(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %45, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @NR_LOOPS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %17, %13
  %15 = call i32 @atomic_read(i32* @count_count_start)
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (...) @mb()
  br label %14

19:                                               ; preds = %14
  %20 = call i32 @atomic_set(i32* @count_count_stop, i32 0)
  %21 = call i32 (...) @smp_wmb()
  %22 = call i32 @atomic_inc(i32* @count_count_start)
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 (...) @get_cycles()
  store i32 %26, i32* @initcount, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @NR_LOOPS, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @initcount, align 4
  %34 = call i32 @openrisc_timer_set(i32 %33)
  br label %35

35:                                               ; preds = %32, %27
  br label %36

36:                                               ; preds = %39, %35
  %37 = call i32 @atomic_read(i32* @count_count_stop)
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 (...) @mb()
  br label %36

41:                                               ; preds = %36
  %42 = call i32 @atomic_set(i32* @count_count_start, i32 0)
  %43 = call i32 (...) @smp_wmb()
  %44 = call i32 @atomic_inc(i32* @count_count_stop)
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %9

48:                                               ; preds = %9
  %49 = load i32, i32* @COUNTON, align 4
  %50 = call i32 @openrisc_timer_set_next(i32 %49)
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @local_irq_restore(i64 %51)
  %53 = call i32 @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @get_cycles(...) #1

declare dso_local i32 @openrisc_timer_set(i32) #1

declare dso_local i32 @openrisc_timer_set_next(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @pr_cont(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

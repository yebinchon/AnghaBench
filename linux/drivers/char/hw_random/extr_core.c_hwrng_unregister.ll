; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_core.c_hwrng_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_core.c_hwrng_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i32, i32 }

@rng_mutex = common dso_local global i32 0, align 4
@current_rng = common dso_local global %struct.hwrng* null, align 8
@cur_rng_set_by_user = common dso_local global i64 0, align 8
@rng_list = common dso_local global i32 0, align 4
@hwrng_fill = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hwrng_unregister(%struct.hwrng* %0) #0 {
  %2 = alloca %struct.hwrng*, align 8
  %3 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %2, align 8
  %4 = call i32 @mutex_lock(i32* @rng_mutex)
  %5 = load %struct.hwrng*, %struct.hwrng** %2, align 8
  %6 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %5, i32 0, i32 1
  %7 = call i32 @list_del(i32* %6)
  %8 = load %struct.hwrng*, %struct.hwrng** @current_rng, align 8
  %9 = load %struct.hwrng*, %struct.hwrng** %2, align 8
  %10 = icmp eq %struct.hwrng* %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = call i32 (...) @enable_best_rng()
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 (...) @drop_current_rng()
  store i64 0, i64* @cur_rng_set_by_user, align 8
  br label %17

17:                                               ; preds = %15, %11
  br label %18

18:                                               ; preds = %17, %1
  %19 = call i64 @list_empty(i32* @rng_list)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = call i32 @mutex_unlock(i32* @rng_mutex)
  %23 = load i64, i64* @hwrng_fill, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, i64* @hwrng_fill, align 8
  %27 = call i32 @kthread_stop(i64 %26)
  br label %28

28:                                               ; preds = %25, %21
  br label %31

29:                                               ; preds = %18
  %30 = call i32 @mutex_unlock(i32* @rng_mutex)
  br label %31

31:                                               ; preds = %29, %28
  %32 = load %struct.hwrng*, %struct.hwrng** %2, align 8
  %33 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %32, i32 0, i32 0
  %34 = call i32 @wait_for_completion(i32* %33)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @enable_best_rng(...) #1

declare dso_local i32 @drop_current_rng(...) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

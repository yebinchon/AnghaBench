; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_core.c_get_current_rng.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_core.c_get_current_rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i32 }

@rng_mutex = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@current_rng = common dso_local global %struct.hwrng* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hwrng* ()* @get_current_rng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hwrng* @get_current_rng() #0 {
  %1 = alloca %struct.hwrng*, align 8
  %2 = alloca %struct.hwrng*, align 8
  %3 = call i64 @mutex_lock_interruptible(i32* @rng_mutex)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @ERESTARTSYS, align 4
  %7 = sub nsw i32 0, %6
  %8 = call %struct.hwrng* @ERR_PTR(i32 %7)
  store %struct.hwrng* %8, %struct.hwrng** %1, align 8
  br label %20

9:                                                ; preds = %0
  %10 = load %struct.hwrng*, %struct.hwrng** @current_rng, align 8
  store %struct.hwrng* %10, %struct.hwrng** %2, align 8
  %11 = load %struct.hwrng*, %struct.hwrng** %2, align 8
  %12 = icmp ne %struct.hwrng* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load %struct.hwrng*, %struct.hwrng** %2, align 8
  %15 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %14, i32 0, i32 0
  %16 = call i32 @kref_get(i32* %15)
  br label %17

17:                                               ; preds = %13, %9
  %18 = call i32 @mutex_unlock(i32* @rng_mutex)
  %19 = load %struct.hwrng*, %struct.hwrng** %2, align 8
  store %struct.hwrng* %19, %struct.hwrng** %1, align 8
  br label %20

20:                                               ; preds = %17, %5
  %21 = load %struct.hwrng*, %struct.hwrng** %1, align 8
  ret %struct.hwrng* %21
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.hwrng* @ERR_PTR(i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

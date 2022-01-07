; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_cmm.c_cmm_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_cmm.c_cmm_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@delay = common dso_local global i32 0, align 4
@hotplug_mutex = common dso_local global i32 0, align 4
@hotplug_occurred = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [76 x i8] c"Hotplug operation has occurred, loaning activity suspended for %d seconds.\0A\00", align 1
@hotplug_delay = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Hotplug operation in progress, activity suspended\0A\00", align 1
@loaned_pages_target = common dso_local global i64 0, align 8
@loaned_pages = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cmm_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmm_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %1, %33, %36, %62
  %5 = load i32, i32* @delay, align 4
  %6 = mul nsw i32 %5, 1000
  %7 = call i64 @msleep_interruptible(i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = call i64 (...) @kthread_should_stop()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %4
  br label %63

14:                                               ; preds = %10
  %15 = call i64 @mutex_trylock(i32* @hotplug_mutex)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = load i64, i64* @hotplug_occurred, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  store i64 0, i64* @hotplug_occurred, align 8
  %21 = call i32 @mutex_unlock(i32* @hotplug_mutex)
  %22 = load i32, i32* @hotplug_delay, align 4
  %23 = call i32 (i8*, ...) @cmm_dbg(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @hotplug_delay, align 4
  %25 = mul nsw i32 %24, 1000
  %26 = call i64 @msleep_interruptible(i32 %25)
  store i64 %26, i64* %3, align 8
  %27 = call i64 (...) @kthread_should_stop()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i64, i64* %3, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %20
  br label %63

33:                                               ; preds = %29
  br label %4

34:                                               ; preds = %17
  %35 = call i32 @mutex_unlock(i32* @hotplug_mutex)
  br label %38

36:                                               ; preds = %14
  %37 = call i32 (i8*, ...) @cmm_dbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %4

38:                                               ; preds = %34
  %39 = call i32 (...) @cmm_get_mpp()
  %40 = load i64, i64* @loaned_pages_target, align 8
  %41 = load i64, i64* @loaned_pages, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i64, i64* @loaned_pages_target, align 8
  %45 = load i64, i64* @loaned_pages, align 8
  %46 = sub nsw i64 %44, %45
  %47 = call i64 @cmm_alloc_pages(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i64, i64* @loaned_pages, align 8
  store i64 %50, i64* @loaned_pages_target, align 8
  br label %51

51:                                               ; preds = %49, %43
  br label %62

52:                                               ; preds = %38
  %53 = load i64, i64* @loaned_pages_target, align 8
  %54 = load i64, i64* @loaned_pages, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i64, i64* @loaned_pages, align 8
  %58 = load i64, i64* @loaned_pages_target, align 8
  %59 = sub nsw i64 %57, %58
  %60 = call i32 @cmm_free_pages(i64 %59)
  br label %61

61:                                               ; preds = %56, %52
  br label %62

62:                                               ; preds = %61, %51
  br label %4

63:                                               ; preds = %32, %13
  ret i32 0
}

declare dso_local i64 @msleep_interruptible(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @mutex_trylock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cmm_dbg(i8*, ...) #1

declare dso_local i32 @cmm_get_mpp(...) #1

declare dso_local i64 @cmm_alloc_pages(i64) #1

declare dso_local i32 @cmm_free_pages(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

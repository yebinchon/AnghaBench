; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_cmm.c_cmm_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_cmm.c_cmm_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmm_thread_wait = common dso_local global i32 0, align 4
@cmm_suspended = common dso_local global i32 0, align 4
@cmm_pages = common dso_local global i64 0, align 8
@cmm_pages_target = common dso_local global i64 0, align 8
@cmm_timed_pages = common dso_local global i64 0, align 8
@cmm_timed_pages_target = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@cmm_page_list = common dso_local global i32 0, align 4
@cmm_timed_page_list = common dso_local global i32 0, align 4
@cmm_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cmm_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmm_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %1, %75
  %5 = load i32, i32* @cmm_thread_wait, align 4
  %6 = load i32, i32* @cmm_suspended, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = load i64, i64* @cmm_pages, align 8
  %10 = load i64, i64* @cmm_pages_target, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = load i64, i64* @cmm_timed_pages, align 8
  %14 = load i64, i64* @cmm_timed_pages_target, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %4
  %17 = call i64 (...) @kthread_should_stop()
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %16, %12, %8
  %20 = phi i1 [ true, %12 ], [ true, %8 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @wait_event_interruptible(i32 %5, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = call i64 (...) @kthread_should_stop()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @ERESTARTSYS, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %19
  %31 = load i64, i64* @cmm_pages, align 8
  store i64 %31, i64* @cmm_pages_target, align 8
  %32 = load i64, i64* @cmm_timed_pages, align 8
  store i64 %32, i64* @cmm_timed_pages_target, align 8
  br label %76

33:                                               ; preds = %25
  %34 = load i64, i64* @cmm_pages_target, align 8
  %35 = load i64, i64* @cmm_pages, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = call i64 @cmm_alloc_pages(i32 1, i64* @cmm_pages, i32* @cmm_page_list)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i64, i64* @cmm_pages, align 8
  store i64 %41, i64* @cmm_pages_target, align 8
  br label %42

42:                                               ; preds = %40, %37
  br label %50

43:                                               ; preds = %33
  %44 = load i64, i64* @cmm_pages_target, align 8
  %45 = load i64, i64* @cmm_pages, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 @cmm_free_pages(i32 1, i64* @cmm_pages, i32* @cmm_page_list)
  br label %49

49:                                               ; preds = %47, %43
  br label %50

50:                                               ; preds = %49, %42
  %51 = load i64, i64* @cmm_timed_pages_target, align 8
  %52 = load i64, i64* @cmm_timed_pages, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = call i64 @cmm_alloc_pages(i32 1, i64* @cmm_timed_pages, i32* @cmm_timed_page_list)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i64, i64* @cmm_timed_pages, align 8
  store i64 %58, i64* @cmm_timed_pages_target, align 8
  br label %59

59:                                               ; preds = %57, %54
  br label %67

60:                                               ; preds = %50
  %61 = load i64, i64* @cmm_timed_pages_target, align 8
  %62 = load i64, i64* @cmm_timed_pages, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @cmm_free_pages(i32 1, i64* @cmm_timed_pages, i32* @cmm_timed_page_list)
  br label %66

66:                                               ; preds = %64, %60
  br label %67

67:                                               ; preds = %66, %59
  %68 = load i64, i64* @cmm_timed_pages, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = call i32 @timer_pending(i32* @cmm_timer)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = call i32 (...) @cmm_set_timer()
  br label %75

75:                                               ; preds = %73, %70, %67
  br label %4

76:                                               ; preds = %30
  ret i32 0
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @cmm_alloc_pages(i32, i64*, i32*) #1

declare dso_local i32 @cmm_free_pages(i32, i64*, i32*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @cmm_set_timer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

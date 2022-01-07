; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_cmm.c_cmm_oom_notify.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_cmm.c_cmm_oom_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@cmm_timed_pages = common dso_local global i8* null, align 8
@cmm_timed_page_list = common dso_local global i32 0, align 4
@cmm_pages = common dso_local global i8* null, align 8
@cmm_page_list = common dso_local global i32 0, align 4
@cmm_pages_target = common dso_local global i8* null, align 8
@cmm_timed_pages_target = common dso_local global i8* null, align 8
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @cmm_oom_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmm_oom_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to i64*
  store i64* %10, i64** %7, align 8
  store i64 256, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = call i64 @cmm_free_pages(i64 %11, i8** @cmm_timed_pages, i32* @cmm_timed_page_list)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i64, i64* %8, align 8
  %17 = call i64 @cmm_free_pages(i64 %16, i8** @cmm_pages, i32* @cmm_page_list)
  store i64 %17, i64* %8, align 8
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i8*, i8** @cmm_pages, align 8
  store i8* %19, i8** @cmm_pages_target, align 8
  %20 = load i8*, i8** @cmm_timed_pages, align 8
  store i8* %20, i8** @cmm_timed_pages_target, align 8
  %21 = load i64, i64* %8, align 8
  %22 = sub nsw i64 256, %21
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, %22
  store i64 %25, i64* %23, align 8
  %26 = load i32, i32* @NOTIFY_OK, align 4
  ret i32 %26
}

declare dso_local i64 @cmm_free_pages(i64, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

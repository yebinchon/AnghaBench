; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_incr_status_counter.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_incr_status_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tot_ignored = common dso_local global i32 0, align 4
@tot_interrupted = common dso_local global i32 0, align 4
@tot_cancelled = common dso_local global i32 0, align 4
@tot_terminated = common dso_local global i32 0, align 4
@tot_failed = common dso_local global i32 0, align 4
@tot_decryption_failed = common dso_local global i32 0, align 4
@tot_io_failed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @incr_status_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @incr_status_counter(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %34 [
    i32 131, label %6
    i32 130, label %10
    i32 134, label %14
    i32 128, label %18
    i32 132, label %22
    i32 133, label %26
    i32 129, label %30
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @tot_ignored, align 4
  %9 = add nsw i32 %8, %7
  store i32 %9, i32* @tot_ignored, align 4
  br label %35

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @tot_interrupted, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* @tot_interrupted, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @tot_cancelled, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* @tot_cancelled, align 4
  br label %35

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @tot_terminated, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* @tot_terminated, align 4
  br label %35

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @tot_failed, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* @tot_failed, align 4
  br label %35

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @tot_decryption_failed, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* @tot_decryption_failed, align 4
  br label %35

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @tot_io_failed, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* @tot_io_failed, align 4
  br label %35

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %34, %30, %26, %22, %18, %14, %10, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

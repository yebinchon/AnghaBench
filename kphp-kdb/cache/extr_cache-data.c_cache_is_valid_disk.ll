; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_is_valid_disk.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_is_valid_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_NODE_ID = common dso_local global i32 0, align 4
@CACHE_ERR_INVALID_NODE_ID = common dso_local global i32 0, align 4
@MAX_SERVER_ID = common dso_local global i32 0, align 4
@CACHE_ERR_INVALID_SERVER_ID = common dso_local global i32 0, align 4
@MAX_DISK_ID = common dso_local global i32 0, align 4
@CACHE_ERR_INVALID_DISK_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @cache_is_valid_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_is_valid_disk(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sge i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MAX_NODE_ID, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %10, %3
  %15 = load i32, i32* @CACHE_ERR_INVALID_NODE_ID, align 4
  store i32 %15, i32* %4, align 4
  br label %35

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MAX_SERVER_ID, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* @CACHE_ERR_INVALID_SERVER_ID, align 4
  store i32 %24, i32* %4, align 4
  br label %35

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @MAX_DISK_ID, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %34, label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* @CACHE_ERR_INVALID_DISK_ID, align 4
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %32, %23, %14
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

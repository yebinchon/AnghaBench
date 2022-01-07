; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_build_locking_range.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_build_locking_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPAL_UID_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Can't build locking range. Length OOB\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@opaluid = common dso_local global i32* null, align 8
@OPAL_LOCKINGRANGE_GLOBAL = common dso_local global i64 0, align 8
@LOCKING_RANGE_NON_GLOBAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i64)* @build_locking_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_locking_range(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @OPAL_UID_LENGTH, align 8
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ERANGE, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %33

15:                                               ; preds = %3
  %16 = load i64*, i64** %5, align 8
  %17 = load i32*, i32** @opaluid, align 8
  %18 = load i64, i64* @OPAL_LOCKINGRANGE_GLOBAL, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @OPAL_UID_LENGTH, align 8
  %22 = call i32 @memcpy(i64* %16, i32 %20, i64 %21)
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %33

26:                                               ; preds = %15
  %27 = load i64, i64* @LOCKING_RANGE_NON_GLOBAL, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 5
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 7
  store i64 %30, i64* %32, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %26, %25, %11
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @memcpy(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

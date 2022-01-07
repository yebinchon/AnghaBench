; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_lp.c_lp_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_lp.c_lp_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_SEC_IN_JIFFIES = common dso_local global i32 0, align 4
@MAX_JIFFY_OFFSET = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@lp_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @lp_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp_set_timeout(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %53

17:                                               ; preds = %11
  %18 = load i64, i64* %7, align 8
  %19 = icmp sgt i64 %18, 999999
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i64 999999, i64* %7, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MAX_SEC_IN_JIFFIES, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp sge i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i64, i64* @MAX_JIFFY_OFFSET, align 8
  store i64 %27, i64* %8, align 8
  br label %40

28:                                               ; preds = %21
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* @HZ, align 4
  %31 = sdiv i32 1000000, %30
  %32 = call i64 @DIV_ROUND_UP(i64 %29, i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* @HZ, align 4
  %36 = sext i32 %35 to i64
  %37 = mul nsw i64 %34, %36
  %38 = load i64, i64* %8, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %28, %26
  %41 = load i64, i64* %8, align 8
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %53

46:                                               ; preds = %40
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lp_table, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 %47, i64* %52, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %43, %14
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

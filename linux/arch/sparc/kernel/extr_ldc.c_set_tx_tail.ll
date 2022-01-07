; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_set_tx_tail.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_set_tx_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i64, i32 }

@HV_EWOULDBLOCK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, i64)* @set_tx_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_tx_tail(%struct.ldc_channel* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ldc_channel*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %10 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  store i32 1000, i32* %7, align 4
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %14 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  br label %15

15:                                               ; preds = %38, %2
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %7, align 4
  %18 = icmp sgt i32 %16, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %21 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @sun4v_ldc_tx_set_qtail(i32 %22, i64 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %46

28:                                               ; preds = %19
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @HV_EWOULDBLOCK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %35 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %46

38:                                               ; preds = %28
  %39 = call i32 @udelay(i32 1)
  br label %15

40:                                               ; preds = %15
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %43 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %40, %32, %27
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @sun4v_ldc_tx_set_qtail(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

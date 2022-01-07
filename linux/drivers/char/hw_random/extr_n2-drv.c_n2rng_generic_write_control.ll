; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_n2-drv.c_n2rng_generic_write_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_n2-drv.c_n2rng_generic_write_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n2rng = type { i32 }

@HV_EOK = common dso_local global i64 0, align 8
@HV_EWOULDBLOCK = common dso_local global i64 0, align 8
@N2RNG_BLOCK_LIMIT = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@HV_EBUSY = common dso_local global i64 0, align 8
@N2RNG_BUSY_LIMIT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.n2rng*, i64, i64, i64)* @n2rng_generic_write_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2rng_generic_write_control(%struct.n2rng* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.n2rng*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.n2rng* %0, %struct.n2rng** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %4, %60
  %15 = load %struct.n2rng*, %struct.n2rng** %6, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.n2rng*, %struct.n2rng** %6, align 8
  %20 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @n2rng_write_ctl_one(%struct.n2rng* %15, i64 %16, i64 %17, i64 %18, i32 %21, i64* %11)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @HV_EOK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %61

27:                                               ; preds = %14
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @HV_EWOULDBLOCK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* @N2RNG_BLOCK_LIMIT, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EWOULDBLOCK, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %61

39:                                               ; preds = %31
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @__delay(i64 %40)
  br label %60

42:                                               ; preds = %27
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @HV_EBUSY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* @N2RNG_BUSY_LIMIT, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %61

54:                                               ; preds = %46
  %55 = call i32 @udelay(i32 1)
  br label %59

56:                                               ; preds = %42
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %61

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %39
  br label %14

61:                                               ; preds = %56, %51, %36, %26
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @n2rng_write_ctl_one(%struct.n2rng*, i64, i64, i64, i32, i64*) #1

declare dso_local i32 @__delay(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

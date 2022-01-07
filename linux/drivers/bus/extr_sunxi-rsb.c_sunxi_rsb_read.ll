; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c_sunxi_rsb_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c_sunxi_rsb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_rsb = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RSB_CMD_RD8 = common dso_local global i32 0, align 4
@RSB_CMD_RD16 = common dso_local global i32 0, align 4
@RSB_CMD_RD32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid access width: %zd\0A\00", align 1
@RSB_ADDR = common dso_local global i64 0, align 8
@RSB_DAR = common dso_local global i64 0, align 8
@RSB_CMD = common dso_local global i64 0, align 8
@RSB_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_rsb*, i32, i32, i32*, i64)* @sunxi_rsb_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_rsb_read(%struct.sunxi_rsb* %0, i32 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sunxi_rsb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sunxi_rsb* %0, %struct.sunxi_rsb** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %79

19:                                               ; preds = %5
  %20 = load i64, i64* %11, align 8
  switch i64 %20, label %27 [
    i64 1, label %21
    i64 2, label %23
    i64 4, label %25
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @RSB_CMD_RD8, align 4
  store i32 %22, i32* %12, align 4
  br label %35

23:                                               ; preds = %19
  %24 = load i32, i32* @RSB_CMD_RD16, align 4
  store i32 %24, i32* %12, align 4
  br label %35

25:                                               ; preds = %19
  %26 = load i32, i32* @RSB_CMD_RD32, align 4
  store i32 %26, i32* %12, align 4
  br label %35

27:                                               ; preds = %19
  %28 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %29 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %79

35:                                               ; preds = %25, %23, %21
  %36 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %37 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %41 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RSB_ADDR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @RSB_DAR_RTA(i32 %46)
  %48 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %49 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RSB_DAR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %56 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RSB_CMD, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %62 = call i32 @_sunxi_rsb_run_xfer(%struct.sunxi_rsb* %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %35
  br label %74

66:                                               ; preds = %35
  %67 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %68 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RSB_DATA, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @readl(i64 %71)
  %73 = load i32*, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %66, %65
  %75 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %76 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %74, %27, %16
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @RSB_DAR_RTA(i32) #1

declare dso_local i32 @_sunxi_rsb_run_xfer(%struct.sunxi_rsb*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_brcmstb_gisb.c_gisb_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_brcmstb_gisb.c_gisb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmstb_gisb_arb_device = type { i32*, i64, i64 }

@ARB_ERR_CAP_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmstb_gisb_arb_device*, i32)* @gisb_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gisb_read(%struct.brcmstb_gisb_arb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmstb_gisb_arb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcmstb_gisb_arb_device* %0, %struct.brcmstb_gisb_arb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.brcmstb_gisb_arb_device*, %struct.brcmstb_gisb_arb_device** %4, align 8
  %8 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, %struct.brcmstb_gisb_arb_device* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ARB_ERR_CAP_MASTER, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %43

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %43

22:                                               ; preds = %2
  %23 = load %struct.brcmstb_gisb_arb_device*, %struct.brcmstb_gisb_arb_device** %4, align 8
  %24 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, %struct.brcmstb_gisb_arb_device* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.brcmstb_gisb_arb_device*, %struct.brcmstb_gisb_arb_device** %4, align 8
  %29 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, %struct.brcmstb_gisb_arb_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = call i32 @ioread32be(i64 %33)
  store i32 %34, i32* %3, align 4
  br label %43

35:                                               ; preds = %22
  %36 = load %struct.brcmstb_gisb_arb_device*, %struct.brcmstb_gisb_arb_device** %4, align 8
  %37 = getelementptr inbounds %struct.brcmstb_gisb_arb_device, %struct.brcmstb_gisb_arb_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i32 @ioread32(i64 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %35, %27, %21, %20
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

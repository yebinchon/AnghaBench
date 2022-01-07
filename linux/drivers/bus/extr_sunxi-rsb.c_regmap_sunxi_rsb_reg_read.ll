; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c_regmap_sunxi_rsb_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c_regmap_sunxi_rsb_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_rsb_ctx = type { i32, %struct.sunxi_rsb_device* }
%struct.sunxi_rsb_device = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @regmap_sunxi_rsb_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regmap_sunxi_rsb_reg_read(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sunxi_rsb_ctx*, align 8
  %9 = alloca %struct.sunxi_rsb_device*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sunxi_rsb_ctx*
  store %struct.sunxi_rsb_ctx* %11, %struct.sunxi_rsb_ctx** %8, align 8
  %12 = load %struct.sunxi_rsb_ctx*, %struct.sunxi_rsb_ctx** %8, align 8
  %13 = getelementptr inbounds %struct.sunxi_rsb_ctx, %struct.sunxi_rsb_ctx* %12, i32 0, i32 1
  %14 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %13, align 8
  store %struct.sunxi_rsb_device* %14, %struct.sunxi_rsb_device** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ugt i32 %15, 255
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %33

20:                                               ; preds = %3
  %21 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %9, align 8
  %22 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %9, align 8
  %25 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.sunxi_rsb_ctx*, %struct.sunxi_rsb_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.sunxi_rsb_ctx, %struct.sunxi_rsb_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @sunxi_rsb_read(i32 %23, i32 %26, i32 %27, i32* %28, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %20, %17
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @sunxi_rsb_read(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

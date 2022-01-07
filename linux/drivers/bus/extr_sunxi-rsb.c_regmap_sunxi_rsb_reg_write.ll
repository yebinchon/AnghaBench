; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c_regmap_sunxi_rsb_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c_regmap_sunxi_rsb_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_rsb_ctx = type { i32, %struct.sunxi_rsb_device* }
%struct.sunxi_rsb_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @regmap_sunxi_rsb_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regmap_sunxi_rsb_reg_write(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sunxi_rsb_ctx*, align 8
  %8 = alloca %struct.sunxi_rsb_device*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.sunxi_rsb_ctx*
  store %struct.sunxi_rsb_ctx* %10, %struct.sunxi_rsb_ctx** %7, align 8
  %11 = load %struct.sunxi_rsb_ctx*, %struct.sunxi_rsb_ctx** %7, align 8
  %12 = getelementptr inbounds %struct.sunxi_rsb_ctx, %struct.sunxi_rsb_ctx* %11, i32 0, i32 1
  %13 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %12, align 8
  store %struct.sunxi_rsb_device* %13, %struct.sunxi_rsb_device** %8, align 8
  %14 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %8, align 8
  %15 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %8, align 8
  %18 = getelementptr inbounds %struct.sunxi_rsb_device, %struct.sunxi_rsb_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.sunxi_rsb_ctx*, %struct.sunxi_rsb_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.sunxi_rsb_ctx, %struct.sunxi_rsb_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @sunxi_rsb_write(i32 %16, i32 %19, i32 %20, i32* %6, i32 %23)
  ret i32 %24
}

declare dso_local i32 @sunxi_rsb_write(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

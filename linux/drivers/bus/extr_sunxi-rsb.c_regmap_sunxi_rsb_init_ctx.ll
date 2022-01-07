; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c_regmap_sunxi_rsb_init_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c_regmap_sunxi_rsb_init_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_rsb_ctx = type { i32, %struct.sunxi_rsb_device* }
%struct.sunxi_rsb_device = type { i32 }
%struct.regmap_config = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sunxi_rsb_ctx* (%struct.sunxi_rsb_device*, %struct.regmap_config*)* @regmap_sunxi_rsb_init_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sunxi_rsb_ctx* @regmap_sunxi_rsb_init_ctx(%struct.sunxi_rsb_device* %0, %struct.regmap_config* %1) #0 {
  %3 = alloca %struct.sunxi_rsb_ctx*, align 8
  %4 = alloca %struct.sunxi_rsb_device*, align 8
  %5 = alloca %struct.regmap_config*, align 8
  %6 = alloca %struct.sunxi_rsb_ctx*, align 8
  store %struct.sunxi_rsb_device* %0, %struct.sunxi_rsb_device** %4, align 8
  store %struct.regmap_config* %1, %struct.regmap_config** %5, align 8
  %7 = load %struct.regmap_config*, %struct.regmap_config** %5, align 8
  %8 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %11 [
    i32 8, label %10
    i32 16, label %10
    i32 32, label %10
  ]

10:                                               ; preds = %2, %2, %2
  br label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.sunxi_rsb_ctx* @ERR_PTR(i32 %13)
  store %struct.sunxi_rsb_ctx* %14, %struct.sunxi_rsb_ctx** %3, align 8
  br label %35

15:                                               ; preds = %10
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sunxi_rsb_ctx* @kzalloc(i32 16, i32 %16)
  store %struct.sunxi_rsb_ctx* %17, %struct.sunxi_rsb_ctx** %6, align 8
  %18 = load %struct.sunxi_rsb_ctx*, %struct.sunxi_rsb_ctx** %6, align 8
  %19 = icmp ne %struct.sunxi_rsb_ctx* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.sunxi_rsb_ctx* @ERR_PTR(i32 %22)
  store %struct.sunxi_rsb_ctx* %23, %struct.sunxi_rsb_ctx** %3, align 8
  br label %35

24:                                               ; preds = %15
  %25 = load %struct.sunxi_rsb_device*, %struct.sunxi_rsb_device** %4, align 8
  %26 = load %struct.sunxi_rsb_ctx*, %struct.sunxi_rsb_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.sunxi_rsb_ctx, %struct.sunxi_rsb_ctx* %26, i32 0, i32 1
  store %struct.sunxi_rsb_device* %25, %struct.sunxi_rsb_device** %27, align 8
  %28 = load %struct.regmap_config*, %struct.regmap_config** %5, align 8
  %29 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 8
  %32 = load %struct.sunxi_rsb_ctx*, %struct.sunxi_rsb_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.sunxi_rsb_ctx, %struct.sunxi_rsb_ctx* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.sunxi_rsb_ctx*, %struct.sunxi_rsb_ctx** %6, align 8
  store %struct.sunxi_rsb_ctx* %34, %struct.sunxi_rsb_ctx** %3, align 8
  br label %35

35:                                               ; preds = %24, %20, %11
  %36 = load %struct.sunxi_rsb_ctx*, %struct.sunxi_rsb_ctx** %3, align 8
  ret %struct.sunxi_rsb_ctx* %36
}

declare dso_local %struct.sunxi_rsb_ctx* @ERR_PTR(i32) #1

declare dso_local %struct.sunxi_rsb_ctx* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_read_fw_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_read_fw_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_sdio_card = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_sdio_card*, i32*)* @btmrvl_sdio_read_fw_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_read_fw_status(%struct.btmrvl_sdio_card* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btmrvl_sdio_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btmrvl_sdio_card* %0, %struct.btmrvl_sdio_card** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %11 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %14 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sdio_readb(i32 %12, i32 %17, i32* %8)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %45

24:                                               ; preds = %2
  %25 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %26 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %29 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sdio_readb(i32 %27, i32 %32, i32* %8)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %45

39:                                               ; preds = %24
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 %40, 8
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %41, %42
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %39, %36, %21
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @sdio_readb(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

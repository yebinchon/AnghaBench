; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_read_to_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_read_to_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_sdio_card = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { %struct.btmrvl_adapter* }
%struct.btmrvl_adapter = type { i32* }

@SDIO_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"sdio_readsb: read int hw_regs failed: %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"hw_regs[%#x]=%#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_sdio_card*, i32*)* @btmrvl_sdio_read_to_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_read_to_clear(%struct.btmrvl_sdio_card* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btmrvl_sdio_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.btmrvl_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.btmrvl_sdio_card* %0, %struct.btmrvl_sdio_card** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %9 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %11, align 8
  store %struct.btmrvl_adapter* %12, %struct.btmrvl_adapter** %6, align 8
  %13 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %14 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @SDIO_BLOCK_SIZE, align 4
  %20 = call i32 @sdio_readsb(i32 %15, i32* %18, i32 0, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @BT_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %47

27:                                               ; preds = %2
  %28 = load %struct.btmrvl_adapter*, %struct.btmrvl_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.btmrvl_adapter, %struct.btmrvl_adapter* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %32 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %40 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %43, i32 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %27, %23
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @sdio_readsb(i32, i32*, i32, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @BT_DBG(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

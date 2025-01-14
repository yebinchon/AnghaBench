; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_write_to_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_write_to_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_sdio_card = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"sdio_readb: read int status failed: %d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"int_status = 0x%x\00", align 1
@DN_LD_HOST_INT_STATUS = common dso_local global i32 0, align 4
@UP_LD_HOST_INT_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"sdio_writeb: clear int status failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_sdio_card*, i32*)* @btmrvl_sdio_write_to_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_write_to_clear(%struct.btmrvl_sdio_card* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btmrvl_sdio_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.btmrvl_sdio_card* %0, %struct.btmrvl_sdio_card** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %8 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %11 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sdio_readb(i32 %9, i32 %14, i32* %6)
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @BT_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %55

23:                                               ; preds = %2
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %32 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* @DN_LD_HOST_INT_STATUS, align 4
  %38 = load i32, i32* @UP_LD_HOST_INT_STATUS, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %4, align 8
  %42 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sdio_writeb(i32 %33, i32 %40, i32 %45, i32* %6)
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %27
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @BT_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %55

53:                                               ; preds = %27
  br label %54

54:                                               ; preds = %53, %23
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %49, %19
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @sdio_readb(i32, i32, i32*) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @sdio_writeb(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

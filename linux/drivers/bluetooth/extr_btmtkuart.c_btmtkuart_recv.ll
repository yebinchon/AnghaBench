; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btmtkuart_dev = type { i32*, i32 }

@mtk_recv_pkts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Frame reassembly failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i8*, i64)* @btmtkuart_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmtkuart_recv(%struct.hci_dev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.btmtkuart_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %16 = call %struct.btmtkuart_dev* @hci_get_drvdata(%struct.hci_dev* %15)
  store %struct.btmtkuart_dev* %16, %struct.btmtkuart_dev** %8, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %11, align 4
  br label %20

20:                                               ; preds = %77, %3
  %21 = load i32, i32* %11, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %85

23:                                               ; preds = %20
  %24 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i8* @mtk_stp_split(%struct.btmtkuart_dev* %24, i8* %25, i32 %26, i32* %12)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %85

31:                                               ; preds = %23
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %9, align 8
  %45 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %8, align 8
  %46 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %8, align 8
  %49 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @mtk_recv_pkts, align 4
  %54 = load i32, i32* @mtk_recv_pkts, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = call i32* @h4_recv_buf(i32 %47, i32* %50, i8* %51, i32 %52, i32 %53, i32 %55)
  %57 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %8, align 8
  %58 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %57, i32 0, i32 0
  store i32* %56, i32** %58, align 8
  %59 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %8, align 8
  %60 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @IS_ERR(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %31
  %65 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %8, align 8
  %66 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @PTR_ERR(i32* %67)
  store i32 %68, i32* %14, align 4
  %69 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %8, align 8
  %70 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @bt_dev_err(i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %8, align 8
  %75 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %74, i32 0, i32 0
  store i32* null, i32** %75, align 8
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %4, align 4
  br label %86

77:                                               ; preds = %31
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %11, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %9, align 8
  br label %20

85:                                               ; preds = %30, %20
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %64
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.btmtkuart_dev* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i8* @mtk_stp_split(%struct.btmtkuart_dev*, i8*, i32, i32*) #1

declare dso_local i32* @h4_recv_buf(i32, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @bt_dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

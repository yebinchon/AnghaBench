; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_rx_3wire_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_rx_3wire_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.TYPE_4__*, %struct.h5* }
%struct.TYPE_4__ = type { i32 }
%struct.h5 = type { i64, i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [50 x i8] c"%s rx: seq %u ack %u crc %u rel %u type %u len %u\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid header checksum\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Out-of-order packet arrived (%u != %u)\00", align 1
@H5_ACTIVE = common dso_local global i64 0, align 8
@HCI_3WIRE_LINK_PKT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"Non-link packet received in non-active state\00", align 1
@h5_rx_payload = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, i8)* @h5_rx_3wire_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h5_rx_3wire_hdr(%struct.hci_uart* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_uart*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.h5*, align 8
  %7 = alloca i8*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %9 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %8, i32 0, i32 1
  %10 = load %struct.h5*, %struct.h5** %9, align 8
  store %struct.h5* %10, %struct.h5** %6, align 8
  %11 = load %struct.h5*, %struct.h5** %6, align 8
  %12 = getelementptr inbounds %struct.h5, %struct.h5* %11, i32 0, i32 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %17 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @H5_HDR_SEQ(i8* %21)
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @H5_HDR_ACK(i8* %23)
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @H5_HDR_CRC(i8* %25)
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @H5_HDR_RELIABLE(i8* %27)
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @H5_HDR_PKT_TYPE(i8* %29)
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @H5_HDR_LEN(i8* %31)
  %33 = call i32 @BT_DBG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %22, i32 %24, i32 %26, i64 %28, i64 %30, i32 %32)
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %37, %41
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = add nsw i32 %42, %46
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = add nsw i32 %47, %51
  %53 = and i32 %52, 255
  %54 = icmp ne i32 %53, 255
  br i1 %54, label %55, label %59

55:                                               ; preds = %2
  %56 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.h5*, %struct.h5** %6, align 8
  %58 = call i32 @h5_reset_rx(%struct.h5* %57)
  store i32 0, i32* %3, align 4
  br label %102

59:                                               ; preds = %2
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @H5_HDR_RELIABLE(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load i8*, i8** %7, align 8
  %65 = call i64 @H5_HDR_SEQ(i8* %64)
  %66 = load %struct.h5*, %struct.h5** %6, align 8
  %67 = getelementptr inbounds %struct.h5, %struct.h5* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  %71 = load i8*, i8** %7, align 8
  %72 = call i64 @H5_HDR_SEQ(i8* %71)
  %73 = load %struct.h5*, %struct.h5** %6, align 8
  %74 = getelementptr inbounds %struct.h5, %struct.h5* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %72, i64 %75)
  %77 = load %struct.h5*, %struct.h5** %6, align 8
  %78 = call i32 @h5_reset_rx(%struct.h5* %77)
  store i32 0, i32* %3, align 4
  br label %102

79:                                               ; preds = %63, %59
  %80 = load %struct.h5*, %struct.h5** %6, align 8
  %81 = getelementptr inbounds %struct.h5, %struct.h5* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @H5_ACTIVE, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load i8*, i8** %7, align 8
  %87 = call i64 @H5_HDR_PKT_TYPE(i8* %86)
  %88 = load i64, i64* @HCI_3WIRE_LINK_PKT, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %92 = load %struct.h5*, %struct.h5** %6, align 8
  %93 = call i32 @h5_reset_rx(%struct.h5* %92)
  store i32 0, i32* %3, align 4
  br label %102

94:                                               ; preds = %85, %79
  %95 = load i32, i32* @h5_rx_payload, align 4
  %96 = load %struct.h5*, %struct.h5** %6, align 8
  %97 = getelementptr inbounds %struct.h5, %struct.h5* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @H5_HDR_LEN(i8* %98)
  %100 = load %struct.h5*, %struct.h5** %6, align 8
  %101 = getelementptr inbounds %struct.h5, %struct.h5* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %94, %90, %70, %55
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @BT_DBG(i8*, i32, i64, i32, i32, i64, i64, i32) #1

declare dso_local i64 @H5_HDR_SEQ(i8*) #1

declare dso_local i32 @H5_HDR_ACK(i8*) #1

declare dso_local i32 @H5_HDR_CRC(i8*) #1

declare dso_local i64 @H5_HDR_RELIABLE(i8*) #1

declare dso_local i64 @H5_HDR_PKT_TYPE(i8*) #1

declare dso_local i32 @H5_HDR_LEN(i8*) #1

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @h5_reset_rx(%struct.h5*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_mci_device.c_AT91F_MCI_ReadBlock.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_mci_device.c_AT91F_MCI_ReadBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@AT91C_MCI_IDLE = common dso_local global i64 0, align 8
@AT91C_READ_ERROR = common dso_local global i32 0, align 4
@AT91C_SR_READY_FOR_DATA = common dso_local global i32 0, align 4
@AT91C_MCI_PDCMODE = common dso_local global i32 0, align 4
@AT91C_BASE_MCI = common dso_local global %struct.TYPE_13__* null, align 8
@AT91C_PDC_TXTDIS = common dso_local global i32 0, align 4
@AT91C_PDC_RXTDIS = common dso_local global i32 0, align 4
@AT91C_BASE_PDC_MCI = common dso_local global %struct.TYPE_12__* null, align 8
@AT91C_READ_SINGLE_BLOCK_CMD = common dso_local global i32 0, align 4
@AT91C_CMD_SEND_OK = common dso_local global i64 0, align 8
@AT91C_MCI_RX_SINGLE_BLOCK = common dso_local global i64 0, align 8
@AT91C_MCI_RXBUFF = common dso_local global i32 0, align 4
@AT91C_PDC_RXTEN = common dso_local global i32 0, align 4
@AT91C_READ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AT91F_MCI_ReadBlock(%struct.TYPE_11__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AT91C_MCI_IDLE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @AT91C_READ_ERROR, align 4
  store i32 %18, i32* %5, align 4
  br label %140

19:                                               ; preds = %4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @AT91F_MCI_GetStatus(%struct.TYPE_11__* %20, i32 %25)
  %27 = load i32, i32* @AT91C_SR_READY_FOR_DATA, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @AT91C_SR_READY_FOR_DATA, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* @AT91C_READ_ERROR, align 4
  store i32 %32, i32* %5, align 4
  br label %140

33:                                               ; preds = %19
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %34, %35
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %36, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @AT91C_READ_ERROR, align 4
  store i32 %44, i32* %5, align 4
  br label %140

45:                                               ; preds = %33
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = srem i32 %46, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @AT91C_READ_ERROR, align 4
  store i32 %55, i32* %5, align 4
  br label %140

56:                                               ; preds = %45
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %57, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %56
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @AT91C_READ_ERROR, align 4
  store i32 %72, i32* %5, align 4
  br label %140

73:                                               ; preds = %64, %56
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %74, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* @AT91C_READ_ERROR, align 4
  store i32 %82, i32* %5, align 4
  br label %140

83:                                               ; preds = %73
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 16
  %90 = load i32, i32* @AT91C_MCI_PDCMODE, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** @AT91C_BASE_MCI, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %9, align 4
  %97 = srem i32 %96, 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %83
  %100 = load i32, i32* %9, align 4
  %101 = sdiv i32 %100, 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %106

103:                                              ; preds = %83
  %104 = load i32, i32* %9, align 4
  %105 = sdiv i32 %104, 4
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %103, %99
  %107 = load i32, i32* @AT91C_PDC_TXTDIS, align 4
  %108 = load i32, i32* @AT91C_PDC_RXTDIS, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** @AT91C_BASE_PDC_MCI, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = ptrtoint i32* %112 to i32
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** @AT91C_BASE_PDC_MCI, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** @AT91C_BASE_PDC_MCI, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %120 = load i32, i32* @AT91C_READ_SINGLE_BLOCK_CMD, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i64 @AT91F_MCI_SendCommand(%struct.TYPE_11__* %119, i32 %120, i32 %121)
  %123 = load i64, i64* @AT91C_CMD_SEND_OK, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %106
  %126 = load i32, i32* @AT91C_READ_ERROR, align 4
  store i32 %126, i32* %5, align 4
  br label %140

127:                                              ; preds = %106
  %128 = load i64, i64* @AT91C_MCI_RX_SINGLE_BLOCK, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  store i64 %128, i64* %132, align 8
  %133 = load i32, i32* @AT91C_MCI_RXBUFF, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** @AT91C_BASE_MCI, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @AT91C_PDC_RXTEN, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** @AT91C_BASE_PDC_MCI, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @AT91C_READ_OK, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %127, %125, %81, %71, %54, %43, %31, %17
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @AT91F_MCI_GetStatus(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @AT91F_MCI_SendCommand(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_download_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_download_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_sdio_card = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32*, i32 }

@.str = private unnamed_addr constant [49 x i8] c"request_firmware(helper) failed, error code = %d\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Downloading helper image (%d bytes), block size %d bytes\00", align 1
@SDIO_BLOCK_SIZE = common dso_local global i64 0, align 8
@BTM_UPLD_SIZE = common dso_local global i32 0, align 4
@BTSDIO_DMA_ALIGN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Unable to allocate buffer for helper. Terminating download\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FIRMWARE_TRANSFER_NBLOCK = common dso_local global i64 0, align 8
@SDIO_HEADER_LEN = common dso_local global i64 0, align 8
@CARD_IO_READY = common dso_local global i32 0, align 4
@DN_LD_CARD_RDY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Helper download poll status timeout @ %d\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"IO error during helper download @ %d\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Transferring helper image EOF block\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"IO error in writing helper image EOF block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_sdio_card*)* @btmrvl_sdio_download_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_download_helper(%struct.btmrvl_sdio_card* %0) #0 {
  %2 = alloca %struct.btmrvl_sdio_card*, align 8
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.btmrvl_sdio_card* %0, %struct.btmrvl_sdio_card** %2, align 8
  store %struct.firmware* null, %struct.firmware** %3, align 8
  store i32* null, i32** %4, align 8
  store i8* null, i8** %6, align 8
  %12 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %2, align 8
  %13 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %2, align 8
  %16 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @request_firmware(%struct.firmware** %3, i32 %14, i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load %struct.firmware*, %struct.firmware** %3, align 8
  %24 = icmp ne %struct.firmware* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %22, %1
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %159

30:                                               ; preds = %22
  %31 = load %struct.firmware*, %struct.firmware** %3, align 8
  %32 = getelementptr inbounds %struct.firmware, %struct.firmware* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %4, align 8
  %34 = load %struct.firmware*, %struct.firmware** %3, align 8
  %35 = getelementptr inbounds %struct.firmware, %struct.firmware* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i64, i64* @SDIO_BLOCK_SIZE, align 8
  %39 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %37, i64 %38)
  %40 = load i32, i32* @BTM_UPLD_SIZE, align 4
  %41 = load i32, i32* @BTSDIO_DMA_ALIGN, align 4
  %42 = call i32 @ALIGN_SZ(i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kzalloc(i32 %43, i32 %44)
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %30
  %49 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %159

52:                                               ; preds = %30
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* @BTSDIO_DMA_ALIGN, align 4
  %55 = call i64 @ALIGN_ADDR(i8* %53, i32 %54)
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %10, align 8
  %57 = load i64, i64* @FIRMWARE_TRANSFER_NBLOCK, align 8
  %58 = load i64, i64* @SDIO_BLOCK_SIZE, align 8
  %59 = mul i64 %57, %58
  %60 = load i64, i64* @SDIO_HEADER_LEN, align 8
  %61 = sub i64 %59, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %139, %52
  %64 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %2, align 8
  %65 = load i32, i32* @CARD_IO_READY, align 4
  %66 = load i32, i32* @DN_LD_CARD_RDY, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @btmrvl_sdio_poll_card_status(%struct.btmrvl_sdio_card* %64, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  %73 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %159

74:                                               ; preds = %63
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %140

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %86, %87
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %85, %79
  %90 = load i32, i32* %11, align 4
  %91 = and i32 %90, 255
  %92 = ashr i32 %91, 0
  %93 = load i32*, i32** %10, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %11, align 4
  %96 = and i32 %95, 65280
  %97 = ashr i32 %96, 8
  %98 = load i32*, i32** %10, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %11, align 4
  %101 = and i32 %100, 16711680
  %102 = ashr i32 %101, 16
  %103 = load i32*, i32** %10, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %11, align 4
  %106 = and i32 %105, -16777216
  %107 = lshr i32 %106, 24
  %108 = load i32*, i32** %10, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  store i32 %107, i32* %109, align 4
  %110 = load i32*, i32** %10, align 8
  %111 = load i64, i64* @SDIO_HEADER_LEN, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @memcpy(i32* %112, i32* %116, i32 %117)
  %119 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %2, align 8
  %120 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %2, align 8
  %123 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32*, i32** %10, align 8
  %126 = load i64, i64* @FIRMWARE_TRANSFER_NBLOCK, align 8
  %127 = load i64, i64* @SDIO_BLOCK_SIZE, align 8
  %128 = mul i64 %126, %127
  %129 = call i32 @sdio_writesb(%struct.TYPE_2__* %121, i32 %124, i32* %125, i64 %128)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %89
  %133 = load i32, i32* %8, align 4
  %134 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  br label %159

135:                                              ; preds = %89
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %135
  br i1 true, label %63, label %140

140:                                              ; preds = %139, %78
  %141 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %142 = load i32*, i32** %10, align 8
  %143 = load i64, i64* @SDIO_BLOCK_SIZE, align 8
  %144 = call i32 @memset(i32* %142, i32 0, i64 %143)
  %145 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %2, align 8
  %146 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %145, i32 0, i32 1
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %2, align 8
  %149 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32*, i32** %10, align 8
  %152 = load i64, i64* @SDIO_BLOCK_SIZE, align 8
  %153 = call i32 @sdio_writesb(%struct.TYPE_2__* %147, i32 %150, i32* %151, i64 %152)
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %140
  %157 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %159

158:                                              ; preds = %140
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %158, %156, %132, %71, %48, %25
  %160 = load i8*, i8** %6, align 8
  %161 = call i32 @kfree(i8* %160)
  %162 = load %struct.firmware*, %struct.firmware** %3, align 8
  %163 = call i32 @release_firmware(%struct.firmware* %162)
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @ALIGN_SZ(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @ALIGN_ADDR(i8*, i32) #1

declare dso_local i32 @btmrvl_sdio_poll_card_status(%struct.btmrvl_sdio_card*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sdio_writesb(%struct.TYPE_2__*, i32, i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

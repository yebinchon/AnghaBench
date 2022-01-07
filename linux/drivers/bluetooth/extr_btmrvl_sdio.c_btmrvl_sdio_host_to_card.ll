; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_host_to_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_host_to_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.btmrvl_sdio_card* }
%struct.btmrvl_sdio_card = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"card or function is NULL!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SDIO_BLOCK_SIZE = common dso_local global i32 0, align 4
@BTSDIO_DMA_ALIGN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"i=%d writesb failed: %d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"hex: %*ph\00", align 1
@EIO = common dso_local global i32 0, align 4
@MAX_WRITE_IOMEM_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_private*, i32*, i32)* @btmrvl_sdio_host_to_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_host_to_card(%struct.btmrvl_private* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btmrvl_private*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btmrvl_sdio_card*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %16 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %17, align 8
  store %struct.btmrvl_sdio_card* %18, %struct.btmrvl_sdio_card** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store i8* null, i8** %13, align 8
  %19 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %20 = icmp ne %struct.btmrvl_sdio_card* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %23 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21, %3
  %27 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %120

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SDIO_BLOCK_SIZE, align 4
  %33 = call i32 @DIV_ROUND_UP(i32 %31, i32 %32)
  %34 = load i32, i32* @SDIO_BLOCK_SIZE, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32*, i32** %6, align 8
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = ptrtoint i32* %37 to i64
  %39 = load i32, i32* @BTSDIO_DMA_ALIGN, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = and i64 %38, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %44, %30
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @BTSDIO_DMA_ALIGN, align 4
  %51 = call i32 @ALIGN_SZ(i32 %49, i32 %50)
  %52 = load i32, i32* @BTSDIO_DMA_ALIGN, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kzalloc(i32 %54, i32 %55)
  store i8* %56, i8** %13, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %48
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %120

62:                                               ; preds = %48
  %63 = load i8*, i8** %13, align 8
  %64 = load i32, i32* @BTSDIO_DMA_ALIGN, align 4
  %65 = call i64 @ALIGN_ADDR(i8* %63, i32 %64)
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %12, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @memcpy(i32* %67, i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %62, %44
  %72 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %73 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @sdio_claim_host(i32 %74)
  br label %76

76:                                               ; preds = %105, %71
  %77 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %78 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %81 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @sdio_writesb(i32 %79, i32 %82, i32* %83, i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %76
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32* %95)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @MAX_WRITE_IOMEM_RETRY, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  br label %112

103:                                              ; preds = %88
  br label %104

104:                                              ; preds = %103, %76
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %76, label %108

108:                                              ; preds = %105
  %109 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %110 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %108, %102
  %113 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %114 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @sdio_release_host(i32 %115)
  %117 = load i8*, i8** %13, align 8
  %118 = call i32 @kfree(i8* %117)
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %112, %59, %26
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ALIGN_SZ(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @ALIGN_ADDR(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @sdio_writesb(i32, i32, i32*, i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

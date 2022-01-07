; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_spi.c_st33zp24_spi_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_spi.c_st33zp24_spi_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st33zp24_spi_phy = type { i32*, i32*, i32, %struct.spi_device* }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32*, i32*, i32 }

@TPM_WRITE_DIRECTION = common dso_local global i32 0, align 4
@LOCALITY0 = common dso_local global i32 0, align 4
@TPM_DATA_FIFO = common dso_local global i32 0, align 4
@TPM_DUMMY_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32)* @st33zp24_spi_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st33zp24_spi_send(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.st33zp24_spi_phy*, align 8
  %12 = alloca %struct.spi_device*, align 8
  %13 = alloca %struct.spi_transfer, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.st33zp24_spi_phy*
  store %struct.st33zp24_spi_phy* %15, %struct.st33zp24_spi_phy** %11, align 8
  %16 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %17 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %16, i32 0, i32 3
  %18 = load %struct.spi_device*, %struct.spi_device** %17, align 8
  store %struct.spi_device* %18, %struct.spi_device** %12, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 0
  %20 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %21 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %19, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 1
  %24 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %25 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %23, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 2
  store i32 0, i32* %27, align 8
  %28 = load i32, i32* @TPM_WRITE_DIRECTION, align 4
  %29 = load i32, i32* @LOCALITY0, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %32 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32 %30, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %40 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %38, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @TPM_DATA_FIFO, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = ashr i32 %53, 8
  %55 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %56 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32 %54, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %64 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %62, i32* %69, align 4
  br label %70

70:                                               ; preds = %52, %48, %4
  %71 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %72 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @memcpy(i32* %76, i32* %77, i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %84 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* @TPM_DUMMY_BYTE, align 4
  %90 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %91 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @memset(i32* %88, i32 %89, i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %96 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %94, %97
  %99 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 2
  store i32 %98, i32* %99, align 8
  %100 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  %101 = call i32 @spi_sync_transfer(%struct.spi_device* %100, %struct.spi_transfer* %13, i32 1)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %70
  %105 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %106 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %110 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %108, %111
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %107, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %104, %70
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @st33zp24_status_to_errno(i32 %118)
  ret i32 %119
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spi_sync_transfer(%struct.spi_device*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @st33zp24_status_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

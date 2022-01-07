; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_spi.c_st33zp24_spi_read8_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_spi.c_st33zp24_spi_read8_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st33zp24_spi_phy = type { i32*, i32, i32*, %struct.spi_device* }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32*, i32, i32* }

@LOCALITY0 = common dso_local global i32 0, align 4
@TPM_DUMMY_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32)* @st33zp24_spi_read8_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st33zp24_spi_read8_reg(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
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
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 2
  %25 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %26 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %24, align 8
  %28 = load i32, i32* @LOCALITY0, align 4
  %29 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %30 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 %28, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %38 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32 %36, i32* %43, align 4
  %44 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %45 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* @TPM_DUMMY_BYTE, align 4
  %51 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %52 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %53, %54
  %56 = call i32 @memset(i32* %49, i32 %50, i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %59 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %57, %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %61, %62
  %64 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 1
  store i32 %63, i32* %64, align 8
  %65 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  %66 = call i32 @spi_sync_transfer(%struct.spi_device* %65, %struct.spi_transfer* %13, i32 1)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %4
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %99

72:                                               ; preds = %69
  %73 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %74 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %78 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %76, %79
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %75, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %10, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %87 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %11, align 8
  %93 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @memcpy(i32* %85, i32* %96, i32 %97)
  br label %99

99:                                               ; preds = %72, %69, %4
  %100 = load i32, i32* %10, align 4
  ret i32 %100
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spi_sync_transfer(%struct.spi_device*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

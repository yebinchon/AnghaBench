; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzEnc.c_XzEncIndex_WriteFooter.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzEnc.c_XzEncIndex_WriteFooter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64*, i32 }

@CRC_INIT_VAL = common dso_local global i32 0, align 4
@XZ_FOOTER_SIG_0 = common dso_local global i64 0, align 8
@XZ_FOOTER_SIG_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32*)* @XzEncIndex_WriteFooter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XzEncIndex_WriteFooter(%struct.TYPE_3__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [32 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @CRC_INIT_VAL, align 4
  store i32 %11, i32* %9, align 4
  %12 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @Xz_WriteVarInt(i64* %13, i32 %16)
  %18 = add nsw i32 1, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %8, align 4
  %20 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  store i64 0, i64* %20, align 16
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @WriteBytesUpdateCrc(i32* %21, i64* %22, i32 %23, i32* %9)
  %25 = call i32 @RINOK(i32 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @WriteBytesUpdateCrc(i32* %26, i64* %29, i32 %32, i32* %9)
  %34 = call i32 @RINOK(i32 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = add i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @XZ_GET_PAD_SIZE(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 1
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 2
  store i64 0, i64* %43, align 16
  %44 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 3
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %50 = getelementptr inbounds i64, i64* %49, i64 4
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = sub i64 0, %52
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @CrcUpdate(i32 %48, i64* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %58 = getelementptr inbounds i64, i64* %57, i64 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @CRC_GET_DIGEST(i32 %59)
  %61 = call i32 @SetUi32(i64* %58, i32 %60)
  %62 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %63 = getelementptr inbounds i64, i64* %62, i64 8
  %64 = getelementptr inbounds i64, i64* %63, i64 4
  %65 = load i32, i32* %8, align 4
  %66 = lshr i32 %65, 2
  %67 = call i32 @SetUi32(i64* %64, i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = ashr i32 %68, 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 16
  store i64 %70, i64* %71, align 16
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, 255
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 17
  store i64 %74, i64* %75, align 8
  %76 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %77 = getelementptr inbounds i64, i64* %76, i64 8
  %78 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %79 = getelementptr inbounds i64, i64* %78, i64 8
  %80 = getelementptr inbounds i64, i64* %79, i64 4
  %81 = call i32 @CrcCalc(i64* %80, i32 6)
  %82 = call i32 @SetUi32(i64* %77, i32 %81)
  %83 = load i64, i64* @XZ_FOOTER_SIG_0, align 8
  %84 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 18
  store i64 %83, i64* %84, align 16
  %85 = load i64, i64* @XZ_FOOTER_SIG_1, align 8
  %86 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 19
  store i64 %85, i64* %86, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %89 = getelementptr inbounds i64, i64* %88, i64 4
  %90 = load i32, i32* %10, align 4
  %91 = zext i32 %90 to i64
  %92 = sub i64 0, %91
  %93 = getelementptr inbounds i64, i64* %89, i64 %92
  %94 = load i32, i32* %10, align 4
  %95 = add i32 %94, 4
  %96 = add i32 %95, 12
  %97 = call i32 @WriteBytes(i32* %87, i64* %93, i32 %96)
  ret i32 %97
}

declare dso_local i32 @Xz_WriteVarInt(i64*, i32) #1

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @WriteBytesUpdateCrc(i32*, i64*, i32, i32*) #1

declare dso_local i32 @XZ_GET_PAD_SIZE(i32) #1

declare dso_local i32 @CrcUpdate(i32, i64*, i32) #1

declare dso_local i32 @SetUi32(i64*, i32) #1

declare dso_local i32 @CRC_GET_DIGEST(i32) #1

declare dso_local i32 @CrcCalc(i64*, i32) #1

declare dso_local i32 @WriteBytes(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

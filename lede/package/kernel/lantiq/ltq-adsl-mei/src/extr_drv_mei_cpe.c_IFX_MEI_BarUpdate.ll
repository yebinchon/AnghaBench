; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_BarUpdate.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_BarUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }

@XDATA_REGISTER = common dso_local global i32 0, align 4
@ME_XMEM_BAR_BASE = common dso_local global i64 0, align 8
@MAX_BAR_REGISTERS = common dso_local global i32 0, align 4
@g_xdata_addr = common dso_local global i64 0, align 8
@ME_XDATA_BASE_SH = common dso_local global i64 0, align 8
@DSL_DEV_MEI_ERR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @IFX_MEI_BarUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IFX_MEI_BarUpdate(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.TYPE_4__* @DSL_DEV_PRIVATE(i32* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %6, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %37, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @XDATA_REGISTER, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %37

20:                                               ; preds = %15
  %21 = load i32*, i32** %3, align 8
  %22 = load i64, i64* @ME_XMEM_BAR_BASE, align 8
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 %23, 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 268435455
  %35 = sext i32 %34 to i64
  %36 = call i32 @IFX_MEI_LongWordWriteOffset(i32* %21, i64 %26, i64 %35)
  br label %37

37:                                               ; preds = %20, %19
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %11

40:                                               ; preds = %11
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %98, %40
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @MAX_BAR_REGISTERS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %101

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @XDATA_REGISTER, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %98

51:                                               ; preds = %46
  %52 = load i32*, i32** %3, align 8
  %53 = load i64, i64* @ME_XMEM_BAR_BASE, align 8
  %54 = load i32, i32* %5, align 4
  %55 = mul nsw i32 %54, 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %53, %56
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = and i32 %65, 268435455
  %67 = sext i32 %66 to i64
  %68 = call i32 @IFX_MEI_LongWordWriteOffset(i32* %52, i64 %57, i64 %67)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i64 %75, i64* %80, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  store i32 %87, i32* %92, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %51, %50
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %42

101:                                              ; preds = %42
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %103 = load i32, i32* @XDATA_REGISTER, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* @g_xdata_addr, align 8
  %108 = load i32*, i32** %3, align 8
  %109 = load i64, i64* @ME_XMEM_BAR_BASE, align 8
  %110 = load i32, i32* @XDATA_REGISTER, align 4
  %111 = mul nsw i32 %110, 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %109, %112
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %115 = load i32, i32* @XDATA_REGISTER, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = and i32 %120, 268435455
  %122 = sext i32 %121 to i64
  %123 = call i32 @IFX_MEI_LongWordWriteOffset(i32* %108, i64 %113, i64 %122)
  %124 = load i32*, i32** %3, align 8
  %125 = load i64, i64* @ME_XDATA_BASE_SH, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %127 = load i32, i32* @XDATA_REGISTER, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = and i64 %131, 268435455
  %133 = call i32 @IFX_MEI_LongWordWriteOffset(i32* %124, i64 %125, i64 %132)
  %134 = load i32, i32* @DSL_DEV_MEI_ERR_SUCCESS, align 4
  ret i32 %134
}

declare dso_local %struct.TYPE_4__* @DSL_DEV_PRIVATE(i32*) #1

declare dso_local i32 @IFX_MEI_LongWordWriteOffset(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

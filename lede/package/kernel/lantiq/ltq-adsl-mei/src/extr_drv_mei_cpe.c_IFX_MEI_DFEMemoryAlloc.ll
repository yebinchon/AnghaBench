; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_DFEMemoryAlloc.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_DFEMemoryAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i8*, i8*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@SDRAM_SEGMENT_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"image_size = %ld\0A\00", align 1
@MAX_BAR_REGISTERS = common dso_local global i32 0, align 4
@XDATA_REGISTER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%d: kmalloc %d bytes memory fail!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Image size is too large!\0A\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@FREE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64)* @IFX_MEI_DFEMemoryAlloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IFX_MEI_DFEMemoryAlloc(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_7__*
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %11, align 8
  %19 = load i64, i64* @SDRAM_SEGMENT_SIZE, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %12, align 4
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @IFX_MEI_DMSG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %21)
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %117, %2
  %24 = load i64, i64* %5, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @MAX_BAR_REGISTERS, align 4
  %29 = icmp slt i32 %27, %28
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %120

32:                                               ; preds = %30
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @XDATA_REGISTER, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %117

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @MAX_BAR_REGISTERS, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i64, i64* %5, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  br label %48

45:                                               ; preds = %37
  %46 = load i64, i64* @SDRAM_SEGMENT_SIZE, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kmalloc(i32 %49, i32 %50)
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 (i8*, ...) @IFX_MEI_EMSG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  br label %130

60:                                               ; preds = %48
  %61 = load i8*, i8** %7, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = and i64 %62, 1023
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %60
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @kfree(i8* %66)
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1024
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i8* @kmalloc(i32 %69, i32 %70)
  store i8* %71, i8** %7, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %65
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1024
  %78 = call i32 (i8*, ...) @IFX_MEI_EMSG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %77)
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %10, align 4
  br label %130

81:                                               ; preds = %65
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1023
  %84 = ptrtoint i8* %83 to i64
  %85 = and i64 %84, -1024
  store i64 %85, i64* %6, align 8
  br label %89

86:                                               ; preds = %60
  %87 = load i8*, i8** %7, align 8
  %88 = ptrtoint i8* %87 to i64
  store i64 %88, i64* %6, align 8
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i64, i64* %6, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i8* %91, i8** %96, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i8* %97, i8** %102, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  store i32 %103, i32* %108, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %5, align 8
  %112 = sub nsw i64 %111, %110
  store i64 %112, i64* %5, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %9, align 8
  %116 = add nsw i64 %115, %114
  store i64 %116, i64* %9, align 8
  br label %117

117:                                              ; preds = %89, %36
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %23

120:                                              ; preds = %30
  %121 = load i64, i64* %5, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = call i32 (i8*, ...) @IFX_MEI_EMSG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* @EFBIG, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %10, align 4
  br label %130

127:                                              ; preds = %120
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %3, align 4
  br label %135

130:                                              ; preds = %123, %74, %54
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %132 = load i32, i32* @FREE_ALL, align 4
  %133 = call i32 @IFX_MEI_DFEMemoryFree(%struct.TYPE_8__* %131, i32 %132)
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %130, %127
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @IFX_MEI_DMSG(i8*, i64) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @IFX_MEI_EMSG(i8*, ...) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @IFX_MEI_DFEMemoryFree(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

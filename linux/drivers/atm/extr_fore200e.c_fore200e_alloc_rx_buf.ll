; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_fore200e.c_fore200e_alloc_rx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_fore200e.c_fore200e_alloc_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fore200e = type { i32, %struct.TYPE_2__*, %struct.host_bsq** }
%struct.TYPE_2__ = type { i32 }
%struct.host_bsq = type { i32, %struct.buffer*, %struct.buffer* }
%struct.buffer = type { i32, i32, i32, %struct.buffer*, i32, i64 }

@BUFFER_SCHEME_NBR = common dso_local global i32 0, align 4
@BUFFER_MAGN_NBR = common dso_local global i32 0, align 4
@fore200e_rx_buf_nbr = common dso_local global i32** null, align 8
@fore200e_rx_buf_size = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [40 x i8] c"rx buffers %d / %d are being allocated\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@FORE200E_STATE_ALLOC_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fore200e*)* @fore200e_alloc_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fore200e_alloc_rx_buf(%struct.fore200e* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fore200e*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.host_bsq*, align 8
  %10 = alloca %struct.buffer*, align 8
  store %struct.fore200e* %0, %struct.fore200e** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %141, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @BUFFER_SCHEME_NBR, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %144

15:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %137, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @BUFFER_MAGN_NBR, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %140

20:                                               ; preds = %16
  %21 = load %struct.fore200e*, %struct.fore200e** %3, align 8
  %22 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %21, i32 0, i32 2
  %23 = load %struct.host_bsq**, %struct.host_bsq*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.host_bsq*, %struct.host_bsq** %23, i64 %25
  %27 = load %struct.host_bsq*, %struct.host_bsq** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.host_bsq, %struct.host_bsq* %27, i64 %29
  store %struct.host_bsq* %30, %struct.host_bsq** %9, align 8
  %31 = load i32**, i32*** @fore200e_rx_buf_nbr, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  %40 = load i32**, i32*** @fore200e_rx_buf_size, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @DPRINTK(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.buffer* @kcalloc(i32 %52, i32 40, i32 %53)
  %55 = load %struct.host_bsq*, %struct.host_bsq** %9, align 8
  %56 = getelementptr inbounds %struct.host_bsq, %struct.host_bsq* %55, i32 0, i32 2
  store %struct.buffer* %54, %struct.buffer** %56, align 8
  store %struct.buffer* %54, %struct.buffer** %10, align 8
  %57 = load %struct.buffer*, %struct.buffer** %10, align 8
  %58 = icmp eq %struct.buffer* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %20
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %148

62:                                               ; preds = %20
  %63 = load %struct.host_bsq*, %struct.host_bsq** %9, align 8
  %64 = getelementptr inbounds %struct.host_bsq, %struct.host_bsq* %63, i32 0, i32 1
  store %struct.buffer* null, %struct.buffer** %64, align 8
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %130, %62
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %133

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.buffer*, %struct.buffer** %10, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.buffer, %struct.buffer* %71, i64 %73
  %75 = getelementptr inbounds %struct.buffer, %struct.buffer* %74, i32 0, i32 0
  store i32 %70, i32* %75, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.buffer*, %struct.buffer** %10, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.buffer, %struct.buffer* %77, i64 %79
  %81 = getelementptr inbounds %struct.buffer, %struct.buffer* %80, i32 0, i32 1
  store i32 %76, i32* %81, align 4
  %82 = load %struct.fore200e*, %struct.fore200e** %3, align 8
  %83 = load %struct.buffer*, %struct.buffer** %10, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.buffer, %struct.buffer* %83, i64 %85
  %87 = getelementptr inbounds %struct.buffer, %struct.buffer* %86, i32 0, i32 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.fore200e*, %struct.fore200e** %3, align 8
  %90 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %95 = call i64 @fore200e_chunk_alloc(%struct.fore200e* %82, i32* %87, i32 %88, i32 %93, i32 %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %69
  br label %98

98:                                               ; preds = %101, %97
  %99 = load i32, i32* %8, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load %struct.fore200e*, %struct.fore200e** %3, align 8
  %103 = load %struct.buffer*, %struct.buffer** %10, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.buffer, %struct.buffer* %103, i64 %106
  %108 = getelementptr inbounds %struct.buffer, %struct.buffer* %107, i32 0, i32 4
  %109 = call i32 @fore200e_chunk_free(%struct.fore200e* %102, i32* %108)
  br label %98

110:                                              ; preds = %98
  %111 = load %struct.buffer*, %struct.buffer** %10, align 8
  %112 = call i32 @kfree(%struct.buffer* %111)
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %148

115:                                              ; preds = %69
  %116 = load %struct.host_bsq*, %struct.host_bsq** %9, align 8
  %117 = getelementptr inbounds %struct.host_bsq, %struct.host_bsq* %116, i32 0, i32 1
  %118 = load %struct.buffer*, %struct.buffer** %117, align 8
  %119 = load %struct.buffer*, %struct.buffer** %10, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.buffer, %struct.buffer* %119, i64 %121
  %123 = getelementptr inbounds %struct.buffer, %struct.buffer* %122, i32 0, i32 3
  store %struct.buffer* %118, %struct.buffer** %123, align 8
  %124 = load %struct.buffer*, %struct.buffer** %10, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.buffer, %struct.buffer* %124, i64 %126
  %128 = load %struct.host_bsq*, %struct.host_bsq** %9, align 8
  %129 = getelementptr inbounds %struct.host_bsq, %struct.host_bsq* %128, i32 0, i32 1
  store %struct.buffer* %127, %struct.buffer** %129, align 8
  br label %130

130:                                              ; preds = %115
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %65

133:                                              ; preds = %65
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.host_bsq*, %struct.host_bsq** %9, align 8
  %136 = getelementptr inbounds %struct.host_bsq, %struct.host_bsq* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %16

140:                                              ; preds = %16
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %4, align 4
  br label %11

144:                                              ; preds = %11
  %145 = load i32, i32* @FORE200E_STATE_ALLOC_BUF, align 4
  %146 = load %struct.fore200e*, %struct.fore200e** %3, align 8
  %147 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %144, %110, %59
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @DPRINTK(i32, i8*, i32, i32) #1

declare dso_local %struct.buffer* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @fore200e_chunk_alloc(%struct.fore200e*, i32*, i32, i32, i32) #1

declare dso_local i32 @fore200e_chunk_free(%struct.fore200e*, i32*) #1

declare dso_local i32 @kfree(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

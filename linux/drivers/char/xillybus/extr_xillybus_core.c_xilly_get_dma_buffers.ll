; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xilly_get_dma_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xilly_get_dma_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilly_endpoint = type { i32, i32, i64, i8*, %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i32 (%struct.xilly_endpoint*, i8*, i32, i32, i32*)* }
%struct.device = type { i32 }
%struct.xilly_alloc_state = type { i32, i32, i8*, i32, i32 }
%struct.xilly_buffer = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Corrupt buffer allocation in IDT. Aborting.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@__GFP_DMA32 = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@fpga_dma_bufaddr_lowaddr_reg = common dso_local global i64 0, align 8
@fpga_dma_bufaddr_highaddr_reg = common dso_local global i64 0, align 8
@fpga_dma_bufno_reg = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xilly_endpoint*, %struct.xilly_alloc_state*, %struct.xilly_buffer**, i32, i32)* @xilly_get_dma_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilly_get_dma_buffers(%struct.xilly_endpoint* %0, %struct.xilly_alloc_state* %1, %struct.xilly_buffer** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xilly_endpoint*, align 8
  %8 = alloca %struct.xilly_alloc_state*, align 8
  %9 = alloca %struct.xilly_buffer**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.device*, align 8
  %16 = alloca %struct.xilly_buffer*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.xilly_endpoint* %0, %struct.xilly_endpoint** %7, align 8
  store %struct.xilly_alloc_state* %1, %struct.xilly_alloc_state** %8, align 8
  store %struct.xilly_buffer** %2, %struct.xilly_buffer*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %7, align 8
  %20 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %19, i32 0, i32 5
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %15, align 8
  store %struct.xilly_buffer* null, %struct.xilly_buffer** %16, align 8
  %22 = load %struct.xilly_buffer**, %struct.xilly_buffer*** %9, align 8
  %23 = icmp ne %struct.xilly_buffer** %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %5
  %25 = load %struct.device*, %struct.device** %15, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.xilly_buffer* @devm_kcalloc(%struct.device* %25, i32 %26, i32 16, i32 %27)
  store %struct.xilly_buffer* %28, %struct.xilly_buffer** %16, align 8
  %29 = load %struct.xilly_buffer*, %struct.xilly_buffer** %16, align 8
  %30 = icmp ne %struct.xilly_buffer* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %200

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %5
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %196, %35
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %199

40:                                               ; preds = %36
  %41 = load %struct.xilly_alloc_state*, %struct.xilly_alloc_state** %8, align 8
  %42 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load %struct.xilly_alloc_state*, %struct.xilly_alloc_state** %8, align 8
  %48 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %7, align 8
  %53 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %52, i32 0, i32 5
  %54 = load %struct.device*, %struct.device** %53, align 8
  %55 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %200

58:                                               ; preds = %46, %40
  %59 = load %struct.xilly_alloc_state*, %struct.xilly_alloc_state** %8, align 8
  %60 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %97

63:                                               ; preds = %58
  %64 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %64, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %65

65:                                               ; preds = %69, %63
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, i32* %18, align 4
  %71 = mul nsw i32 %70, 2
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  br label %65

74:                                               ; preds = %65
  %75 = load %struct.device*, %struct.device** %15, align 8
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = load i32, i32* @__GFP_DMA32, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @__GFP_ZERO, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %17, align 4
  %82 = call i64 @devm_get_free_pages(%struct.device* %75, i32 %80, i32 %81)
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.xilly_alloc_state*, %struct.xilly_alloc_state** %8, align 8
  %85 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.xilly_alloc_state*, %struct.xilly_alloc_state** %8, align 8
  %87 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %74
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %200

93:                                               ; preds = %74
  %94 = load i32, i32* %18, align 4
  %95 = load %struct.xilly_alloc_state*, %struct.xilly_alloc_state** %8, align 8
  %96 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %93, %58
  %98 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %7, align 8
  %99 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %98, i32 0, i32 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32 (%struct.xilly_endpoint*, i8*, i32, i32, i32*)*, i32 (%struct.xilly_endpoint*, i8*, i32, i32, i32*)** %101, align 8
  %103 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %7, align 8
  %104 = load %struct.xilly_alloc_state*, %struct.xilly_alloc_state** %8, align 8
  %105 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.xilly_alloc_state*, %struct.xilly_alloc_state** %8, align 8
  %109 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 %102(%struct.xilly_endpoint* %103, i8* %106, i32 %107, i32 %110, i32* %14)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %97
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %6, align 4
  br label %200

116:                                              ; preds = %97
  %117 = load i32, i32* %14, align 4
  %118 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %7, align 8
  %119 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @fpga_dma_bufaddr_lowaddr_reg, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @iowrite32(i32 %117, i64 %122)
  %124 = load i32, i32* %14, align 4
  %125 = ashr i32 %124, 32
  %126 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %7, align 8
  %127 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @fpga_dma_bufaddr_highaddr_reg, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @iowrite32(i32 %125, i64 %130)
  %132 = load %struct.xilly_buffer**, %struct.xilly_buffer*** %9, align 8
  %133 = icmp ne %struct.xilly_buffer** %132, null
  br i1 %133, label %134, label %163

134:                                              ; preds = %116
  %135 = load %struct.xilly_alloc_state*, %struct.xilly_alloc_state** %8, align 8
  %136 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.xilly_buffer*, %struct.xilly_buffer** %16, align 8
  %139 = getelementptr inbounds %struct.xilly_buffer, %struct.xilly_buffer* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load i32, i32* %14, align 4
  %141 = load %struct.xilly_buffer*, %struct.xilly_buffer** %16, align 8
  %142 = getelementptr inbounds %struct.xilly_buffer, %struct.xilly_buffer* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.xilly_buffer*, %struct.xilly_buffer** %16, align 8
  %144 = getelementptr inbounds %struct.xilly_buffer, %struct.xilly_buffer* %143, i32 1
  store %struct.xilly_buffer* %144, %struct.xilly_buffer** %16, align 8
  %145 = load %struct.xilly_buffer**, %struct.xilly_buffer*** %9, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.xilly_buffer*, %struct.xilly_buffer** %145, i64 %147
  store %struct.xilly_buffer* %143, %struct.xilly_buffer** %148, align 8
  %149 = load %struct.xilly_alloc_state*, %struct.xilly_alloc_state** %8, align 8
  %150 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.xilly_alloc_state*, %struct.xilly_alloc_state** %8, align 8
  %153 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  %156 = or i32 %151, %154
  %157 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %7, align 8
  %158 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @fpga_dma_bufno_reg, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @iowrite32(i32 %156, i64 %161)
  br label %184

163:                                              ; preds = %116
  %164 = load %struct.xilly_alloc_state*, %struct.xilly_alloc_state** %8, align 8
  %165 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %7, align 8
  %168 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %167, i32 0, i32 3
  store i8* %166, i8** %168, align 8
  %169 = load i32, i32* %14, align 4
  %170 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %7, align 8
  %171 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %7, align 8
  %174 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.xilly_alloc_state*, %struct.xilly_alloc_state** %8, align 8
  %176 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %7, align 8
  %179 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @fpga_dma_bufno_reg, align 8
  %182 = add nsw i64 %180, %181
  %183 = call i32 @iowrite32(i32 %177, i64 %182)
  br label %184

184:                                              ; preds = %163, %134
  %185 = load i32, i32* %11, align 4
  %186 = load %struct.xilly_alloc_state*, %struct.xilly_alloc_state** %8, align 8
  %187 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.xilly_alloc_state*, %struct.xilly_alloc_state** %8, align 8
  %192 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = sext i32 %190 to i64
  %195 = getelementptr i8, i8* %193, i64 %194
  store i8* %195, i8** %192, align 8
  br label %196

196:                                              ; preds = %184
  %197 = load i32, i32* %12, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %12, align 4
  br label %36

199:                                              ; preds = %36
  store i32 0, i32* %6, align 4
  br label %200

200:                                              ; preds = %199, %114, %90, %51, %31
  %201 = load i32, i32* %6, align 4
  ret i32 %201
}

declare dso_local %struct.xilly_buffer* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @devm_get_free_pages(%struct.device*, i32, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

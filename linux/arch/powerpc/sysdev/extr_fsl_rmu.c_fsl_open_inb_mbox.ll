; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rmu.c_fsl_open_inb_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rmu.c_fsl_open_inb_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.rio_priv* }
%struct.rio_priv = type { i32 }
%struct.fsl_rmu = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i32, i32**, i64, i8* }

@RIO_MIN_RX_RING_SIZE = common dso_local global i32 0, align 4
@RIO_MAX_RX_RING_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RIO_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fsl_rio_rx_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"msg_rx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_open_inb_mbox(%struct.rio_mport* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rio_mport*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rio_priv*, align 8
  %12 = alloca %struct.fsl_rmu*, align 8
  store %struct.rio_mport* %0, %struct.rio_mport** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %14 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %13, i32 0, i32 0
  %15 = load %struct.rio_priv*, %struct.rio_priv** %14, align 8
  store %struct.rio_priv* %15, %struct.rio_priv** %11, align 8
  %16 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %17 = call %struct.fsl_rmu* @GET_RMM_HANDLE(%struct.rio_mport* %16)
  store %struct.fsl_rmu* %17, %struct.fsl_rmu** %12, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @RIO_MIN_RX_RING_SIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @RIO_MAX_RX_RING_SIZE, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @is_power_of_2(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25, %21, %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  br label %161

32:                                               ; preds = %25
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %35 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  store i8* %33, i8** %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %39 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %42 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %59, %32
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %47 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %44
  %52 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %53 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %44

62:                                               ; preds = %44
  %63 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %64 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %67 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @RIO_MAX_MSG_SIZE, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %73 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i32 @dma_alloc_coherent(i32 %65, i32 %71, i64* %74, i32 %75)
  %77 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %78 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 8
  %80 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %81 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %62
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %10, align 4
  br label %161

88:                                               ; preds = %62
  %89 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %90 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %94 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @out_be32(i32* %92, i32 %97)
  %99 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %100 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %104 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @out_be32(i32* %102, i32 %107)
  %109 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %110 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = call i32 @out_be32(i32* %112, i32 145)
  %114 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %115 = call i32 @IRQ_RIO_RX(%struct.rio_mport* %114)
  %116 = load i32, i32* @fsl_rio_rx_handler, align 4
  %117 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %118 = bitcast %struct.rio_mport* %117 to i8*
  %119 = call i32 @request_irq(i32 %115, i32 %116, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %88
  %123 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %124 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %127 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @RIO_MAX_MSG_SIZE, align 4
  %131 = mul nsw i32 %129, %130
  %132 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %133 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %137 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @dma_free_coherent(i32 %125, i32 %131, i32 %135, i64 %139)
  br label %161

141:                                              ; preds = %88
  %142 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %143 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = call i32 @out_be32(i32* %145, i32 1769568)
  %147 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %148 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %147, i32 0, i32 0
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @get_bitmask_order(i32 %151)
  %153 = sub nsw i32 %152, 2
  %154 = shl i32 %153, 12
  %155 = call i32 @setbits32(i32* %150, i32 %154)
  %156 = load %struct.fsl_rmu*, %struct.fsl_rmu** %12, align 8
  %157 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %156, i32 0, i32 0
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = call i32 @setbits32(i32* %159, i32 1)
  br label %161

161:                                              ; preds = %141, %122, %85, %29
  %162 = load i32, i32* %10, align 4
  ret i32 %162
}

declare dso_local %struct.fsl_rmu* @GET_RMM_HANDLE(%struct.rio_mport*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @IRQ_RIO_RX(%struct.rio_mport*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i64) #1

declare dso_local i32 @setbits32(i32*, i32) #1

declare dso_local i32 @get_bitmask_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

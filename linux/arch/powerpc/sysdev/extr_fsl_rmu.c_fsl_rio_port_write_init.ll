; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rmu.c_fsl_rio_port_write_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rmu.c_fsl_rio_port_write_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_rio_pw = type { %struct.TYPE_4__, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@RIO_IPWMR_PWE = common dso_local global i32 0, align 4
@RIO_PW_MSG_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"RIO: unable allocate port write queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"EIPWQBAR: 0x%08x IPWQBAR: 0x%08x\0A\00", align 1
@RIO_IPWSR_TE = common dso_local global i32 0, align 4
@RIO_IPWSR_QFI = common dso_local global i32 0, align 4
@RIO_IPWSR_PWD = common dso_local global i32 0, align 4
@RIO_IPWMR_SEN = common dso_local global i32 0, align 4
@RIO_IPWMR_QFIE = common dso_local global i32 0, align 4
@RIO_IPWMR_EIE = common dso_local global i32 0, align 4
@RIO_IPWMR_CQ = common dso_local global i32 0, align 4
@fsl_rio_port_write_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"port-write\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"MPC85xx RIO: unable to request inbound doorbell irq\00", align 1
@rio_regs_win = common dso_local global i64 0, align 8
@RIO_LTLEECSR = common dso_local global i64 0, align 8
@LTLEECSR_ENABLE_ALL = common dso_local global i32 0, align 4
@fsl_pw_dpc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"FIFO allocation failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"IPWMR: 0x%08x IPWSR: 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_rio_port_write_init(%struct.fsl_rio_pw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_rio_pw*, align 8
  %4 = alloca i32, align 4
  store %struct.fsl_rio_pw* %0, %struct.fsl_rio_pw** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %6 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %10 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @in_be32(i32* %12)
  %14 = load i32, i32* @RIO_IPWMR_PWE, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = call i32 @out_be32(i32* %8, i32 %16)
  %18 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %19 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RIO_PW_MSG_SIZE, align 4
  %22 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %23 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @dma_alloc_coherent(i32 %20, i32 %21, i64* %24, i32 %25)
  %27 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %28 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  %30 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %31 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %1
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %164

39:                                               ; preds = %1
  %40 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %41 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %44 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %47 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = call i32 @out_be32(i32* %49, i32 0)
  %51 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %52 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %56 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @out_be32(i32* %54, i32 %59)
  %61 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %62 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = call i32 @in_be32(i32* %64)
  %66 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %67 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = call i32 @in_be32(i32* %69)
  %71 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %70)
  %72 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %73 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %72, i32 0, i32 2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i32, i32* @RIO_IPWSR_TE, align 4
  %77 = load i32, i32* @RIO_IPWSR_QFI, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @RIO_IPWSR_PWD, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @out_be32(i32* %75, i32 %80)
  %82 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %83 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %82, i32 0, i32 2
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* @RIO_IPWMR_SEN, align 4
  %87 = load i32, i32* @RIO_IPWMR_QFIE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @RIO_IPWMR_EIE, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @RIO_IPWMR_CQ, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @out_be32(i32* %85, i32 %92)
  %94 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %95 = call i32 @IRQ_RIO_PW(%struct.fsl_rio_pw* %94)
  %96 = load i32, i32* @fsl_rio_port_write_handler, align 4
  %97 = load i32, i32* @IRQF_SHARED, align 4
  %98 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %99 = bitcast %struct.fsl_rio_pw* %98 to i8*
  %100 = call i32 @request_irq(i32 %95, i32 %96, i32 %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %39
  %104 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %149

105:                                              ; preds = %39
  %106 = load i64, i64* @rio_regs_win, align 8
  %107 = load i64, i64* @RIO_LTLEECSR, align 8
  %108 = add nsw i64 %106, %107
  %109 = inttoptr i64 %108 to i32*
  %110 = load i32, i32* @LTLEECSR_ENABLE_ALL, align 4
  %111 = call i32 @out_be32(i32* %109, i32 %110)
  %112 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %113 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %112, i32 0, i32 5
  %114 = load i32, i32* @fsl_pw_dpc, align 4
  %115 = call i32 @INIT_WORK(i32* %113, i32 %114)
  %116 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %117 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %116, i32 0, i32 4
  %118 = call i32 @spin_lock_init(i32* %117)
  %119 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %120 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %119, i32 0, i32 3
  %121 = load i32, i32* @RIO_PW_MSG_SIZE, align 4
  %122 = mul nsw i32 %121, 32
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = call i64 @kfifo_alloc(i32* %120, i32 %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %105
  %127 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %143

130:                                              ; preds = %105
  %131 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %132 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %131, i32 0, i32 2
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = call i32 @in_be32(i32* %134)
  %136 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %137 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %136, i32 0, i32 2
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  %140 = call i32 @in_be32(i32* %139)
  %141 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %135, i32 %140)
  %142 = load i32, i32* %4, align 4
  store i32 %142, i32* %2, align 4
  br label %164

143:                                              ; preds = %126
  %144 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %145 = call i32 @IRQ_RIO_PW(%struct.fsl_rio_pw* %144)
  %146 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %147 = bitcast %struct.fsl_rio_pw* %146 to i8*
  %148 = call i32 @free_irq(i32 %145, i8* %147)
  br label %149

149:                                              ; preds = %143, %103
  %150 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %151 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @RIO_PW_MSG_SIZE, align 4
  %154 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %155 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %3, align 8
  %159 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @dma_free_coherent(i32 %152, i32 %153, i32 %157, i64 %161)
  %163 = load i32, i32* %4, align 4
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %149, %130, %35
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @IRQ_RIO_PW(%struct.fsl_rio_pw*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

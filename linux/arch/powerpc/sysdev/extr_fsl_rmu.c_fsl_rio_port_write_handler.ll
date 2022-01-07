; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rmu.c_fsl_rio_port_write_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rmu.c_fsl_rio_port_write_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_rio_pw = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@rio_regs_win = common dso_local global i32* null, align 8
@RIO_EPWISR = common dso_local global i32 0, align 4
@RIO_EPWISR_PW = common dso_local global i32 0, align 4
@RIO_IPWSR_QFI = common dso_local global i32 0, align 4
@RIO_PW_MSG_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"RIO: ISR Discarded Port-Write Msg(s) (%d)\0A\00", align 1
@RIO_IPWMR_CQ = common dso_local global i32 0, align 4
@RIO_IPWMR_EIE = common dso_local global i32 0, align 4
@RIO_IPWSR_TE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"RIO: Port-Write Transaction Err (%d)\0A\00", align 1
@RIO_IPWMR_PWE = common dso_local global i32 0, align 4
@RIO_IPWSR_PWD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"RIO: Port Discarded Port-Write Msg(s) (%d)\0A\00", align 1
@RIO_EPWISR_PINT1 = common dso_local global i32 0, align 4
@RIO_LTLEDCSR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"RIO_LTLEDCSR = 0x%x\0A\00", align 1
@RIO_EPWISR_PINT2 = common dso_local global i32 0, align 4
@RIO_EPWISR_MU = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@RIO_IPWSR_PWB = common dso_local global i32 0, align 4
@RIO_IPWSR_QF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fsl_rio_port_write_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_rio_port_write_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsl_rio_pw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.fsl_rio_pw*
  store %struct.fsl_rio_pw* %11, %struct.fsl_rio_pw** %7, align 8
  %12 = load i32*, i32** @rio_regs_win, align 8
  %13 = load i32, i32* @RIO_EPWISR, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i32 @in_be32(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @RIO_EPWISR_PW, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %151

22:                                               ; preds = %2
  %23 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %7, align 8
  %24 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = call i32 @in_be32(i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %7, align 8
  %29 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @in_be32(i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @RIO_IPWSR_QFI, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %86

37:                                               ; preds = %22
  %38 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %7, align 8
  %39 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %38, i32 0, i32 3
  %40 = call i64 @kfifo_avail(i32* %39)
  %41 = load i64, i64* @RIO_PW_MSG_SIZE, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %7, align 8
  %45 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %7, align 8
  %50 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %49, i32 0, i32 3
  %51 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %7, align 8
  %52 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* @RIO_PW_MSG_SIZE, align 8
  %56 = call i32 @kfifo_in(i32* %50, i32 %54, i64 %55)
  br label %68

57:                                               ; preds = %37
  %58 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %7, align 8
  %59 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %7, align 8
  %64 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %57, %43
  %69 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %7, align 8
  %70 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* @RIO_IPWSR_QFI, align 4
  %74 = call i32 @out_be32(i32* %72, i32 %73)
  %75 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %7, align 8
  %76 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @RIO_IPWMR_CQ, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @out_be32(i32* %78, i32 %81)
  %83 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %7, align 8
  %84 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %83, i32 0, i32 2
  %85 = call i32 @schedule_work(i32* %84)
  br label %86

86:                                               ; preds = %68, %22
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @RIO_IPWMR_EIE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %128

91:                                               ; preds = %86
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @RIO_IPWSR_TE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %128

96:                                               ; preds = %91
  %97 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %7, align 8
  %98 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %7, align 8
  %103 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %7, align 8
  %108 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @RIO_IPWMR_PWE, align 4
  %113 = xor i32 %112, -1
  %114 = and i32 %111, %113
  %115 = call i32 @out_be32(i32* %110, i32 %114)
  %116 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %7, align 8
  %117 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* @RIO_IPWSR_TE, align 4
  %121 = call i32 @out_be32(i32* %119, i32 %120)
  %122 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %7, align 8
  %123 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @out_be32(i32* %125, i32 %126)
  br label %128

128:                                              ; preds = %96, %91, %86
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @RIO_IPWSR_PWD, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %150

133:                                              ; preds = %128
  %134 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %7, align 8
  %135 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %7, align 8
  %140 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load %struct.fsl_rio_pw*, %struct.fsl_rio_pw** %7, align 8
  %145 = getelementptr inbounds %struct.fsl_rio_pw, %struct.fsl_rio_pw* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* @RIO_IPWSR_PWD, align 4
  %149 = call i32 @out_be32(i32* %147, i32 %148)
  br label %150

150:                                              ; preds = %133, %128
  br label %151

151:                                              ; preds = %150, %21
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @RIO_EPWISR_PINT1, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %151
  %157 = load i32*, i32** @rio_regs_win, align 8
  %158 = load i32, i32* @RIO_LTLEDCSR, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = call i32 @in_be32(i32* %160)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %162)
  %164 = call i32 @fsl_rio_port_error_handler(i32 0)
  br label %165

165:                                              ; preds = %156, %151
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @RIO_EPWISR_PINT2, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %165
  %171 = load i32*, i32** @rio_regs_win, align 8
  %172 = load i32, i32* @RIO_LTLEDCSR, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = call i32 @in_be32(i32* %174)
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %176)
  %178 = call i32 @fsl_rio_port_error_handler(i32 1)
  br label %179

179:                                              ; preds = %170, %165
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @RIO_EPWISR_MU, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %179
  %185 = load i32*, i32** @rio_regs_win, align 8
  %186 = load i32, i32* @RIO_LTLEDCSR, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = call i32 @in_be32(i32* %188)
  store i32 %189, i32* %9, align 4
  %190 = load i32, i32* %9, align 4
  %191 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %190)
  %192 = call i32 (...) @msg_unit_error_handler()
  br label %193

193:                                              ; preds = %184, %179
  %194 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %194
}

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i64 @kfifo_avail(i32*) #1

declare dso_local i32 @kfifo_in(i32*, i32, i64) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @fsl_rio_port_error_handler(i32) #1

declare dso_local i32 @msg_unit_error_handler(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

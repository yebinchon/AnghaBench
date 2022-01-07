; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rmu.c_fsl_rio_tx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rmu.c_fsl_rio_tx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.rio_mport*, i32, i32, i32)* }
%struct.fsl_rmu = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@RIO_MSG_OSR_TE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"RIO: outbound message transmission error\0A\00", align 1
@RIO_MSG_OSR_QOI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"RIO: outbound message queue overflow\0A\00", align 1
@RIO_MSG_OSR_EOMI = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fsl_rio_tx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_rio_tx_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rio_mport*, align 8
  %7 = alloca %struct.fsl_rmu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.rio_mport*
  store %struct.rio_mport* %11, %struct.rio_mport** %6, align 8
  %12 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %13 = call %struct.fsl_rmu* @GET_RMM_HANDLE(%struct.rio_mport* %12)
  store %struct.fsl_rmu* %13, %struct.fsl_rmu** %7, align 8
  %14 = load %struct.fsl_rmu*, %struct.fsl_rmu** %7, align 8
  %15 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = call i32 @in_be32(i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @RIO_MSG_OSR_TE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.fsl_rmu*, %struct.fsl_rmu** %7, align 8
  %26 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* @RIO_MSG_OSR_TE, align 4
  %30 = call i32 @out_be32(i32* %28, i32 %29)
  br label %91

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @RIO_MSG_OSR_QOI, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.fsl_rmu*, %struct.fsl_rmu** %7, align 8
  %39 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* @RIO_MSG_OSR_QOI, align 4
  %43 = call i32 @out_be32(i32* %41, i32 %42)
  br label %91

44:                                               ; preds = %31
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @RIO_MSG_OSR_EOMI, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %90

49:                                               ; preds = %44
  %50 = load %struct.fsl_rmu*, %struct.fsl_rmu** %7, align 8
  %51 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = call i32 @in_be32(i32* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.fsl_rmu*, %struct.fsl_rmu** %7, align 8
  %57 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %55, %59
  %61 = ashr i32 %60, 5
  store i32 %61, i32* %9, align 4
  %62 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %63 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32 (%struct.rio_mport*, i32, i32, i32)*, i32 (%struct.rio_mport*, i32, i32, i32)** %66, align 8
  %68 = icmp ne i32 (%struct.rio_mport*, i32, i32, i32)* %67, null
  br i1 %68, label %69, label %83

69:                                               ; preds = %49
  %70 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %71 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32 (%struct.rio_mport*, i32, i32, i32)*, i32 (%struct.rio_mport*, i32, i32, i32)** %74, align 8
  %76 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %77 = load %struct.fsl_rmu*, %struct.fsl_rmu** %7, align 8
  %78 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 %75(%struct.rio_mport* %76, i32 %80, i32 -1, i32 %81)
  br label %83

83:                                               ; preds = %69, %49
  %84 = load %struct.fsl_rmu*, %struct.fsl_rmu** %7, align 8
  %85 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* @RIO_MSG_OSR_EOMI, align 4
  %89 = call i32 @out_be32(i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %44
  br label %91

91:                                               ; preds = %90, %36, %23
  %92 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %92
}

declare dso_local %struct.fsl_rmu* @GET_RMM_HANDLE(%struct.rio_mport*) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_mpc512x_lpbfifo.c_mpc512x_lpbfifo_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_mpc512x_lpbfifo.c_mpc512x_lpbfifo_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.mpc512x_lpbfifo_request*, i64, %struct.TYPE_3__* }
%struct.mpc512x_lpbfifo_request = type { i64, i32 (%struct.mpc512x_lpbfifo_request*)* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.device = type { i32 }

@lpbfifo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MPC512X_LPBFIFO_REQ_DIR_READ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"bogus LPBFIFO IRQ\0A\00", align 1
@MPC512X_SCLPC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"DMA transfer from RAM to peripheral failed\0A\00", align 1
@MPC512X_SCLPC_RESET = common dso_local global i32 0, align 4
@MPC512X_SCLPC_FIFO_RESET = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mpc512x_lpbfifo_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc512x_lpbfifo_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.mpc512x_lpbfifo_request*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.device*
  store %struct.device* %11, %struct.device** %6, align 8
  store %struct.mpc512x_lpbfifo_request* null, %struct.mpc512x_lpbfifo_request** %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpbfifo, i32 0, i32 1), i64 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpbfifo, i32 0, i32 4), align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %69

17:                                               ; preds = %2
  %18 = load %struct.mpc512x_lpbfifo_request*, %struct.mpc512x_lpbfifo_request** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpbfifo, i32 0, i32 2), align 8
  store %struct.mpc512x_lpbfifo_request* %18, %struct.mpc512x_lpbfifo_request** %7, align 8
  %19 = load %struct.mpc512x_lpbfifo_request*, %struct.mpc512x_lpbfifo_request** %7, align 8
  %20 = icmp ne %struct.mpc512x_lpbfifo_request* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.mpc512x_lpbfifo_request*, %struct.mpc512x_lpbfifo_request** %7, align 8
  %23 = getelementptr inbounds %struct.mpc512x_lpbfifo_request, %struct.mpc512x_lpbfifo_request* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MPC512X_LPBFIFO_REQ_DIR_READ, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %17
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %69

30:                                               ; preds = %21
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpbfifo, i32 0, i32 4), align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @in_be32(i32* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @MPC512X_SCLPC_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpbfifo, i32 0, i32 4), align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* @MPC512X_SCLPC_RESET, align 4
  %43 = load i32, i32* @MPC512X_SCLPC_FIFO_RESET, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @out_be32(i32* %41, i32 %44)
  br label %69

46:                                               ; preds = %30
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpbfifo, i32 0, i32 4), align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* @MPC512X_SCLPC_SUCCESS, align 4
  %50 = call i32 @out_be32(i32* %48, i32 %49)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpbfifo, i32 0, i32 0), align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpbfifo, i32 0, i32 3), align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %69

54:                                               ; preds = %46
  store %struct.mpc512x_lpbfifo_request* null, %struct.mpc512x_lpbfifo_request** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpbfifo, i32 0, i32 2), align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpbfifo, i32 0, i32 1), i64 %55)
  %57 = load %struct.mpc512x_lpbfifo_request*, %struct.mpc512x_lpbfifo_request** %7, align 8
  %58 = getelementptr inbounds %struct.mpc512x_lpbfifo_request, %struct.mpc512x_lpbfifo_request* %57, i32 0, i32 1
  %59 = load i32 (%struct.mpc512x_lpbfifo_request*)*, i32 (%struct.mpc512x_lpbfifo_request*)** %58, align 8
  %60 = icmp ne i32 (%struct.mpc512x_lpbfifo_request*)* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.mpc512x_lpbfifo_request*, %struct.mpc512x_lpbfifo_request** %7, align 8
  %63 = getelementptr inbounds %struct.mpc512x_lpbfifo_request, %struct.mpc512x_lpbfifo_request* %62, i32 0, i32 1
  %64 = load i32 (%struct.mpc512x_lpbfifo_request*)*, i32 (%struct.mpc512x_lpbfifo_request*)** %63, align 8
  %65 = load %struct.mpc512x_lpbfifo_request*, %struct.mpc512x_lpbfifo_request** %7, align 8
  %66 = call i32 %64(%struct.mpc512x_lpbfifo_request* %65)
  br label %67

67:                                               ; preds = %61, %54
  %68 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %68, i32* %3, align 4
  br label %73

69:                                               ; preds = %53, %37, %27, %16
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpbfifo, i32 0, i32 1), i64 %70)
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %67
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

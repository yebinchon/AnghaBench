; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_lpbfifo.c_mpc52xx_lpbfifo_bcom_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_lpbfifo.c_mpc52xx_lpbfifo_bcom_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.mpc52xx_lpbfifo_request*, i32 }
%struct.mpc52xx_lpbfifo_request = type { i32, i32, i32, i32, i32 (%struct.mpc52xx_lpbfifo_request*)*, i32, i64, i32, i32 }

@lpbfifo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MPC52XX_LPBFIFO_FLAG_NO_DMA = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"transfer stalled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mpc52xx_lpbfifo_bcom_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_lpbfifo_bcom_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mpc52xx_lpbfifo_request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 0), i64 %10)
  %12 = call i32 (...) @get_tbl()
  store i32 %12, i32* %9, align 4
  %13 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 1), align 8
  store %struct.mpc52xx_lpbfifo_request* %13, %struct.mpc52xx_lpbfifo_request** %6, align 8
  %14 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %6, align 8
  %15 = icmp ne %struct.mpc52xx_lpbfifo_request* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %6, align 8
  %18 = getelementptr inbounds %struct.mpc52xx_lpbfifo_request, %struct.mpc52xx_lpbfifo_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MPC52XX_LPBFIFO_FLAG_NO_DMA, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16, %2
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 0), i64 %24)
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %26, i32* %3, align 4
  br label %96

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %6, align 8
  %32 = getelementptr inbounds %struct.mpc52xx_lpbfifo_request, %struct.mpc52xx_lpbfifo_request* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 2), align 8
  %37 = call i32 @bcom_buffer_done(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 0), i64 %40)
  %42 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %6, align 8
  %43 = getelementptr inbounds %struct.mpc52xx_lpbfifo_request, %struct.mpc52xx_lpbfifo_request* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %6, align 8
  %47 = getelementptr inbounds %struct.mpc52xx_lpbfifo_request, %struct.mpc52xx_lpbfifo_request* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = srem i32 %48, 1000
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %39
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %54, i32* %3, align 4
  br label %96

55:                                               ; preds = %35
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 2), align 8
  %57 = call i32 @bcom_retrieve_buffer(i32 %56, i32* %8, i32* null)
  %58 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %6, align 8
  %59 = getelementptr inbounds %struct.mpc52xx_lpbfifo_request, %struct.mpc52xx_lpbfifo_request* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %6, align 8
  %63 = getelementptr inbounds %struct.mpc52xx_lpbfifo_request, %struct.mpc52xx_lpbfifo_request* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %6, align 8
  %70 = getelementptr inbounds %struct.mpc52xx_lpbfifo_request, %struct.mpc52xx_lpbfifo_request* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 16777215
  %73 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %6, align 8
  %74 = getelementptr inbounds %struct.mpc52xx_lpbfifo_request, %struct.mpc52xx_lpbfifo_request* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  store %struct.mpc52xx_lpbfifo_request* null, %struct.mpc52xx_lpbfifo_request** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 1), align 8
  %75 = call i32 (...) @get_tbl()
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %6, align 8
  %79 = getelementptr inbounds %struct.mpc52xx_lpbfifo_request, %struct.mpc52xx_lpbfifo_request* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 0), i64 %82)
  %84 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %6, align 8
  %85 = getelementptr inbounds %struct.mpc52xx_lpbfifo_request, %struct.mpc52xx_lpbfifo_request* %84, i32 0, i32 4
  %86 = load i32 (%struct.mpc52xx_lpbfifo_request*)*, i32 (%struct.mpc52xx_lpbfifo_request*)** %85, align 8
  %87 = icmp ne i32 (%struct.mpc52xx_lpbfifo_request*)* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %55
  %89 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %6, align 8
  %90 = getelementptr inbounds %struct.mpc52xx_lpbfifo_request, %struct.mpc52xx_lpbfifo_request* %89, i32 0, i32 4
  %91 = load i32 (%struct.mpc52xx_lpbfifo_request*)*, i32 (%struct.mpc52xx_lpbfifo_request*)** %90, align 8
  %92 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %6, align 8
  %93 = call i32 %91(%struct.mpc52xx_lpbfifo_request* %92)
  br label %94

94:                                               ; preds = %88, %55
  %95 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %53, %23
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @get_tbl(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bcom_buffer_done(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @bcom_retrieve_buffer(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

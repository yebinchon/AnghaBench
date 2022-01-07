; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_adsl.c_ptm_napi_poll.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_adsl.c_ptm_napi_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i64 }
%struct.TYPE_2__ = type { i64 }

@g_net_dev = common dso_local global i64* null, align 8
@MBOX_IGU1_ISRC = common dso_local global i32 0, align 4
@MBOX_IGU1_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @ptm_napi_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptm_napi_poll(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.napi_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %26, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i64*, i64** @g_net_dev, align 8
  %11 = call i32 @ARRAY_SIZE(i64* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load i64*, i64** @g_net_dev, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %20 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br label %23

23:                                               ; preds = %13, %8
  %24 = phi i1 [ false, %8 ], [ %22, %13 ]
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %8

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @ptm_poll(i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %34 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @netif_running(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %29
  %39 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %40 = call i32 @napi_complete(%struct.napi_struct* %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %69

42:                                               ; preds = %29
  %43 = load i32, i32* %6, align 4
  %44 = call %struct.TYPE_2__* @WRX_DMA_CHANNEL_CONFIG(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 1, %49
  %51 = load i32, i32* @MBOX_IGU1_ISRC, align 4
  %52 = call i32 @IFX_REG_W32_MASK(i32 0, i32 %50, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = call %struct.TYPE_2__* @WRX_DMA_CHANNEL_CONFIG(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %60 = call i32 @napi_complete(%struct.napi_struct* %59)
  %61 = load i32, i32* %6, align 4
  %62 = shl i32 1, %61
  %63 = load i32, i32* @MBOX_IGU1_IER, align 4
  %64 = call i32 @IFX_REG_W32_MASK(i32 0, i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %69

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66, %42
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %58, %38
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @ptm_poll(i32, i32) #1

declare dso_local i32 @netif_running(i64) #1

declare dso_local i32 @napi_complete(%struct.napi_struct*) #1

declare dso_local %struct.TYPE_2__* @WRX_DMA_CHANNEL_CONFIG(i32) #1

declare dso_local i32 @IFX_REG_W32_MASK(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

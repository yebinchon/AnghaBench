; ModuleID = '/home/carl/AnghaBench/linux/crypto/async_tx/extr_async_tx.c_async_tx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/async_tx/extr_async_tx.c_async_tx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_async_tx_descriptor = type { i32 (%struct.dma_async_tx_descriptor*)*, %struct.dma_chan*, i32, i32 }
%struct.async_submit_ctl = type { i32, i32, i32, %struct.dma_async_tx_descriptor* }

@ASYNC_TX_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @async_tx_submit(%struct.dma_chan* %0, %struct.dma_async_tx_descriptor* %1, %struct.async_submit_ctl* %2) #0 {
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.dma_async_tx_descriptor*, align 8
  %6 = alloca %struct.async_submit_ctl*, align 8
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store %struct.dma_async_tx_descriptor* %1, %struct.dma_async_tx_descriptor** %5, align 8
  store %struct.async_submit_ctl* %2, %struct.async_submit_ctl** %6, align 8
  %9 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %6, align 8
  %10 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %9, i32 0, i32 3
  %11 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  store %struct.dma_async_tx_descriptor* %11, %struct.dma_async_tx_descriptor** %7, align 8
  %12 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %6, align 8
  %13 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %16 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %6, align 8
  %18 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %21 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %23 = icmp ne %struct.dma_async_tx_descriptor* %22, null
  br i1 %23, label %24, label %84

24:                                               ; preds = %3
  %25 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %26 = call i64 @async_tx_test_ack(%struct.dma_async_tx_descriptor* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %30 = call i64 @txd_next(%struct.dma_async_tx_descriptor* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %34 = call i64 @txd_parent(%struct.dma_async_tx_descriptor* %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %32, %28, %24
  %37 = phi i1 [ true, %28 ], [ true, %24 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %41 = call i32 @txd_lock(%struct.dma_async_tx_descriptor* %40)
  %42 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %43 = call i64 @txd_parent(%struct.dma_async_tx_descriptor* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %36
  %46 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %47 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %46, i32 0, i32 1
  %48 = load %struct.dma_chan*, %struct.dma_chan** %47, align 8
  %49 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %50 = icmp eq %struct.dma_chan* %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %53 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %54 = call i32 @txd_chain(%struct.dma_async_tx_descriptor* %52, %struct.dma_async_tx_descriptor* %53)
  store i32 128, i32* %8, align 4
  br label %56

55:                                               ; preds = %45
  store i32 130, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %51
  br label %66

57:                                               ; preds = %36
  %58 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %59 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %58, i32 0, i32 1
  %60 = load %struct.dma_chan*, %struct.dma_chan** %59, align 8
  %61 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %62 = icmp eq %struct.dma_chan* %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 129, i32* %8, align 4
  br label %65

64:                                               ; preds = %57
  store i32 130, i32* %8, align 4
  br label %65

65:                                               ; preds = %64, %63
  br label %66

66:                                               ; preds = %65, %56
  %67 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %68 = call i32 @txd_unlock(%struct.dma_async_tx_descriptor* %67)
  %69 = load i32, i32* %8, align 4
  switch i32 %69, label %83 [
    i32 128, label %70
    i32 130, label %71
    i32 129, label %75
  ]

70:                                               ; preds = %66
  br label %83

71:                                               ; preds = %66
  %72 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %73 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %74 = call i32 @async_tx_channel_switch(%struct.dma_async_tx_descriptor* %72, %struct.dma_async_tx_descriptor* %73)
  br label %83

75:                                               ; preds = %66
  %76 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %77 = call i32 @txd_clear_parent(%struct.dma_async_tx_descriptor* %76)
  %78 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %79 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %78, i32 0, i32 0
  %80 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %79, align 8
  %81 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %82 = call i32 %80(%struct.dma_async_tx_descriptor* %81)
  br label %83

83:                                               ; preds = %66, %75, %71, %70
  br label %92

84:                                               ; preds = %3
  %85 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %86 = call i32 @txd_clear_parent(%struct.dma_async_tx_descriptor* %85)
  %87 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %88 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %87, i32 0, i32 0
  %89 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %88, align 8
  %90 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %91 = call i32 %89(%struct.dma_async_tx_descriptor* %90)
  br label %92

92:                                               ; preds = %84, %83
  %93 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %6, align 8
  %94 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ASYNC_TX_ACK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %101 = call i32 @async_tx_ack(%struct.dma_async_tx_descriptor* %100)
  br label %102

102:                                              ; preds = %99, %92
  %103 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %104 = icmp ne %struct.dma_async_tx_descriptor* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %107 = call i32 @async_tx_ack(%struct.dma_async_tx_descriptor* %106)
  br label %108

108:                                              ; preds = %105, %102
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @async_tx_test_ack(%struct.dma_async_tx_descriptor*) #1

declare dso_local i64 @txd_next(%struct.dma_async_tx_descriptor*) #1

declare dso_local i64 @txd_parent(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @txd_lock(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @txd_chain(%struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @txd_unlock(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @async_tx_channel_switch(%struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @txd_clear_parent(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @async_tx_ack(%struct.dma_async_tx_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

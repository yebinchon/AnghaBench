; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_init_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_init_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32*, i32, i32, i32 }

@PS_AWAKE = common dso_local global i32 0, align 4
@SDIO_BLOCK_SIZE = common dso_local global i32 0, align 4
@BTSDIO_DMA_ALIGN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unable to allocate buffer for hw_regs.\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"hw_regs_buf=%p hw_regs=%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btmrvl_private*)* @btmrvl_init_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btmrvl_init_adapter(%struct.btmrvl_private* %0) #0 {
  %2 = alloca %struct.btmrvl_private*, align 8
  %3 = alloca i32, align 4
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %2, align 8
  %4 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %5 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 5
  %8 = call i32 @skb_queue_head_init(i32* %7)
  %9 = load i32, i32* @PS_AWAKE, align 4
  %10 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %11 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  store i32 %9, i32* %13, align 4
  %14 = load i32, i32* @SDIO_BLOCK_SIZE, align 4
  %15 = load i32, i32* @BTSDIO_DMA_ALIGN, align 4
  %16 = call i32 @ALIGN_SZ(i32 %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @kzalloc(i32 %17, i32 %18)
  %20 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %21 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i32 %19, i32* %23, align 8
  %24 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %25 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %1
  %31 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %32 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = call i32 @BT_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %60

36:                                               ; preds = %1
  %37 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %38 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @BTSDIO_DMA_ALIGN, align 4
  %43 = call i64 @ALIGN_ADDR(i32 %41, i32 %42)
  %44 = inttoptr i64 %43 to i32*
  %45 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %46 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32* %44, i32** %48, align 8
  %49 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %50 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %55 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32* %58)
  br label %60

60:                                               ; preds = %36, %30
  %61 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %62 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = call i32 @init_waitqueue_head(i32* %64)
  %66 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %67 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @init_waitqueue_head(i32* %69)
  ret void
}

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @ALIGN_SZ(i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i64 @ALIGN_ADDR(i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

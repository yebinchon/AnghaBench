; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_file.c_spu_send_mfc_command.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_file.c_spu_send_mfc_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.spu_context*, %struct.mfc_dma_command*)*, i32 (%struct.spu_context*, i32, i32)* }
%struct.mfc_dma_command = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu_context*, i32, i32*)* @spu_send_mfc_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_send_mfc_command(%struct.spu_context* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mfc_dma_command, align 4
  %6 = alloca %struct.spu_context*, align 8
  %7 = alloca i32*, align 8
  %8 = getelementptr inbounds %struct.mfc_dma_command, %struct.mfc_dma_command* %5, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  store %struct.spu_context* %0, %struct.spu_context** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %10 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.spu_context*, %struct.mfc_dma_command*)*, i32 (%struct.spu_context*, %struct.mfc_dma_command*)** %12, align 8
  %14 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %15 = call i32 %13(%struct.spu_context* %14, %struct.mfc_dma_command* %5)
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %3
  %23 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %24 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32 (%struct.spu_context*, i32, i32)*, i32 (%struct.spu_context*, i32, i32)** %26, align 8
  %28 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %29 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %30 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %27(%struct.spu_context* %28, i32 %31, i32 1)
  %33 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %34 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.spu_context*, %struct.mfc_dma_command*)*, i32 (%struct.spu_context*, %struct.mfc_dma_command*)** %36, align 8
  %38 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %39 = call i32 %37(%struct.spu_context* %38, %struct.mfc_dma_command* %5)
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %49

47:                                               ; preds = %22
  br label %48

48:                                               ; preds = %47, %3
  store i32 1, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %46
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

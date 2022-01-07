; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_dma.c_au1000_dma_read_proc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_dma.c_au1000_dma_read_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i8* }

@NUM_AU1000_DMA_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%2d: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @au1000_dma_read_proc(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dma_chan*, align 8
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %41, %6
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* @NUM_AU1000_DMA_CHANNELS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load i32, i32* %14, align 4
  %23 = call %struct.dma_chan* @get_dma_chan(i32 %22)
  store %struct.dma_chan* %23, %struct.dma_chan** %16, align 8
  %24 = load %struct.dma_chan*, %struct.dma_chan** %16, align 8
  %25 = icmp ne %struct.dma_chan* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %15, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i32, i32* %14, align 4
  %32 = load %struct.dma_chan*, %struct.dma_chan** %16, align 8
  %33 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @sprintf(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %31, i8* %34)
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %15, align 4
  br label %40

40:                                               ; preds = %26, %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %14, align 4
  br label %17

44:                                               ; preds = %17
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i8*, i8** %8, align 8
  %50 = load i8**, i8*** %9, align 8
  store i8* %49, i8** %50, align 8
  %51 = load i32*, i32** %12, align 8
  store i32 1, i32* %51, align 4
  store i32 0, i32* %7, align 4
  br label %69

52:                                               ; preds = %44
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8**, i8*** %9, align 8
  store i8* %56, i8** %57, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %15, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %7, align 4
  br label %69

66:                                               ; preds = %52
  %67 = load i32*, i32** %12, align 8
  store i32 1, i32* %67, align 4
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %66, %64, %48
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local %struct.dma_chan* @get_dma_chan(i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_lanai_buf_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_lanai_buf_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_buffer = type { i32, i32*, i32*, i32* }
%struct.pci_dev = type { i32 }

@LANAI_PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"bad dmaaddr: 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lanai_buffer*, i64, i64, %struct.pci_dev*)* @lanai_buf_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lanai_buf_allocate(%struct.lanai_buffer* %0, i64 %1, i64 %2, %struct.pci_dev* %3) #0 {
  %5 = alloca %struct.lanai_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.lanai_buffer* %0, %struct.lanai_buffer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.pci_dev* %3, %struct.pci_dev** %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ugt i64 %10, 131072
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i64 131072, i64* %6, align 8
  br label %13

13:                                               ; preds = %12, %4
  %14 = load i64, i64* @LANAI_PAGE_SIZE, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %22, %13
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 %23, 2
  store i32 %24, i32* %9, align 4
  br label %16

25:                                               ; preds = %16
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @LANAI_PAGE_SIZE, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i64, i64* @LANAI_PAGE_SIZE, align 8
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %29, %25
  br label %32

32:                                               ; preds = %81, %31
  %33 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %37 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %36, i32 0, i32 0
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32* @dma_alloc_coherent(i32* %34, i32 %35, i32* %37, i32 %38)
  %40 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %43 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %78

46:                                               ; preds = %32
  %47 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, 255
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %54 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = call i32 @APRINTK(i32 %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %59 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %62 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %61, i32 0, i32 3
  store i32* %60, i32** %62, align 8
  %63 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %64 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = bitcast i32* %65 to i8*
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %72 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %71, i32 0, i32 2
  store i32* %70, i32** %72, align 8
  %73 = load %struct.lanai_buffer*, %struct.lanai_buffer** %5, align 8
  %74 = getelementptr inbounds %struct.lanai_buffer, %struct.lanai_buffer* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @memset(i32* %75, i32 0, i32 %76)
  br label %86

78:                                               ; preds = %32
  %79 = load i32, i32* %9, align 4
  %80 = sdiv i32 %79, 2
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %7, align 8
  %85 = icmp uge i64 %83, %84
  br i1 %85, label %32, label %86

86:                                               ; preds = %81, %46
  ret void
}

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @APRINTK(i32, i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

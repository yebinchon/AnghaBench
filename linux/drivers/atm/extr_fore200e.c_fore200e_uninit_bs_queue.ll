; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_fore200e.c_fore200e_uninit_bs_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_fore200e.c_fore200e_uninit_bs_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fore200e = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.chunk, %struct.chunk }
%struct.chunk = type { i64 }

@BUFFER_SCHEME_NBR = common dso_local global i32 0, align 4
@BUFFER_MAGN_NBR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fore200e*)* @fore200e_uninit_bs_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fore200e_uninit_bs_queue(%struct.fore200e* %0) #0 {
  %2 = alloca %struct.fore200e*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.chunk*, align 8
  %6 = alloca %struct.chunk*, align 8
  store %struct.fore200e* %0, %struct.fore200e** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %61, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @BUFFER_SCHEME_NBR, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %64

11:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %57, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @BUFFER_MAGN_NBR, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %12
  %17 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %18 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store %struct.chunk* %27, %struct.chunk** %5, align 8
  %28 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %29 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store %struct.chunk* %38, %struct.chunk** %6, align 8
  %39 = load %struct.chunk*, %struct.chunk** %5, align 8
  %40 = getelementptr inbounds %struct.chunk, %struct.chunk* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %16
  %44 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %45 = load %struct.chunk*, %struct.chunk** %5, align 8
  %46 = call i32 @fore200e_dma_chunk_free(%struct.fore200e* %44, %struct.chunk* %45)
  br label %47

47:                                               ; preds = %43, %16
  %48 = load %struct.chunk*, %struct.chunk** %6, align 8
  %49 = getelementptr inbounds %struct.chunk, %struct.chunk* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %54 = load %struct.chunk*, %struct.chunk** %6, align 8
  %55 = call i32 @fore200e_dma_chunk_free(%struct.fore200e* %53, %struct.chunk* %54)
  br label %56

56:                                               ; preds = %52, %47
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %12

60:                                               ; preds = %12
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %7

64:                                               ; preds = %7
  ret void
}

declare dso_local i32 @fore200e_dma_chunk_free(%struct.fore200e*, %struct.chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

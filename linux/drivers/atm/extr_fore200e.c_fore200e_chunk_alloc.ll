; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_fore200e.c_fore200e_chunk_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_fore200e.c_fore200e_chunk_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fore200e = type { i32 }
%struct.chunk = type { i32, i32, i32*, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fore200e*, %struct.chunk*, i32, i32, i32)* @fore200e_chunk_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fore200e_chunk_alloc(%struct.fore200e* %0, %struct.chunk* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fore200e*, align 8
  %8 = alloca %struct.chunk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.fore200e* %0, %struct.fore200e** %7, align 8
  store %struct.chunk* %1, %struct.chunk** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %10, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ule i64 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %16, %5
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %18, %19
  %21 = load %struct.chunk*, %struct.chunk** %8, align 8
  %22 = getelementptr inbounds %struct.chunk, %struct.chunk* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.chunk*, %struct.chunk** %8, align 8
  %25 = getelementptr inbounds %struct.chunk, %struct.chunk* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.chunk*, %struct.chunk** %8, align 8
  %27 = getelementptr inbounds %struct.chunk, %struct.chunk* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kzalloc(i32 %28, i32 %29)
  %31 = load %struct.chunk*, %struct.chunk** %8, align 8
  %32 = getelementptr inbounds %struct.chunk, %struct.chunk* %31, i32 0, i32 2
  store i32* %30, i32** %32, align 8
  %33 = load %struct.chunk*, %struct.chunk** %8, align 8
  %34 = getelementptr inbounds %struct.chunk, %struct.chunk* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %17
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %84

40:                                               ; preds = %17
  %41 = load i32, i32* %10, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.chunk*, %struct.chunk** %8, align 8
  %45 = getelementptr inbounds %struct.chunk, %struct.chunk* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @FORE200E_ALIGN(i32* %46, i32 %47)
  store i64 %48, i64* %12, align 8
  br label %49

49:                                               ; preds = %43, %40
  %50 = load %struct.chunk*, %struct.chunk** %8, align 8
  %51 = getelementptr inbounds %struct.chunk, %struct.chunk* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load %struct.chunk*, %struct.chunk** %8, align 8
  %56 = getelementptr inbounds %struct.chunk, %struct.chunk* %55, i32 0, i32 4
  store i32* %54, i32** %56, align 8
  %57 = load %struct.fore200e*, %struct.fore200e** %7, align 8
  %58 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.chunk*, %struct.chunk** %8, align 8
  %61 = getelementptr inbounds %struct.chunk, %struct.chunk* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @dma_map_single(i32 %59, i32* %62, i32 %63, i32 %64)
  %66 = load %struct.chunk*, %struct.chunk** %8, align 8
  %67 = getelementptr inbounds %struct.chunk, %struct.chunk* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load %struct.fore200e*, %struct.fore200e** %7, align 8
  %69 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.chunk*, %struct.chunk** %8, align 8
  %72 = getelementptr inbounds %struct.chunk, %struct.chunk* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @dma_mapping_error(i32 %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %49
  %77 = load %struct.chunk*, %struct.chunk** %8, align 8
  %78 = getelementptr inbounds %struct.chunk, %struct.chunk* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @kfree(i32* %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %84

83:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %76, %37
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @FORE200E_ALIGN(i32*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

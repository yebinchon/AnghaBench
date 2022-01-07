; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzFindMt.c_MatchFinderMt_Create.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzFindMt.c_MatchFinderMt_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32*, i32, i32, i32* }

@kMtBtBlockSize = common dso_local global i32 0, align 4
@SZ_ERROR_PARAM = common dso_local global i32 0, align 4
@kHashBufferSize = common dso_local global i32 0, align 4
@kBtBufferSize = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i32 0, align 4
@kMtHashBlockSize = common dso_local global i64 0, align 8
@HashThreadFunc2 = common dso_local global i32 0, align 4
@kMtHashNumBlocks = common dso_local global i32 0, align 4
@BtThreadFunc2 = common dso_local global i32 0, align 4
@kMtBtNumBlocks = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MatchFinderMt_Create(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %14, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @kMtBtBlockSize, align 4
  %22 = load i32, i32* %11, align 4
  %23 = mul nsw i32 %22, 4
  %24 = icmp sle i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @SZ_ERROR_PARAM, align 4
  store i32 %26, i32* %7, align 4
  br label %96

27:                                               ; preds = %6
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %59, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @kHashBufferSize, align 4
  %35 = load i32, i32* @kBtBufferSize, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i64 @ISzAlloc_Alloc(i32 %33, i32 %39)
  %41 = inttoptr i64 %40 to i32*
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %32
  %49 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %49, i32* %7, align 4
  br label %96

50:                                               ; preds = %32
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @kHashBufferSize, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store i32* %56, i32** %58, align 8
  br label %59

59:                                               ; preds = %50, %27
  %60 = load i32, i32* @kHashBufferSize, align 4
  %61 = load i32, i32* @kBtBufferSize, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load i64, i64* @kMtHashBlockSize, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %12, align 4
  %70 = load i32*, i32** %14, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @MatchFinder_Create(i32* %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %59
  %79 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %79, i32* %7, align 4
  br label %96

80:                                               ; preds = %59
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  %83 = load i32, i32* @HashThreadFunc2, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %85 = load i32, i32* @kMtHashNumBlocks, align 4
  %86 = call i32 @MtSync_Create(i32* %82, i32 %83, %struct.TYPE_4__* %84, i32 %85)
  %87 = call i32 @RINOK(i32 %86)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i32, i32* @BtThreadFunc2, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %92 = load i32, i32* @kMtBtNumBlocks, align 4
  %93 = call i32 @MtSync_Create(i32* %89, i32 %90, %struct.TYPE_4__* %91, i32 %92)
  %94 = call i32 @RINOK(i32 %93)
  %95 = load i32, i32* @SZ_OK, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %80, %78, %48, %25
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i64 @ISzAlloc_Alloc(i32, i32) #1

declare dso_local i32 @MatchFinder_Create(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @MtSync_Create(i32*, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

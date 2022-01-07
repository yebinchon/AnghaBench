; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzFindMt.c_MatchFinderMt_CreateVTable.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzFindMt.c_MatchFinderMt_CreateVTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i64, i64, i64 }

@MatchFinderMt_Init = common dso_local global i64 0, align 8
@MatchFinderMt_GetNumAvailableBytes = common dso_local global i64 0, align 8
@MatchFinderMt_GetPointerToCurrentPos = common dso_local global i64 0, align 8
@MatchFinderMt_GetMatches = common dso_local global i64 0, align 8
@GetHeads2 = common dso_local global i32 0, align 4
@MatchFinderMt0_Skip = common dso_local global i32 0, align 4
@MatchFinderMt2_GetMatches = common dso_local global i64 0, align 8
@GetHeads3 = common dso_local global i32 0, align 4
@MixMatches2 = common dso_local global i32 0, align 4
@MatchFinderMt2_Skip = common dso_local global i32 0, align 4
@GetHeads4b = common dso_local global i32 0, align 4
@GetHeads4 = common dso_local global i32 0, align 4
@MixMatches3 = common dso_local global i32 0, align 4
@MatchFinderMt3_Skip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinderMt_CreateVTable(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %5 = load i64, i64* @MatchFinderMt_Init, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i64 %5, i64* %7, align 8
  %8 = load i64, i64* @MatchFinderMt_GetNumAvailableBytes, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  store i64 %8, i64* %10, align 8
  %11 = load i64, i64* @MatchFinderMt_GetPointerToCurrentPos, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* @MatchFinderMt_GetMatches, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %52 [
    i32 2, label %23
    i32 3, label %38
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* @GetHeads2, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i8* null, i8** %28, align 8
  %29 = load i32, i32* @MatchFinderMt0_Skip, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i64, i64* @MatchFinderMt2_GetMatches, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  br label %77

38:                                               ; preds = %2
  %39 = load i32, i32* @GetHeads3, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @MixMatches2, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @MatchFinderMt2_Skip, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %77

52:                                               ; preds = %2
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @GetHeads4b, align 4
  br label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @GetHeads4, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @MixMatches3, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @MatchFinderMt3_Skip, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %63, %38, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

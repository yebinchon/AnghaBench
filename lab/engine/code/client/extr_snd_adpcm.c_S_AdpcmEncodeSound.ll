; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_adpcm.c_S_AdpcmEncodeSound.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_adpcm.c_S_AdpcmEncodeSound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i16, i64 }
%struct.TYPE_11__ = type { i16, i64 }

@SND_CHUNK_SIZE_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_AdpcmEncodeSound(%struct.TYPE_10__* %0, i16* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i16* %1, i16** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i16*, i16** %4, align 8
  %17 = getelementptr inbounds i16, i16* %16, i64 0
  %18 = load i16, i16* %17, align 2
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i16 %18, i16* %19, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  br label %20

20:                                               ; preds = %50, %2
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %80

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @SND_CHUNK_SIZE_BYTE, align 4
  %27 = mul nsw i32 %26, 2
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @SND_CHUNK_SIZE_BYTE, align 4
  %31 = mul nsw i32 %30, 2
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %23
  %33 = call %struct.TYPE_9__* (...) @SND_malloc()
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %9, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = icmp eq %struct.TYPE_9__* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %41, align 8
  br label %50

42:                                               ; preds = %32
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %48, align 8
  br label %49

49:                                               ; preds = %45, %42
  br label %50

50:                                               ; preds = %49, %38
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  store i64 %53, i64* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %58 = load i16, i16* %57, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i16 %58, i16* %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %11, align 8
  %66 = load i16*, i16** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i16, i16* %66, i64 %68
  %70 = load i32*, i32** %11, align 8
  %71 = bitcast i32* %70 to i8*
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @S_AdpcmEncode(i16* %69, i8* %71, i32 %72, %struct.TYPE_11__* %5)
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %20

80:                                               ; preds = %20
  ret void
}

declare dso_local %struct.TYPE_9__* @SND_malloc(...) #1

declare dso_local i32 @S_AdpcmEncode(i16*, i8*, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_FindChunk.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_FindChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BufferedFile = type { i32 }
%struct.PNG_ChunkHeader = type { i32, i32 }

@qfalse = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@PNG_ChunkHeader_Size = common dso_local global i32 0, align 4
@PNG_ChunkCRC_Size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.BufferedFile*, i64)* @FindChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FindChunk(%struct.BufferedFile* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.BufferedFile*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.PNG_ChunkHeader*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.BufferedFile* %0, %struct.BufferedFile** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %10 = icmp ne %struct.BufferedFile* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @qfalse, align 8
  store i64 %12, i64* %3, align 8
  br label %58

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %55, %13
  %15 = load i64, i64* @qtrue, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %14
  %18 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %19 = load i32, i32* @PNG_ChunkHeader_Size, align 4
  %20 = call %struct.PNG_ChunkHeader* @BufferedFileRead(%struct.BufferedFile* %18, i32 %19)
  store %struct.PNG_ChunkHeader* %20, %struct.PNG_ChunkHeader** %6, align 8
  %21 = load %struct.PNG_ChunkHeader*, %struct.PNG_ChunkHeader** %6, align 8
  %22 = icmp ne %struct.PNG_ChunkHeader* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* @qfalse, align 8
  store i64 %24, i64* %3, align 8
  br label %58

25:                                               ; preds = %17
  %26 = load %struct.PNG_ChunkHeader*, %struct.PNG_ChunkHeader** %6, align 8
  %27 = getelementptr inbounds %struct.PNG_ChunkHeader, %struct.PNG_ChunkHeader* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @BigLong(i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load %struct.PNG_ChunkHeader*, %struct.PNG_ChunkHeader** %6, align 8
  %31 = getelementptr inbounds %struct.PNG_ChunkHeader, %struct.PNG_ChunkHeader* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @BigLong(i32 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %25
  %38 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %39 = load i32, i32* @PNG_ChunkHeader_Size, align 4
  %40 = call i32 @BufferedFileRewind(%struct.BufferedFile* %38, i32 %39)
  br label %56

41:                                               ; preds = %25
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @PNG_ChunkCRC_Size, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @BufferedFileSkip(%struct.BufferedFile* %45, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = load i64, i64* @qfalse, align 8
  store i64 %52, i64* %3, align 8
  br label %58

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %41
  br label %55

55:                                               ; preds = %54
  br label %14

56:                                               ; preds = %37, %14
  %57 = load i64, i64* @qtrue, align 8
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %56, %51, %23, %11
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

declare dso_local %struct.PNG_ChunkHeader* @BufferedFileRead(%struct.BufferedFile*, i32) #1

declare dso_local i64 @BigLong(i32) #1

declare dso_local i32 @BufferedFileRewind(%struct.BufferedFile*, i32) #1

declare dso_local i32 @BufferedFileSkip(%struct.BufferedFile*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

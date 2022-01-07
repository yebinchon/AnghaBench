; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_dma.c_S_Base_SoundList.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_dma.c_S_Base_SoundList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"16bit\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"adpcm\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"daub4\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"mulaw\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"paged out\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"resident \00", align 1
@s_knownSfx = common dso_local global %struct.TYPE_3__* null, align 8
@s_numSfx = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"%6i[%s] : %s[%s]\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Total resident: %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_Base_SoundList() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x [16 x i8]], align 16
  %6 = alloca [2 x [16 x i8]], align 16
  %7 = getelementptr inbounds [4 x [16 x i8]], [4 x [16 x i8]]* %5, i64 0, i64 0
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %9 = call i32 @strcpy(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds [4 x [16 x i8]], [4 x [16 x i8]]* %5, i64 0, i64 1
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %12 = call i32 @strcpy(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %13 = getelementptr inbounds [4 x [16 x i8]], [4 x [16 x i8]]* %5, i64 0, i64 2
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %15 = call i32 @strcpy(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %16 = getelementptr inbounds [4 x [16 x i8]], [4 x [16 x i8]]* %5, i64 0, i64 3
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %18 = call i32 @strcpy(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %19 = getelementptr inbounds [2 x [16 x i8]], [2 x [16 x i8]]* %6, i64 0, i64 0
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %21 = call i32 @strcpy(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %22 = getelementptr inbounds [2 x [16 x i8]], [2 x [16 x i8]]* %6, i64 0, i64 1
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %24 = call i32 @strcpy(i8* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_knownSfx, align 8
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %52, %0
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @s_numSfx, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds [4 x [16 x i8]], [4 x [16 x i8]]* %5, i64 0, i64 %40
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %41, i64 0, i64 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds [2 x [16 x i8]], [2 x [16 x i8]]* %6, i64 0, i64 %48
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %49, i64 0, i64 0
  %51 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %37, i8* %42, i32 %45, i8* %50)
  br label %52

52:                                               ; preds = %30
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 1
  store %struct.TYPE_3__* %56, %struct.TYPE_3__** %2, align 8
  br label %26

57:                                               ; preds = %26
  %58 = load i32, i32* %4, align 4
  %59 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %58)
  %60 = call i32 (...) @S_DisplayFreeMemory()
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @Com_Printf(i8*, i32, ...) #1

declare dso_local i32 @S_DisplayFreeMemory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

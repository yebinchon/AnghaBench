; ModuleID = '/home/carl/AnghaBench/htop/extr_MemoryMeter.c_MemoryMeter_display.c'
source_filename = "/home/carl/AnghaBench/htop/extr_MemoryMeter.c_MemoryMeter_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@CRT_colors = common dso_local global i32* null, align 8
@METER_TEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@METER_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c" used:\00", align 1
@MEMORY_USED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c" buffers:\00", align 1
@MEMORY_BUFFERS_TEXT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c" cache:\00", align 1
@MEMORY_CACHE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @MemoryMeter_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MemoryMeter_display(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [50 x i8], align 16
  %6 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32*, i32** @CRT_colors, align 8
  %11 = load i64, i64* @METER_TEXT, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @RichString_write(i32* %9, i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @Meter_humanUnit(i8* %15, i32 %18, i32 50)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** @CRT_colors, align 8
  %22 = load i64, i64* @METER_VALUE, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %26 = call i32 @RichString_append(i32* %20, i32 %24, i8* %25)
  %27 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @Meter_humanUnit(i8* %27, i32 %32, i32 50)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** @CRT_colors, align 8
  %36 = load i64, i64* @METER_TEXT, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @RichString_append(i32* %34, i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** @CRT_colors, align 8
  %42 = load i64, i64* @MEMORY_USED, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %46 = call i32 @RichString_append(i32* %40, i32 %44, i8* %45)
  %47 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @Meter_humanUnit(i8* %47, i32 %52, i32 50)
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** @CRT_colors, align 8
  %56 = load i64, i64* @METER_TEXT, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @RichString_append(i32* %54, i32 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32*, i32** %4, align 8
  %61 = load i32*, i32** @CRT_colors, align 8
  %62 = load i64, i64* @MEMORY_BUFFERS_TEXT, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %66 = call i32 @RichString_append(i32* %60, i32 %64, i8* %65)
  %67 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @Meter_humanUnit(i8* %67, i32 %72, i32 50)
  %74 = load i32*, i32** %4, align 8
  %75 = load i32*, i32** @CRT_colors, align 8
  %76 = load i64, i64* @METER_TEXT, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @RichString_append(i32* %74, i32 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32*, i32** %4, align 8
  %81 = load i32*, i32** @CRT_colors, align 8
  %82 = load i64, i64* @MEMORY_CACHE, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %86 = call i32 @RichString_append(i32* %80, i32 %84, i8* %85)
  ret void
}

declare dso_local i32 @RichString_write(i32*, i32, i8*) #1

declare dso_local i32 @Meter_humanUnit(i8*, i32, i32) #1

declare dso_local i32 @RichString_append(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

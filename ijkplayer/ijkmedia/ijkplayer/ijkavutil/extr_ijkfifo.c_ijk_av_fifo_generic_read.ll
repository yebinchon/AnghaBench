; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavutil/extr_ijkfifo.c_ijk_av_fifo_generic_read.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavutil/extr_ijkfifo.c_ijk_av_fifo_generic_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ijk_av_fifo_generic_read(%struct.TYPE_4__* %0, i8* %1, i32 %2, void (i8*, i8*, i32)* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i8*, i8*, i32)*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store void (i8*, i8*, i32)* %3, void (i8*, i8*, i32)** %8, align 8
  br label %10

10:                                               ; preds = %52, %4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = ptrtoint i8* %13 to i64
  %18 = ptrtoint i8* %16 to i64
  %19 = sub i64 %17, %18
  %20 = inttoptr i64 %19 to i8*
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @FFMIN(i8* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %8, align 8
  %24 = icmp ne void (i8*, i8*, i32)* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %10
  %26 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %8, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %9, align 4
  call void %26(i8* %27, i8* %30, i32 %31)
  br label %45

32:                                               ; preds = %10
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @memcpy(i8* %33, i8* %36, i32 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = bitcast i32* %43 to i8*
  store i8* %44, i8** %6, align 8
  br label %45

45:                                               ; preds = %32, %25
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @ijk_av_fifo_drain(%struct.TYPE_4__* %46, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %10, label %55

55:                                               ; preds = %52
  ret i32 0
}

declare dso_local i32 @FFMIN(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ijk_av_fifo_drain(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_packet_queue_get_or_buffering.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_packet_queue_get_or_buffering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i32*, i32*)* @packet_queue_get_or_buffering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_queue_get_or_buffering(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %11, align 8
  %14 = call i32 @assert(i32* %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @packet_queue_get(%struct.TYPE_7__* %20, i32* %21, i32 1, i32* %22)
  store i32 %23, i32* %6, align 4
  br label %69

24:                                               ; preds = %5
  br label %25

25:                                               ; preds = %24, %64
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @packet_queue_get(%struct.TYPE_7__* %26, i32* %27, i32 0, i32* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 -1, i32* %6, align 4
  br label %69

33:                                               ; preds = %25
  %34 = load i32, i32* %12, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %33
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = call i32 @ffp_toggle_buffering(%struct.TYPE_8__* %46, i32 1)
  br label %48

48:                                               ; preds = %45, %41, %36
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @packet_queue_get(%struct.TYPE_7__* %49, i32* %50, i32 1, i32* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 -1, i32* %6, align 4
  br label %69

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %33
  br label %58

58:                                               ; preds = %57
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @av_packet_unref(i32* %65)
  br label %25

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67
  store i32 1, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %55, %32, %19
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @packet_queue_get(%struct.TYPE_7__*, i32*, i32, i32*) #1

declare dso_local i32 @ffp_toggle_buffering(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @av_packet_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

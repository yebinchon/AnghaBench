; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_ffp_get_opt_dict.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_ffp_get_opt_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32*, i32*, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unknown option category %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32** (%struct.TYPE_5__*, i32)* @ffp_get_opt_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32** @ffp_get_opt_dict(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = call i32 @assert(%struct.TYPE_5__* %6)
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %24 [
    i32 131, label %9
    i32 132, label %12
    i32 128, label %15
    i32 130, label %18
    i32 129, label %21
  ]

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store i32** %11, i32*** %3, align 8
  br label %29

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  store i32** %14, i32*** %3, align 8
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i32** %17, i32*** %3, align 8
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32** %20, i32*** %3, align 8
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32** %23, i32*** %3, align 8
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = load i32, i32* @AV_LOG_ERROR, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @av_log(%struct.TYPE_5__* %25, i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32** null, i32*** %3, align 8
  br label %29

29:                                               ; preds = %24, %21, %18, %15, %12, %9
  %30 = load i32**, i32*** %3, align 8
  ret i32** %30
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

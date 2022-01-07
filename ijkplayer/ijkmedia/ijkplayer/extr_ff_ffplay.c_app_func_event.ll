; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_app_func_event.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_app_func_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@AVAPP_EVENT_IO_TRAFFIC = common dso_local global i32 0, align 4
@AVAPP_EVENT_ASYNC_STATISTIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i8*, i64)* @app_func_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @app_func_event(%struct.TYPE_9__* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %15, %4
  store i32 0, i32* %5, align 4
  br label %106

24:                                               ; preds = %20
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %10, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %106

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @AVAPP_EVENT_IO_TRAFFIC, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %34
  %39 = load i64, i64* %9, align 8
  %40 = icmp eq i64 8, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %38
  %42 = load i8*, i8** %8, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = inttoptr i64 %43 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %11, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %41
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %52
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @SDL_SpeedSampler2Add(i32* %62, i64 %65)
  br label %67

67:                                               ; preds = %49, %41
  br label %98

68:                                               ; preds = %38, %34
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @AVAPP_EVENT_ASYNC_STATISTIC, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %68
  %73 = load i64, i64* %9, align 8
  %74 = icmp eq i64 12, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %72
  %76 = load i8*, i8** %8, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = inttoptr i64 %77 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %12, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  br label %97

97:                                               ; preds = %75, %72, %68
  br label %98

98:                                               ; preds = %97, %67
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i8*, i8** %8, align 8
  %104 = load i64, i64* %9, align 8
  %105 = call i32 @inject_callback(i32 %101, i32 %102, i8* %103, i64 %104)
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %98, %33, %23
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @SDL_SpeedSampler2Add(i32*, i64) #1

declare dso_local i32 @inject_callback(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

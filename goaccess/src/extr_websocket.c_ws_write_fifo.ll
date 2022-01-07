; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_write_fifo.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32* }

@WS_SENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ws_write_fifo(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = call i32 @ws_openfifo_out(%struct.TYPE_7__* %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %64

19:                                               ; preds = %13, %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ws_write_fifo_data(%struct.TYPE_7__* %25, i8* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  br label %50

29:                                               ; preds = %19
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @ws_realloc_fifobuf(%struct.TYPE_7__* %38, i8* %39, i32 %40)
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %64

45:                                               ; preds = %37
  br label %49

46:                                               ; preds = %34, %29
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = call i32 @ws_write_fifo_cache(%struct.TYPE_7__* %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %45
  br label %50

50:                                               ; preds = %49, %24
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32, i32* @WS_SENDING, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %55, %50
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %43, %17
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @ws_openfifo_out(%struct.TYPE_7__*) #1

declare dso_local i32 @ws_write_fifo_data(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @ws_realloc_fifobuf(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @ws_write_fifo_cache(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

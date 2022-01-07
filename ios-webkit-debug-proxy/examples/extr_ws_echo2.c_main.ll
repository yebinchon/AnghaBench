; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/examples/extr_ws_echo2.c_main.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/examples/extr_ws_echo2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*, i32, i32*, %struct.TYPE_11__*, i32)*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@SIGINT = common dso_local global i32 0, align 4
@on_signal = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@on_accept = common dso_local global i32 0, align 4
@on_recv = common dso_local global i32 0, align 4
@on_close = common dso_local global i32 0, align 4
@quit_flag = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @SIGINT, align 4
  %12 = load i32, i32* @on_signal, align 4
  %13 = call i32 @signal(i32 %11, i32 %12)
  %14 = load i32, i32* @SIGTERM, align 4
  %15 = load i32, i32* @on_signal, align 4
  %16 = call i32 @signal(i32 %14, i32 %15)
  store i32 8080, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @sm_listen(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %70

22:                                               ; preds = %2
  %23 = call %struct.TYPE_10__* @sm_new(i32 4096)
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %8, align 8
  %24 = load i32, i32* @on_accept, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @on_recv, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @on_close, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = call i32 @malloc(i32 4)
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %9, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i32 (%struct.TYPE_10__*, i32, i32*, %struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_10__*, i32, i32*, %struct.TYPE_11__*, i32)** %40, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %45 = call i32 %41(%struct.TYPE_10__* %42, i32 %43, i32* null, %struct.TYPE_11__* %44, i32 1)
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %58, %22
  %47 = load i32, i32* @quit_flag, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64 (%struct.TYPE_10__*, i32)*, i64 (%struct.TYPE_10__*, i32)** %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = call i64 %53(%struct.TYPE_10__* %54, i32 2)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 -1, i32* %10, align 4
  br label %59

58:                                               ; preds = %50
  br label %46

59:                                               ; preds = %57, %46
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %64 = call i32 %62(%struct.TYPE_10__* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %66 = call i32 @free(%struct.TYPE_11__* %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = call i32 @sm_free(%struct.TYPE_10__* %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %59, %21
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @sm_listen(i32) #1

declare dso_local %struct.TYPE_10__* @sm_new(i32) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i32 @sm_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

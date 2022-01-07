; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_iws_new.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_iws_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_10__*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@TYPE_IWS = common dso_local global i32 0, align 4
@iwdp_send_data = common dso_local global i32 0, align 4
@iwdp_on_http_request = common dso_local global i32 0, align 4
@iwdp_on_upgrade = common dso_local global i32 0, align 4
@iwdp_on_frame = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @iwdp_iws_new(i32* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = call i32 @malloc(i32 4)
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = icmp ne %struct.TYPE_10__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %58

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = call i32 @memset(%struct.TYPE_10__* %13, i32 0, i32 4)
  %15 = load i32, i32* @TYPE_IWS, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = call %struct.TYPE_9__* (...) @ws_new()
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %21, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %48

26:                                               ; preds = %12
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %5, align 8
  %30 = load i32, i32* @iwdp_send_data, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @iwdp_on_http_request, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @iwdp_on_upgrade, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @iwdp_on_frame, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %44, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i32* %45, i32** %47, align 8
  br label %48

48:                                               ; preds = %26, %12
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = icmp ne %struct.TYPE_9__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = call i32 @iwdp_iws_free(%struct.TYPE_10__* %54)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %58

56:                                               ; preds = %48
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %2, align 8
  br label %58

58:                                               ; preds = %56, %53, %11
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %59
}

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @ws_new(...) #1

declare dso_local i32 @iwdp_iws_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

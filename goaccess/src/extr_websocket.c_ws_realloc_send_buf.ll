; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_realloc_send_buf.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_realloc_send_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8* }

@WS_ERR = common dso_local global i32 0, align 4
@WS_CLOSE = common dso_local global i32 0, align 4
@WS_THROTTLE_THLD = common dso_local global i32 0, align 4
@WS_THROTTLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32)* @ws_realloc_send_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws_realloc_send_buf(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i8* @realloc(i8* %21, i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = call i32 @ws_clear_queue(%struct.TYPE_7__* %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = load i32, i32* @WS_ERR, align 4
  %34 = load i32, i32* @WS_CLOSE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @ws_set_status(%struct.TYPE_7__* %32, i32 %35, i32 1)
  store i32 %36, i32* %4, align 4
  br label %69

37:                                               ; preds = %26, %3
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @memcpy(i8* %48, i8* %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @WS_THROTTLE_THLD, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %37
  %63 = load i32, i32* @WS_THROTTLING, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %62, %37
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %29
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @ws_clear_queue(%struct.TYPE_7__*) #1

declare dso_local i32 @ws_set_status(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

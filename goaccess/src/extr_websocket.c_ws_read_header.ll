; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_read_header.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i32 }

@WS_CLOSE = common dso_local global i32 0, align 4
@WS_CLOSE_UNEXPECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unable to read header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32)* @ws_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws_read_header(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @read_socket(%struct.TYPE_8__* %15, i8* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %36

23:                                               ; preds = %4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @WS_CLOSE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = load i32, i32* @WS_CLOSE_UNEXPECTED, align 4
  %33 = call i32 @ws_error(%struct.TYPE_8__* %31, i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %51

36:                                               ; preds = %4
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  store i8 0, i8* %49, align 1
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %36, %34
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @read_socket(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @ws_error(%struct.TYPE_8__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

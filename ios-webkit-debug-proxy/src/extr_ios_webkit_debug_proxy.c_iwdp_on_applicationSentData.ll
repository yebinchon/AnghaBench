; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_on_applicationSentData.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_on_applicationSentData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, i32, i32, i32, i8*, i64)* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }

@RPC_SUCCESS = common dso_local global i32 0, align 4
@OPCODE_TEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwdp_on_applicationSentData(%struct.TYPE_10__* %0, i8* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_12__*
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %12, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = call %struct.TYPE_11__* @ht_get_value(i32 %23, i8* %24)
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %13, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %27 = icmp ne %struct.TYPE_11__* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %29, i32* %6, align 4
  br label %42

30:                                               ; preds = %5
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %14, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_9__*, i32, i32, i32, i8*, i64)*, i32 (%struct.TYPE_9__*, i32, i32, i32, i8*, i64)** %35, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %38 = load i32, i32* @OPCODE_TEXT, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i32 %36(%struct.TYPE_9__* %37, i32 1, i32 %38, i32 0, i8* %39, i64 %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %30, %28
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_11__* @ht_get_value(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

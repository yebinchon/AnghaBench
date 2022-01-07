; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_idl_new.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_idl_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@TYPE_IDL = common dso_local global i32 0, align 4
@iwdp_send_to_dl = common dso_local global i32 0, align 4
@iwdp_on_attach = common dso_local global i32 0, align 4
@iwdp_on_detach = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @iwdp_idl_new() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = call i32 @malloc(i32 4)
  %5 = sext i32 %4 to i64
  %6 = inttoptr i64 %5 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %2, align 8
  %7 = call %struct.TYPE_10__* (...) @dl_new()
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = call i32 @free(%struct.TYPE_9__* %14)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %1, align 8
  br label %39

16:                                               ; preds = %10
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = call i32 @memset(%struct.TYPE_9__* %17, i32 0, i32 4)
  %19 = load i32, i32* @TYPE_IDL, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %25, align 8
  %26 = load i32, i32* @iwdp_send_to_dl, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @iwdp_on_attach, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @iwdp_on_detach, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %1, align 8
  br label %39

39:                                               ; preds = %16, %13
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  ret %struct.TYPE_9__* %40
}

declare dso_local i32 @malloc(i32) #1

declare dso_local %struct.TYPE_10__* @dl_new(...) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_device_listener.c_dl_new.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_device_listener.c_dl_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32 }

@HT_INT_KEYS = common dso_local global i32 0, align 4
@dl_start = common dso_local global i32 0, align 4
@dl_on_recv = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @dl_new() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = call i32 @malloc(i32 4)
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %2, align 8
  %9 = call i32 @malloc(i32 4)
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %3, align 8
  %12 = call %struct.TYPE_8__* (...) @cb_new()
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %4, align 8
  %13 = load i32, i32* @HT_INT_KEYS, align 4
  %14 = call i64 @ht_new(i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23, %20, %17, %0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = call i32 @free(%struct.TYPE_8__* %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = call i32 @free(%struct.TYPE_8__* %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = call i32 @free(%struct.TYPE_8__* %31)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %1, align 8
  br label %54

33:                                               ; preds = %23
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = call i32 @memset(%struct.TYPE_8__* %34, i32 0, i32 4)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = call i32 @memset(%struct.TYPE_8__* %36, i32 0, i32 4)
  %38 = load i32, i32* @dl_start, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @dl_on_recv, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %49, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %1, align 8
  br label %54

54:                                               ; preds = %33, %26
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  ret %struct.TYPE_8__* %55
}

declare dso_local i32 @malloc(i32) #1

declare dso_local %struct.TYPE_8__* @cb_new(...) #1

declare dso_local i64 @ht_new(i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

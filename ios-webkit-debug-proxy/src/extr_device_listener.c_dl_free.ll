; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_device_listener.c_dl_free.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_device_listener.c_dl_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_6__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dl_free(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = icmp ne %struct.TYPE_6__* %4, null
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cb_free(i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ht_free(i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = call i32 @memset(%struct.TYPE_6__* %21, i32 0, i32 4)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = call i32 @free(%struct.TYPE_6__* %23)
  br label %25

25:                                               ; preds = %12, %6
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = call i32 @memset(%struct.TYPE_6__* %26, i32 0, i32 4)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = call i32 @free(%struct.TYPE_6__* %28)
  br label %30

30:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @cb_free(i32) #1

declare dso_local i32 @ht_free(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/htop/extr_Meter.c_Meter_new.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Meter.c_Meter_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i8*, %struct.ProcessList_* }
%struct.ProcessList_ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @Meter_new(%struct.ProcessList_* %0, i32 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.ProcessList_*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.ProcessList_* %0, %struct.ProcessList_** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %8 = call i8* @xCalloc(i32 1, i32 32)
  %9 = bitcast i8* %8 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %7, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %12 = call i32 @Object_setClass(%struct.TYPE_11__* %10, %struct.TYPE_10__* %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ProcessList_*, %struct.ProcessList_** %4, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 5
  store %struct.ProcessList_* %18, %struct.ProcessList_** %20, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @xCalloc(i32 %28, i32 8)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @xStrdup(i32 %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = call i64 @Meter_initFn(%struct.TYPE_11__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %3
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = call i32 @Meter_init(%struct.TYPE_11__* %47)
  br label %49

49:                                               ; preds = %46, %3
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @Meter_setMode(%struct.TYPE_11__* %50, i32 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  ret %struct.TYPE_11__* %55
}

declare dso_local i8* @xCalloc(i32, i32) #1

declare dso_local i32 @Object_setClass(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @xStrdup(i32) #1

declare dso_local i64 @Meter_initFn(%struct.TYPE_11__*) #1

declare dso_local i32 @Meter_init(%struct.TYPE_11__*) #1

declare dso_local i32 @Meter_setMode(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

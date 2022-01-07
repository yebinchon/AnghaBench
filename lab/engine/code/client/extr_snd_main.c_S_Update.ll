; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_main.c_S_Update.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_main.c_S_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_7__ = type { i32 (...)* }

@s_muted = common dso_local global %struct.TYPE_8__* null, align 8
@s_muteWhenMinimized = common dso_local global %struct.TYPE_10__* null, align 8
@com_minimized = common dso_local global %struct.TYPE_12__* null, align 8
@s_muteWhenUnfocused = common dso_local global %struct.TYPE_9__* null, align 8
@com_unfocused = common dso_local global %struct.TYPE_11__* null, align 8
@qfalse = common dso_local global i8* null, align 8
@qtrue = common dso_local global i8* null, align 8
@si = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_Update() #0 {
  %1 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_muted, align 8
  %2 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %3 = load i8*, i8** %2, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %33

5:                                                ; preds = %0
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** @s_muteWhenMinimized, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** @com_minimized, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %10, %5
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** @s_muteWhenUnfocused, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** @com_unfocused, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20, %15
  %26 = load i8*, i8** @qfalse, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_muted, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @qtrue, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_muted, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %25, %20, %10
  br label %61

33:                                               ; preds = %0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** @s_muteWhenMinimized, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** @com_minimized, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @s_muteWhenUnfocused, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** @com_unfocused, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48, %38
  %54 = load i8*, i8** @qtrue, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_muted, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @qtrue, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_muted, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %53, %48, %43
  br label %61

61:                                               ; preds = %60, %32
  %62 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @si, i32 0, i32 0), align 8
  %63 = icmp ne i32 (...)* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @si, i32 0, i32 0), align 8
  %66 = call i32 (...) %65()
  br label %67

67:                                               ; preds = %64, %61
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

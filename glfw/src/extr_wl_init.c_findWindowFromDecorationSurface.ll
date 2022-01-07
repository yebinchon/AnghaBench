; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_init.c_findWindowFromDecorationSurface.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_init.c_findWindowFromDecorationSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_16__*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.wl_surface* }
%struct.wl_surface = type { i32 }
%struct.TYPE_12__ = type { %struct.wl_surface* }
%struct.TYPE_11__ = type { %struct.wl_surface* }
%struct.TYPE_10__ = type { %struct.wl_surface* }

@_glfw = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@topDecoration = common dso_local global i32 0, align 4
@leftDecoration = common dso_local global i32 0, align 4
@rightDecoration = common dso_local global i32 0, align 4
@bottomDecoration = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.wl_surface*, i32*)* @findWindowFromDecorationSurface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @findWindowFromDecorationSurface(%struct.wl_surface* %0, i32* %1) #0 {
  %3 = alloca %struct.wl_surface*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.wl_surface* %0, %struct.wl_surface** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @_glfw, i32 0, i32 0), align 8
  store %struct.TYPE_16__* %7, %struct.TYPE_16__** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32* %5, i32** %4, align 8
  br label %11

11:                                               ; preds = %10, %2
  br label %12

12:                                               ; preds = %63, %11
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = icmp ne %struct.TYPE_16__* %13, null
  br i1 %14, label %15, label %67

15:                                               ; preds = %12
  %16 = load %struct.wl_surface*, %struct.wl_surface** %3, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.wl_surface*, %struct.wl_surface** %21, align 8
  %23 = icmp eq %struct.wl_surface* %16, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, i32* @topDecoration, align 4
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  br label %67

27:                                               ; preds = %15
  %28 = load %struct.wl_surface*, %struct.wl_surface** %3, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.wl_surface*, %struct.wl_surface** %33, align 8
  %35 = icmp eq %struct.wl_surface* %28, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @leftDecoration, align 4
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  br label %67

39:                                               ; preds = %27
  %40 = load %struct.wl_surface*, %struct.wl_surface** %3, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load %struct.wl_surface*, %struct.wl_surface** %45, align 8
  %47 = icmp eq %struct.wl_surface* %40, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @rightDecoration, align 4
  %50 = load i32*, i32** %4, align 8
  store i32 %49, i32* %50, align 4
  br label %67

51:                                               ; preds = %39
  %52 = load %struct.wl_surface*, %struct.wl_surface** %3, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load %struct.wl_surface*, %struct.wl_surface** %57, align 8
  %59 = icmp eq %struct.wl_surface* %52, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @bottomDecoration, align 4
  %62 = load i32*, i32** %4, align 8
  store i32 %61, i32* %62, align 4
  br label %67

63:                                               ; preds = %51
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  store %struct.TYPE_16__* %66, %struct.TYPE_16__** %6, align 8
  br label %12

67:                                               ; preds = %60, %48, %36, %24, %12
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  ret %struct.TYPE_16__* %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

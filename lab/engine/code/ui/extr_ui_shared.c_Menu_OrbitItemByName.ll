; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Menu_OrbitItemByName.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Menu_OrbitItemByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { float, float }
%struct.TYPE_7__ = type { float, float }

@WINDOW_ORBITING = common dso_local global i32 0, align 4
@WINDOW_VISIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Menu_OrbitItemByName(i32* %0, i8* %1, float %2, float %3, float %4, float %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @Menu_ItemsMatchingGroup(i32* %18, i8* %19)
  store i32 %20, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %21

21:                                               ; preds = %68, %7
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* %17, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %71

25:                                               ; preds = %21
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %16, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = call %struct.TYPE_10__* @Menu_GetMatchingItemByNumber(i32* %26, i32 %27, i8* %28)
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %15, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %67

32:                                               ; preds = %25
  %33 = load i32, i32* @WINDOW_ORBITING, align 4
  %34 = load i32, i32* @WINDOW_VISIBLE, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load float, float* %12, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store float %45, float* %49, align 4
  %50 = load float, float* %13, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store float %50, float* %54, align 4
  %55 = load float, float* %10, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store float %55, float* %59, align 4
  %60 = load float, float* %11, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store float %60, float* %64, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %66 = call i32 @Item_UpdatePosition(%struct.TYPE_10__* %65)
  br label %67

67:                                               ; preds = %32, %25
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %16, align 4
  br label %21

71:                                               ; preds = %21
  ret void
}

declare dso_local i32 @Menu_ItemsMatchingGroup(i32*, i8*) #1

declare dso_local %struct.TYPE_10__* @Menu_GetMatchingItemByNumber(i32*, i32, i8*) #1

declare dso_local i32 @Item_UpdatePosition(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

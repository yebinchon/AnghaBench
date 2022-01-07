; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_video.c_GraphicsOptions_Event.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_video.c_GraphicsOptions_Event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@ratioToRes = common dso_local global i32* null, align 8
@s_graphicsoptions = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@resToRatio = common dso_local global i8** null, align 8
@s_ivo_templates = common dso_local global %struct.TYPE_19__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @GraphicsOptions_Event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GraphicsOptions_Event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @QM_ACTIVATED, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %90

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_18__*
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %90 [
    i32 129, label %15
    i32 131, label %20
    i32 132, label %40
    i32 134, label %76
    i32 136, label %78
    i32 133, label %80
    i32 135, label %81
    i32 128, label %84
    i32 130, label %87
  ]

15:                                               ; preds = %10
  %16 = load i32*, i32** @ratioToRes, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 8, i32 0), align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  br label %20

20:                                               ; preds = %10, %15
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 10, i32 0), align 8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  br label %32

27:                                               ; preds = %23
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  %29 = icmp sgt i32 %28, 6
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 6, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  br label %31

31:                                               ; preds = %30, %27
  br label %32

32:                                               ; preds = %31, %26
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i8**, i8*** @resToRatio, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = ptrtoint i8* %38 to i64
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 8, i32 0), align 8
  br label %90

40:                                               ; preds = %10
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** @s_ivo_templates, align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 9, i32 0), align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i64 %42
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %5, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @GraphicsOptions_FindDetectedResolution(i32 %46)
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  %49 = load i8**, i8*** @resToRatio, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 8, i32 0), align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 6, i32 0), align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 4, i32 0), align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 3, i32 0), align 4
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 2, i32 0), align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 1, i32 0), align 4
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @s_graphicsoptions, i32 0, i32 0, i32 0), align 8
  br label %90

76:                                               ; preds = %10
  %77 = call i32 (...) @UI_DriverInfo_Menu()
  br label %90

78:                                               ; preds = %10
  %79 = call i32 (...) @UI_PopMenu()
  br label %90

80:                                               ; preds = %10
  br label %90

81:                                               ; preds = %10
  %82 = call i32 (...) @UI_PopMenu()
  %83 = call i32 (...) @UI_DisplayOptionsMenu()
  br label %90

84:                                               ; preds = %10
  %85 = call i32 (...) @UI_PopMenu()
  %86 = call i32 (...) @UI_SoundOptionsMenu()
  br label %90

87:                                               ; preds = %10
  %88 = call i32 (...) @UI_PopMenu()
  %89 = call i32 (...) @UI_NetworkOptionsMenu()
  br label %90

90:                                               ; preds = %9, %10, %87, %84, %81, %80, %78, %76, %40, %33
  ret void
}

declare dso_local i64 @GraphicsOptions_FindDetectedResolution(i32) #1

declare dso_local i32 @UI_DriverInfo_Menu(...) #1

declare dso_local i32 @UI_PopMenu(...) #1

declare dso_local i32 @UI_DisplayOptionsMenu(...) #1

declare dso_local i32 @UI_SoundOptionsMenu(...) #1

declare dso_local i32 @UI_NetworkOptionsMenu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

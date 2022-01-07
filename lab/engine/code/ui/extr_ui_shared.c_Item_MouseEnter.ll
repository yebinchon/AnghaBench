; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_MouseEnter.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_MouseEnter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_9__, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }

@CVAR_ENABLE = common dso_local global i32 0, align 4
@CVAR_DISABLE = common dso_local global i32 0, align 4
@CVAR_SHOW = common dso_local global i32 0, align 4
@CVAR_HIDE = common dso_local global i32 0, align 4
@WINDOW_MOUSEOVERTEXT = common dso_local global i32 0, align 4
@WINDOW_MOUSEOVER = common dso_local global i32 0, align 4
@ITEM_TYPE_LISTBOX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Item_MouseEnter(%struct.TYPE_11__* %0, float %1, float %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = icmp ne %struct.TYPE_11__* %8, null
  br i1 %9, label %10, label %151

10:                                               ; preds = %3
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 6
  %13 = bitcast %struct.TYPE_10__* %7 to i8*
  %14 = bitcast %struct.TYPE_10__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 %19, %16
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CVAR_ENABLE, align 4
  %26 = load i32, i32* @CVAR_DISABLE, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %10
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = load i32, i32* @CVAR_ENABLE, align 4
  %33 = call i32 @Item_EnableShowViaCvar(%struct.TYPE_11__* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %151

36:                                               ; preds = %30, %10
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CVAR_SHOW, align 4
  %41 = load i32, i32* @CVAR_HIDE, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = load i32, i32* @CVAR_SHOW, align 4
  %48 = call i32 @Item_EnableShowViaCvar(%struct.TYPE_11__* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %151

51:                                               ; preds = %45, %36
  %52 = load float, float* %5, align 4
  %53 = load float, float* %6, align 4
  %54 = call i64 @Rect_ContainsPoint(%struct.TYPE_10__* %7, float %52, float %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %97

56:                                               ; preds = %51
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @WINDOW_MOUSEOVERTEXT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %56
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @Item_RunScript(%struct.TYPE_11__* %65, i32 %68)
  %70 = load i32, i32* @WINDOW_MOUSEOVERTEXT, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %64, %56
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @WINDOW_MOUSEOVER, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %76
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @Item_RunScript(%struct.TYPE_11__* %85, i32 %88)
  %90 = load i32, i32* @WINDOW_MOUSEOVER, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %84, %76
  br label %150

97:                                               ; preds = %51
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @WINDOW_MOUSEOVERTEXT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %97
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @Item_RunScript(%struct.TYPE_11__* %106, i32 %109)
  %111 = load i32, i32* @WINDOW_MOUSEOVERTEXT, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, %112
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %105, %97
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @WINDOW_MOUSEOVER, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %118
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @Item_RunScript(%struct.TYPE_11__* %127, i32 %130)
  %132 = load i32, i32* @WINDOW_MOUSEOVER, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %132
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %126, %118
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @ITEM_TYPE_LISTBOX, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %146 = load float, float* %5, align 4
  %147 = load float, float* %6, align 4
  %148 = call i32 @Item_ListBox_MouseEnter(%struct.TYPE_11__* %145, float %146, float %147)
  br label %149

149:                                              ; preds = %144, %138
  br label %150

150:                                              ; preds = %149, %96
  br label %151

151:                                              ; preds = %35, %50, %150, %3
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Item_EnableShowViaCvar(%struct.TYPE_11__*, i32) #2

declare dso_local i64 @Rect_ContainsPoint(%struct.TYPE_10__*, float, float) #2

declare dso_local i32 @Item_RunScript(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @Item_ListBox_MouseEnter(%struct.TYPE_11__*, float, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

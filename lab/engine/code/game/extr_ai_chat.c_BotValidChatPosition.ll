; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotValidChatPosition.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotValidChatPosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i64* }
%struct.TYPE_6__ = type { i64 }

@qtrue = common dso_local global i32 0, align 4
@INVENTORY_QUAD = common dso_local global i64 0, align 8
@INVENTORY_ENVIRONMENTSUIT = common dso_local global i64 0, align 8
@INVENTORY_HASTE = common dso_local global i64 0, align 8
@INVENTORY_INVISIBILITY = common dso_local global i64 0, align 8
@INVENTORY_REGEN = common dso_local global i64 0, align 8
@INVENTORY_FLIGHT = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@MASK_WATER = common dso_local global i32 0, align 4
@PRESENCE_CROUCH = common dso_local global i32 0, align 4
@MASK_SOLID = common dso_local global i32 0, align 4
@ENTITYNUM_WORLD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotValidChatPosition(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = call i64 @BotIsDead(%struct.TYPE_7__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @qtrue, align 4
  store i32 %14, i32* %2, align 4
  br label %147

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @INVENTORY_QUAD, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %63, label %23

23:                                               ; preds = %15
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @INVENTORY_ENVIRONMENTSUIT, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %23
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* @INVENTORY_HASTE, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %31
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @INVENTORY_INVISIBILITY, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %39
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @INVENTORY_REGEN, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %47
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @INVENTORY_FLIGHT, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55, %47, %39, %31, %23, %15
  %64 = load i32, i32* @qfalse, align 4
  store i32 %64, i32* %2, align 4
  br label %147

65:                                               ; preds = %55
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @VectorCopy(i32 %68, i32* %69)
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 24
  store i32 %74, i32* %72, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @trap_PointContents(i32* %75, i32 %78)
  %80 = load i32, i32* @CONTENTS_LAVA, align 4
  %81 = load i32, i32* @CONTENTS_SLIME, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %65
  %86 = load i32, i32* @qfalse, align 4
  store i32 %86, i32* %2, align 4
  br label %147

87:                                               ; preds = %65
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @VectorCopy(i32 %90, i32* %91)
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 32
  store i32 %96, i32* %94, align 4
  %97 = load i32*, i32** %4, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @trap_PointContents(i32* %97, i32 %100)
  %102 = load i32, i32* @MASK_WATER, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %87
  %106 = load i32, i32* @qfalse, align 4
  store i32 %106, i32* %2, align 4
  br label %147

107:                                              ; preds = %87
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @VectorCopy(i32 %110, i32* %111)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @VectorCopy(i32 %115, i32* %116)
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 10
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* @PRESENCE_CROUCH, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 @trap_AAS_PresenceTypeBoundingBox(i32 %126, i32* %127, i32* %128)
  %130 = load i32*, i32** %5, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @MASK_SOLID, align 4
  %138 = call i32 @BotAI_Trace(%struct.TYPE_6__* %9, i32* %130, i32* %131, i32* %132, i32* %133, i32 %136, i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @ENTITYNUM_WORLD, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %107
  %144 = load i32, i32* @qfalse, align 4
  store i32 %144, i32* %2, align 4
  br label %147

145:                                              ; preds = %107
  %146 = load i32, i32* @qtrue, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %145, %143, %105, %85, %63, %13
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i64 @BotIsDead(%struct.TYPE_7__*) #1

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local i32 @trap_PointContents(i32*, i32) #1

declare dso_local i32 @trap_AAS_PresenceTypeBoundingBox(i32, i32*, i32*) #1

declare dso_local i32 @BotAI_Trace(%struct.TYPE_6__*, i32*, i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

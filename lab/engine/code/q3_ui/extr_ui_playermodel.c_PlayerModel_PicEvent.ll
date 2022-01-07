; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_playermodel.c_PlayerModel_PicEvent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_playermodel.c_PlayerModel_PicEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i8**, i32, %struct.TYPE_14__, %struct.TYPE_13__, i32, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@PLAYERGRID_ROWS = common dso_local global i32 0, align 4
@PLAYERGRID_COLS = common dso_local global i32 0, align 4
@QMF_HIGHLIGHT = common dso_local global i32 0, align 4
@s_playermodel = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@QMF_PULSEIFFOCUS = common dso_local global i32 0, align 4
@ID_PLAYERPIC0 = common dso_local global i32 0, align 4
@MAX_MODELSPERPAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"models/players/\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"icon_\00", align 1
@LOW_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @PlayerModel_PicEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PlayerModel_PicEvent(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @QM_ACTIVATED, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %140

14:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %41, %14
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @PLAYERGRID_ROWS, align 4
  %18 = load i32, i32* @PLAYERGRID_COLS, align 4
  %19 = mul nsw i32 %17, %18
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %15
  %22 = load i32, i32* @QMF_HIGHLIGHT, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_playermodel, i32 0, i32 7), align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %23
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @QMF_PULSEIFFOCUS, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_playermodel, i32 0, i32 6), align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %32
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %21
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %15

44:                                               ; preds = %15
  %45 = load i8*, i8** %3, align 8
  %46 = bitcast i8* %45 to %struct.TYPE_15__*
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ID_PLAYERPIC0, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @QMF_HIGHLIGHT, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_playermodel, i32 0, i32 7), align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %51
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @QMF_PULSEIFFOCUS, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_playermodel, i32 0, i32 6), align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %61
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_playermodel, i32 0, i32 0), align 8
  %71 = load i32, i32* @MAX_MODELSPERPAGE, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %5, align 4
  %75 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_playermodel, i32 0, i32 1), align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strlen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8* %82, i8** %7, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = call i8* @strstr(i8* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %84, i8** %8, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %140

87:                                               ; preds = %44
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_playermodel, i32 0, i32 5), align 4
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = add nsw i64 %94, 1
  %96 = trunc i64 %95 to i32
  %97 = call i32 @Q_strncpyz(i32 %88, i8* %89, i32 %96)
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_playermodel, i32 0, i32 5), align 4
  %99 = load i8*, i8** %8, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 5
  %101 = call i32 @strcat(i32 %98, i8* %100)
  %102 = load i8*, i8** %8, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp sgt i32 %108, 16
  br i1 %109, label %110, label %111

110:                                              ; preds = %87
  store i32 16, i32* %6, align 4
  br label %111

111:                                              ; preds = %110, %87
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_playermodel, i32 0, i32 4, i32 0), align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @Q_strncpyz(i32 %112, i8* %113, i32 %114)
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_playermodel, i32 0, i32 4, i32 0), align 8
  %117 = call i32 @Q_strupr(i32 %116)
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 5
  %120 = call i32 @strlen(i8* %119)
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp sgt i32 %122, 16
  br i1 %123, label %124, label %125

124:                                              ; preds = %111
  store i32 16, i32* %6, align 4
  br label %125

125:                                              ; preds = %124, %111
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_playermodel, i32 0, i32 3, i32 0), align 4
  %127 = load i8*, i8** %8, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 5
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @Q_strncpyz(i32 %126, i8* %128, i32 %129)
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_playermodel, i32 0, i32 3, i32 0), align 4
  %132 = call i32 @Q_strupr(i32 %131)
  %133 = load i32, i32* %5, align 4
  store i32 %133, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @s_playermodel, i32 0, i32 2), align 8
  %134 = call i64 (...) @trap_MemoryRemaining()
  %135 = load i64, i64* @LOW_MEMORY, align 8
  %136 = icmp sgt i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %125
  %138 = call i32 (...) @PlayerModel_UpdateModel()
  br label %139

139:                                              ; preds = %137, %125
  br label %140

140:                                              ; preds = %13, %139, %44
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #1

declare dso_local i32 @strcat(i32, i8*) #1

declare dso_local i32 @Q_strupr(i32) #1

declare dso_local i64 @trap_MemoryRemaining(...) #1

declare dso_local i32 @PlayerModel_UpdateModel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

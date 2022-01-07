; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_hl.c_HL_BSPBrushToMapBrush.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_hl.c_HL_BSPBrushToMapBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_15__*, i64, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32 }

@nummapbrushes = common dso_local global i64 0, align 8
@MAX_MAPFILE_BRUSHES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"nummapbrushes == MAX_MAPFILE_BRUSHES\00", align 1
@mapbrushes = common dso_local global %struct.TYPE_16__* null, align 8
@brushsides = common dso_local global %struct.TYPE_15__* null, align 8
@nummapbrushsides = common dso_local global i64 0, align 8
@entities = common dso_local global i32 0, align 4
@TEXINFO_NODE = common dso_local global i32 0, align 4
@MAX_MAPFILE_BRUSHSIDES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"MAX_MAPFILE_BRUSHSIDES\00", align 1
@SFL_TEXTURED = common dso_local global i32 0, align 4
@hl_numclipbrushes = common dso_local global i32 0, align 4
@create_aas = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HL_BSPBrushToMapBrush(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %9 = load i64, i64* @nummapbrushes, align 8
  %10 = load i64, i64* @MAX_MAPFILE_BRUSHES, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @Error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** @mapbrushes, align 8
  %16 = load i64, i64* @nummapbrushes, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i64 %16
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %5, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** @brushsides, align 8
  %19 = load i64, i64* @nummapbrushsides, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i64 %19
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 3
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %22, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = load i32, i32* @entities, align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 0, %25
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i64 %26
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 5
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %29, align 8
  %30 = load i64, i64* @nummapbrushes, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 4
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* @TEXINFO_NODE, align 4
  store i32 %41, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %117, %14
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %120

48:                                               ; preds = %42
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  br label %117

59:                                               ; preds = %48
  %60 = load i64, i64* @nummapbrushsides, align 8
  %61 = load i64, i64* @MAX_MAPFILE_BRUSHSIDES, align 8
  %62 = icmp uge i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %59
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** @brushsides, align 8
  %67 = load i64, i64* @nummapbrushsides, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i64 %67
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %6, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @TEXINFO_NODE, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %65
  %102 = load i32, i32* @SFL_TEXTURED, align 4
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %101, %65
  %111 = load i64, i64* @nummapbrushsides, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* @nummapbrushsides, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %110, %58
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %42

120:                                              ; preds = %42
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @TEXINFO_NODE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  %127 = load i32, i32* @hl_numclipbrushes, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* @hl_numclipbrushes, align 4
  br label %183

129:                                              ; preds = %120
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %157, %129
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %160

136:                                              ; preds = %130
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @TEXINFO_NODE, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %136
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  store i32 %148, i32* %155, align 8
  br label %156

156:                                              ; preds = %147, %136
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %7, align 4
  br label %130

160:                                              ; preds = %130
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load i64, i64* @create_aas, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %160
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %171 = call i32 @AAS_CreateMapBrushes(%struct.TYPE_16__* %169, %struct.TYPE_17__* %170, i32 1)
  br label %183

172:                                              ; preds = %160
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %174 = call i32 @MakeBrushWindings(%struct.TYPE_16__* %173)
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %176 = call i32 @AddBrushBevels(%struct.TYPE_16__* %175)
  %177 = load i64, i64* @nummapbrushes, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* @nummapbrushes, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %172, %168, %124
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @AAS_CreateMapBrushes(%struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @MakeBrushWindings(%struct.TYPE_16__*) #1

declare dso_local i32 @AddBrushBevels(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

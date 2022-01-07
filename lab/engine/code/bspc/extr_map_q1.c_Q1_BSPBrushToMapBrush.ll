; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q1.c_Q1_BSPBrushToMapBrush.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q1.c_Q1_BSPBrushToMapBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_16__*, i64, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32 }

@nummapbrushes = common dso_local global i64 0, align 8
@MAX_MAPFILE_BRUSHES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"nummapbrushes == MAX_MAPFILE_BRUSHES\00", align 1
@mapbrushes = common dso_local global %struct.TYPE_17__* null, align 8
@brushsides = common dso_local global %struct.TYPE_16__* null, align 8
@nummapbrushsides = common dso_local global i64 0, align 8
@entities = common dso_local global i32 0, align 4
@TEXINFO_NODE = common dso_local global i32 0, align 4
@MAX_MAPFILE_BRUSHSIDES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"MAX_MAPFILE_BRUSHSIDES\00", align 1
@SFL_TEXTURED = common dso_local global i32 0, align 4
@q1_numclipbrushes = common dso_local global i32 0, align 4
@create_aas = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q1_BSPBrushToMapBrush(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = call i32 @CheckBSPBrush(%struct.TYPE_19__* %9)
  %11 = load i64, i64* @nummapbrushes, align 8
  %12 = load i64, i64* @MAX_MAPFILE_BRUSHES, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @Error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** @mapbrushes, align 8
  %18 = load i64, i64* @nummapbrushes, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i64 %18
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %5, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** @brushsides, align 8
  %21 = load i64, i64* @nummapbrushsides, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i64 %21
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 3
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %24, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %26 = load i32, i32* @entities, align 4
  %27 = sext i32 %26 to i64
  %28 = sub i64 0, %27
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i64 %28
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 5
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %31, align 8
  %32 = load i64, i64* @nummapbrushes, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %32, %35
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 4
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  store i32 -1, i32* %40, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* @TEXINFO_NODE, align 4
  store i32 %43, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %119, %16
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %122

50:                                               ; preds = %44
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  br label %119

61:                                               ; preds = %50
  %62 = load i64, i64* @nummapbrushsides, align 8
  %63 = load i64, i64* @MAX_MAPFILE_BRUSHSIDES, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 @Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %61
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** @brushsides, align 8
  %69 = load i64, i64* @nummapbrushsides, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i64 %69
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %6, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @TEXINFO_NODE, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %67
  %104 = load i32, i32* @SFL_TEXTURED, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %103, %67
  %113 = load i64, i64* @nummapbrushsides, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* @nummapbrushsides, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %112, %60
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %44

122:                                              ; preds = %44
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @TEXINFO_NODE, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  store i32 0, i32* %128, align 4
  %129 = load i32, i32* @q1_numclipbrushes, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* @q1_numclipbrushes, align 4
  br label %185

131:                                              ; preds = %122
  store i32 0, i32* %7, align 4
  br label %132

132:                                              ; preds = %159, %131
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %162

138:                                              ; preds = %132
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @TEXINFO_NODE, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %138
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  store i32 %150, i32* %157, align 8
  br label %158

158:                                              ; preds = %149, %138
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %7, align 4
  br label %132

162:                                              ; preds = %132
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = load i64, i64* @create_aas, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %162
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %173 = call i32 @AAS_CreateMapBrushes(%struct.TYPE_17__* %171, %struct.TYPE_18__* %172, i32 1)
  br label %185

174:                                              ; preds = %162
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %176 = call i32 @MakeBrushWindings(%struct.TYPE_17__* %175)
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %178 = call i32 @AddBrushBevels(%struct.TYPE_17__* %177)
  %179 = load i64, i64* @nummapbrushes, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* @nummapbrushes, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %174, %170, %126
  ret void
}

declare dso_local i32 @CheckBSPBrush(%struct.TYPE_19__*) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @AAS_CreateMapBrushes(%struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @MakeBrushWindings(%struct.TYPE_17__*) #1

declare dso_local i32 @AddBrushBevels(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

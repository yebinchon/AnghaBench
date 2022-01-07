; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_map.c_WriteOriginBrush.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_map.c_WriteOriginBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64** }

@.str = private unnamed_addr constant [4 x i8] c" {\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"  ( %5i %5i %5i ) \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"( %5i %5i %5i ) \00", align 1
@loadedmaptype = common dso_local global i64 0, align 8
@MAPTYPE_SIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"generic/misc/origin 0 0 0 1 1\00", align 1
@MAPTYPE_HALFLIFE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"origin 0 0 0 1 1\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"e1u1/origin 0 0 0 1 1\00", align 1
@MAPTYPE_QUAKE2 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1
@c_writtenbrushes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WriteOriginBrush(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 (i32*, i8*, ...) @fprintf(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %184

15:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %173, %15
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %176

19:                                               ; preds = %16
  store i32 -1, i32* %9, align 4
  br label %20

20:                                               ; preds = %169, %19
  %21 = load i32, i32* %9, align 4
  %22 = icmp sle i32 %21, 1
  br i1 %22, label %23, label %172

23:                                               ; preds = %20
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @VectorClear(i32* %24)
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %35, %36
  %38 = add nsw i32 %37, 16
  %39 = sitofp i32 %38 to float
  store float %39, float* %7, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load float, float* %7, align 4
  %42 = call %struct.TYPE_4__* @BaseWindingForPlane(i32* %40, float %41)
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %10, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64**, i64*** %45, align 8
  %47 = getelementptr inbounds i64*, i64** %46, i64 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64**, i64*** %53, align 8
  %55 = getelementptr inbounds i64*, i64** %54, i64 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64**, i64*** %61, align 8
  %63 = getelementptr inbounds i64*, i64** %62, i64 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 2
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i64 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %59, i32 %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %184

71:                                               ; preds = %23
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64**, i64*** %74, align 8
  %76 = getelementptr inbounds i64*, i64** %75, i64 1
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64**, i64*** %82, align 8
  %84 = getelementptr inbounds i64*, i64** %83, i64 1
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64**, i64*** %90, align 8
  %92 = getelementptr inbounds i64*, i64** %91, i64 1
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 2
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i64 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %88, i32 %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %184

100:                                              ; preds = %71
  %101 = load i32*, i32** %4, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64**, i64*** %103, align 8
  %105 = getelementptr inbounds i64*, i64** %104, i64 2
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i64**, i64*** %111, align 8
  %113 = getelementptr inbounds i64*, i64** %112, i64 2
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 1
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64**, i64*** %119, align 8
  %121 = getelementptr inbounds i64*, i64** %120, i64 2
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 2
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i64 (i32*, i8*, ...) @fprintf(i32* %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %117, i32 %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %184

129:                                              ; preds = %100
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %131 = call i32 @FreeWinding(%struct.TYPE_4__* %130)
  %132 = load i64, i64* @loadedmaptype, align 8
  %133 = load i64, i64* @MAPTYPE_SIN, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load i32*, i32** %4, align 8
  %137 = call i64 (i32*, i8*, ...) @fprintf(i32* %136, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %184

140:                                              ; preds = %135
  br label %158

141:                                              ; preds = %129
  %142 = load i64, i64* @loadedmaptype, align 8
  %143 = load i64, i64* @MAPTYPE_HALFLIFE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load i32*, i32** %4, align 8
  %147 = call i64 (i32*, i8*, ...) @fprintf(i32* %146, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  store i32 0, i32* %3, align 4
  br label %184

150:                                              ; preds = %145
  br label %157

151:                                              ; preds = %141
  %152 = load i32*, i32** %4, align 8
  %153 = call i64 (i32*, i8*, ...) @fprintf(i32* %152, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  store i32 0, i32* %3, align 4
  br label %184

156:                                              ; preds = %151
  br label %157

157:                                              ; preds = %156, %150
  br label %158

158:                                              ; preds = %157, %140
  %159 = load i64, i64* @loadedmaptype, align 8
  %160 = load i64, i64* @MAPTYPE_QUAKE2, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %163

163:                                              ; preds = %162, %158
  %164 = load i32*, i32** %4, align 8
  %165 = call i64 (i32*, i8*, ...) @fprintf(i32* %164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  store i32 0, i32* %3, align 4
  br label %184

168:                                              ; preds = %163
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 2
  store i32 %171, i32* %9, align 4
  br label %20

172:                                              ; preds = %20
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %16

176:                                              ; preds = %16
  %177 = load i32*, i32** %4, align 8
  %178 = call i64 (i32*, i8*, ...) @fprintf(i32* %177, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  store i32 0, i32* %3, align 4
  br label %184

181:                                              ; preds = %176
  %182 = load i32, i32* @c_writtenbrushes, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* @c_writtenbrushes, align 4
  store i32 1, i32* %3, align 4
  br label %184

184:                                              ; preds = %181, %180, %167, %155, %149, %139, %128, %99, %70, %14
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local %struct.TYPE_4__* @BaseWindingForPlane(i32*, float) #1

declare dso_local i32 @FreeWinding(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

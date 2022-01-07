; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_l_struct.c_WriteStructWithIndent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_l_struct.c_WriteStructWithIndent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32, i32, i32, %struct.TYPE_4__* }

@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"{\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@FT_ARRAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@FT_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@MAX_STRINGFIELD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"}\0D\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WriteStructWithIndent(i32* %0, %struct.TYPE_4__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @WriteIndent(i32* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @qfalse, align 4
  store i32 %19, i32* %5, align 4
  br label %217

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @qfalse, align 4
  store i32 %25, i32* %5, align 4
  br label %217

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %197, %26
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %200

39:                                               ; preds = %29
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %13, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @WriteIndent(i32* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* @qfalse, align 4
  store i32 %51, i32* %5, align 4
  br label %217

52:                                               ; preds = %39
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @qfalse, align 4
  store i32 %60, i32* %5, align 4
  br label %217

61:                                               ; preds = %52
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %62, i64 %66
  store i8* %67, i8** %12, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @FT_ARRAY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %61
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %11, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = call i64 (i32*, i8*, ...) @fprintf(i32* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @qfalse, align 4
  store i32 %82, i32* %5, align 4
  br label %217

83:                                               ; preds = %74
  br label %85

84:                                               ; preds = %61
  store i32 1, i32* %11, align 4
  br label %85

85:                                               ; preds = %84, %83
  br label %86

86:                                               ; preds = %189, %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %11, align 4
  %89 = icmp sgt i32 %87, 0
  br i1 %89, label %90, label %190

90:                                               ; preds = %86
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @FT_TYPE, align 4
  %95 = and i32 %93, %94
  switch i32 %95, label %164 [
    i32 132, label %96
    i32 130, label %108
    i32 131, label %120
    i32 129, label %132
    i32 128, label %144
  ]

96:                                               ; preds = %90
  %97 = load i32*, i32** %6, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = call i64 (i32*, i8*, ...) @fprintf(i32* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* @qfalse, align 4
  store i32 %104, i32* %5, align 4
  br label %217

105:                                              ; preds = %96
  %106 = load i8*, i8** %12, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  store i8* %107, i8** %12, align 8
  br label %164

108:                                              ; preds = %90
  %109 = load i32*, i32** %6, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = call i64 (i32*, i8*, ...) @fprintf(i32* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* @qfalse, align 4
  store i32 %116, i32* %5, align 4
  br label %217

117:                                              ; preds = %108
  %118 = load i8*, i8** %12, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 4
  store i8* %119, i8** %12, align 8
  br label %164

120:                                              ; preds = %90
  %121 = load i32*, i32** %6, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = bitcast i8* %122 to float*
  %124 = load float, float* %123, align 4
  %125 = call i32 @WriteFloat(i32* %121, float %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %120
  %128 = load i32, i32* @qfalse, align 4
  store i32 %128, i32* %5, align 4
  br label %217

129:                                              ; preds = %120
  %130 = load i8*, i8** %12, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 4
  store i8* %131, i8** %12, align 8
  br label %164

132:                                              ; preds = %90
  %133 = load i32*, i32** %6, align 8
  %134 = load i8*, i8** %12, align 8
  %135 = call i64 (i32*, i8*, ...) @fprintf(i32* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %134)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i32, i32* @qfalse, align 4
  store i32 %138, i32* %5, align 4
  br label %217

139:                                              ; preds = %132
  %140 = load i8*, i8** %12, align 8
  %141 = load i32, i32* @MAX_STRINGFIELD, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  store i8* %143, i8** %12, align 8
  br label %164

144:                                              ; preds = %90
  %145 = load i32*, i32** %6, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @WriteStructWithIndent(i32* %145, %struct.TYPE_4__* %148, i8* %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %144
  %154 = load i32, i32* @qfalse, align 4
  store i32 %154, i32* %5, align 4
  br label %217

155:                                              ; preds = %144
  %156 = load i8*, i8** %12, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %156, i64 %162
  store i8* %163, i8** %12, align 8
  br label %164

164:                                              ; preds = %90, %155, %139, %129, %117, %105
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @FT_ARRAY, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %189

171:                                              ; preds = %164
  %172 = load i32, i32* %11, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load i32*, i32** %6, align 8
  %176 = call i64 (i32*, i8*, ...) @fprintf(i32* %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i32, i32* @qfalse, align 4
  store i32 %179, i32* %5, align 4
  br label %217

180:                                              ; preds = %174
  br label %188

181:                                              ; preds = %171
  %182 = load i32*, i32** %6, align 8
  %183 = call i64 (i32*, i8*, ...) @fprintf(i32* %182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %184 = icmp slt i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load i32, i32* @qfalse, align 4
  store i32 %186, i32* %5, align 4
  br label %217

187:                                              ; preds = %181
  br label %188

188:                                              ; preds = %187, %180
  br label %189

189:                                              ; preds = %188, %164
  br label %86

190:                                              ; preds = %86
  %191 = load i32*, i32** %6, align 8
  %192 = call i64 (i32*, i8*, ...) @fprintf(i32* %191, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i32, i32* @qfalse, align 4
  store i32 %195, i32* %5, align 4
  br label %217

196:                                              ; preds = %190
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %10, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %10, align 4
  br label %29

200:                                              ; preds = %29
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %9, align 4
  %203 = load i32*, i32** %6, align 8
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @WriteIndent(i32* %203, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %200
  %208 = load i32, i32* @qfalse, align 4
  store i32 %208, i32* %5, align 4
  br label %217

209:                                              ; preds = %200
  %210 = load i32*, i32** %6, align 8
  %211 = call i64 (i32*, i8*, ...) @fprintf(i32* %210, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %212 = icmp slt i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %209
  %214 = load i32, i32* @qfalse, align 4
  store i32 %214, i32* %5, align 4
  br label %217

215:                                              ; preds = %209
  %216 = load i32, i32* @qtrue, align 4
  store i32 %216, i32* %5, align 4
  br label %217

217:                                              ; preds = %215, %213, %207, %194, %185, %178, %153, %137, %127, %115, %103, %81, %59, %50, %24, %18
  %218 = load i32, i32* %5, align 4
  ret i32 %218
}

declare dso_local i32 @WriteIndent(i32*, i32) #1

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @WriteFloat(i32*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

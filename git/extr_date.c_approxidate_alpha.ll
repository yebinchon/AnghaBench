; ModuleID = '/home/carl/AnghaBench/git/extr_date.c_approxidate_alpha.c'
source_filename = "/home/carl/AnghaBench/git/extr_date.c_approxidate_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.special = type { i8*, i32 (%struct.tm*, %struct.tm*, i32*)* }
%struct.tm = type { i32, i32, i64 }
%struct.typelen = type { i8*, i32 }

@month_names = common dso_local global i8** null, align 8
@special = common dso_local global %struct.special* null, align 8
@number_name = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [5 x i8] c"last\00", align 1
@typelen = common dso_local global %struct.typelen* null, align 8
@weekday_names = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"months\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"years\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.tm*, %struct.tm*, i32*, i32*)* @approxidate_alpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @approxidate_alpha(i8* %0, %struct.tm* %1, %struct.tm* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tm*, align 8
  %9 = alloca %struct.tm*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.typelen*, align 8
  %13 = alloca %struct.special*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.tm* %1, %struct.tm** %8, align 8
  store %struct.tm* %2, %struct.tm** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %14, align 8
  br label %25

25:                                               ; preds = %31, %5
  %26 = load i8*, i8** %14, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %14, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @isalpha(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %25

32:                                               ; preds = %25
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %53, %32
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 12
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = load i8**, i8*** @month_names, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @match_string(i8* %37, i8* %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp sge i32 %44, 3
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.tm*, %struct.tm** %8, align 8
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32*, i32** %11, align 8
  store i32 1, i32* %50, align 4
  %51 = load i8*, i8** %14, align 8
  store i8* %51, i8** %6, align 8
  br label %265

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %15, align 4
  br label %33

56:                                               ; preds = %33
  %57 = load %struct.special*, %struct.special** @special, align 8
  store %struct.special* %57, %struct.special** %13, align 8
  br label %58

58:                                               ; preds = %86, %56
  %59 = load %struct.special*, %struct.special** %13, align 8
  %60 = getelementptr inbounds %struct.special, %struct.special* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %89

63:                                               ; preds = %58
  %64 = load %struct.special*, %struct.special** %13, align 8
  %65 = getelementptr inbounds %struct.special, %struct.special* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strlen(i8* %66)
  store i32 %67, i32* %17, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = load %struct.special*, %struct.special** %13, align 8
  %70 = getelementptr inbounds %struct.special, %struct.special* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @match_string(i8* %68, i8* %71)
  %73 = load i32, i32* %17, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %63
  %76 = load %struct.special*, %struct.special** %13, align 8
  %77 = getelementptr inbounds %struct.special, %struct.special* %76, i32 0, i32 1
  %78 = load i32 (%struct.tm*, %struct.tm*, i32*)*, i32 (%struct.tm*, %struct.tm*, i32*)** %77, align 8
  %79 = load %struct.tm*, %struct.tm** %8, align 8
  %80 = load %struct.tm*, %struct.tm** %9, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 %78(%struct.tm* %79, %struct.tm* %80, i32* %81)
  %83 = load i32*, i32** %11, align 8
  store i32 1, i32* %83, align 4
  %84 = load i8*, i8** %14, align 8
  store i8* %84, i8** %6, align 8
  br label %265

85:                                               ; preds = %63
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.special*, %struct.special** %13, align 8
  %88 = getelementptr inbounds %struct.special, %struct.special* %87, i32 1
  store %struct.special* %88, %struct.special** %13, align 8
  br label %58

89:                                               ; preds = %58
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %131, label %93

93:                                               ; preds = %89
  store i32 1, i32* %15, align 4
  br label %94

94:                                               ; preds = %119, %93
  %95 = load i32, i32* %15, align 4
  %96 = icmp slt i32 %95, 11
  br i1 %96, label %97, label %122

97:                                               ; preds = %94
  %98 = load i8**, i8*** @number_name, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strlen(i8* %102)
  store i32 %103, i32* %18, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = load i8**, i8*** @number_name, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @match_string(i8* %104, i8* %109)
  %111 = load i32, i32* %18, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %97
  %114 = load i32, i32* %15, align 4
  %115 = load i32*, i32** %10, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32*, i32** %11, align 8
  store i32 1, i32* %116, align 4
  %117 = load i8*, i8** %14, align 8
  store i8* %117, i8** %6, align 8
  br label %265

118:                                              ; preds = %97
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  br label %94

122:                                              ; preds = %94
  %123 = load i8*, i8** %7, align 8
  %124 = call i32 @match_string(i8* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %125 = icmp eq i32 %124, 4
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32*, i32** %10, align 8
  store i32 1, i32* %127, align 4
  %128 = load i32*, i32** %11, align 8
  store i32 1, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %122
  %130 = load i8*, i8** %14, align 8
  store i8* %130, i8** %6, align 8
  br label %265

131:                                              ; preds = %89
  %132 = load %struct.typelen*, %struct.typelen** @typelen, align 8
  store %struct.typelen* %132, %struct.typelen** %12, align 8
  br label %133

133:                                              ; preds = %164, %131
  %134 = load %struct.typelen*, %struct.typelen** %12, align 8
  %135 = getelementptr inbounds %struct.typelen, %struct.typelen* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %167

138:                                              ; preds = %133
  %139 = load %struct.typelen*, %struct.typelen** %12, align 8
  %140 = getelementptr inbounds %struct.typelen, %struct.typelen* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @strlen(i8* %141)
  store i32 %142, i32* %19, align 4
  %143 = load i8*, i8** %7, align 8
  %144 = load %struct.typelen*, %struct.typelen** %12, align 8
  %145 = getelementptr inbounds %struct.typelen, %struct.typelen* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @match_string(i8* %143, i8* %146)
  %148 = load i32, i32* %19, align 4
  %149 = sub nsw i32 %148, 1
  %150 = icmp sge i32 %147, %149
  br i1 %150, label %151, label %164

151:                                              ; preds = %138
  %152 = load %struct.tm*, %struct.tm** %8, align 8
  %153 = load %struct.tm*, %struct.tm** %9, align 8
  %154 = load %struct.typelen*, %struct.typelen** %12, align 8
  %155 = getelementptr inbounds %struct.typelen, %struct.typelen* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32*, i32** %10, align 8
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %156, %158
  %160 = call i32 @update_tm(%struct.tm* %152, %struct.tm* %153, i32 %159)
  %161 = load i32*, i32** %10, align 8
  store i32 0, i32* %161, align 4
  %162 = load i32*, i32** %11, align 8
  store i32 1, i32* %162, align 4
  %163 = load i8*, i8** %14, align 8
  store i8* %163, i8** %6, align 8
  br label %265

164:                                              ; preds = %138
  %165 = load %struct.typelen*, %struct.typelen** %12, align 8
  %166 = getelementptr inbounds %struct.typelen, %struct.typelen* %165, i32 1
  store %struct.typelen* %166, %struct.typelen** %12, align 8
  br label %133

167:                                              ; preds = %133
  store i32 0, i32* %15, align 4
  br label %168

168:                                              ; preds = %211, %167
  %169 = load i32, i32* %15, align 4
  %170 = icmp slt i32 %169, 7
  br i1 %170, label %171, label %214

171:                                              ; preds = %168
  %172 = load i8*, i8** %7, align 8
  %173 = load i8**, i8*** @weekday_names, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @match_string(i8* %172, i8* %177)
  store i32 %178, i32* %20, align 4
  %179 = load i32, i32* %20, align 4
  %180 = icmp sge i32 %179, 3
  br i1 %180, label %181, label %210

181:                                              ; preds = %171
  %182 = load i32*, i32** %10, align 8
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %183, 1
  store i32 %184, i32* %22, align 4
  %185 = load i32*, i32** %10, align 8
  store i32 0, i32* %185, align 4
  %186 = load %struct.tm*, %struct.tm** %8, align 8
  %187 = getelementptr inbounds %struct.tm, %struct.tm* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %15, align 4
  %190 = sub nsw i32 %188, %189
  store i32 %190, i32* %21, align 4
  %191 = load i32, i32* %21, align 4
  %192 = icmp sle i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %181
  %194 = load i32, i32* %22, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %22, align 4
  br label %196

196:                                              ; preds = %193, %181
  %197 = load i32, i32* %22, align 4
  %198 = mul nsw i32 7, %197
  %199 = load i32, i32* %21, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %21, align 4
  %201 = load %struct.tm*, %struct.tm** %8, align 8
  %202 = load %struct.tm*, %struct.tm** %9, align 8
  %203 = load i32, i32* %21, align 4
  %204 = mul nsw i32 %203, 24
  %205 = mul nsw i32 %204, 60
  %206 = mul nsw i32 %205, 60
  %207 = call i32 @update_tm(%struct.tm* %201, %struct.tm* %202, i32 %206)
  %208 = load i32*, i32** %11, align 8
  store i32 1, i32* %208, align 4
  %209 = load i8*, i8** %14, align 8
  store i8* %209, i8** %6, align 8
  br label %265

210:                                              ; preds = %171
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %15, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %15, align 4
  br label %168

214:                                              ; preds = %168
  %215 = load i8*, i8** %7, align 8
  %216 = call i32 @match_string(i8* %215, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %217 = icmp sge i32 %216, 5
  br i1 %217, label %218, label %245

218:                                              ; preds = %214
  %219 = load %struct.tm*, %struct.tm** %8, align 8
  %220 = load %struct.tm*, %struct.tm** %9, align 8
  %221 = call i32 @update_tm(%struct.tm* %219, %struct.tm* %220, i32 0)
  %222 = load %struct.tm*, %struct.tm** %8, align 8
  %223 = getelementptr inbounds %struct.tm, %struct.tm* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32*, i32** %10, align 8
  %226 = load i32, i32* %225, align 4
  %227 = sub nsw i32 %224, %226
  store i32 %227, i32* %23, align 4
  %228 = load i32*, i32** %10, align 8
  store i32 0, i32* %228, align 4
  br label %229

229:                                              ; preds = %232, %218
  %230 = load i32, i32* %23, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %229
  %233 = load i32, i32* %23, align 4
  %234 = add nsw i32 %233, 12
  store i32 %234, i32* %23, align 4
  %235 = load %struct.tm*, %struct.tm** %8, align 8
  %236 = getelementptr inbounds %struct.tm, %struct.tm* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 %237, -1
  store i64 %238, i64* %236, align 8
  br label %229

239:                                              ; preds = %229
  %240 = load i32, i32* %23, align 4
  %241 = load %struct.tm*, %struct.tm** %8, align 8
  %242 = getelementptr inbounds %struct.tm, %struct.tm* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  %243 = load i32*, i32** %11, align 8
  store i32 1, i32* %243, align 4
  %244 = load i8*, i8** %14, align 8
  store i8* %244, i8** %6, align 8
  br label %265

245:                                              ; preds = %214
  %246 = load i8*, i8** %7, align 8
  %247 = call i32 @match_string(i8* %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %248 = icmp sge i32 %247, 4
  br i1 %248, label %249, label %263

249:                                              ; preds = %245
  %250 = load %struct.tm*, %struct.tm** %8, align 8
  %251 = load %struct.tm*, %struct.tm** %9, align 8
  %252 = call i32 @update_tm(%struct.tm* %250, %struct.tm* %251, i32 0)
  %253 = load i32*, i32** %10, align 8
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = load %struct.tm*, %struct.tm** %8, align 8
  %257 = getelementptr inbounds %struct.tm, %struct.tm* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = sub nsw i64 %258, %255
  store i64 %259, i64* %257, align 8
  %260 = load i32*, i32** %10, align 8
  store i32 0, i32* %260, align 4
  %261 = load i32*, i32** %11, align 8
  store i32 1, i32* %261, align 4
  %262 = load i8*, i8** %14, align 8
  store i8* %262, i8** %6, align 8
  br label %265

263:                                              ; preds = %245
  %264 = load i8*, i8** %14, align 8
  store i8* %264, i8** %6, align 8
  br label %265

265:                                              ; preds = %263, %249, %239, %196, %151, %129, %113, %75, %46
  %266 = load i8*, i8** %6, align 8
  ret i8* %266
}

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i32 @match_string(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @update_tm(%struct.tm*, %struct.tm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_status.c_format_timer_display.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_status.c_format_timer_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"year\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"years\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"days\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"hours\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"mins\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"secs\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"%d %s, %d %s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @format_timer_display(%struct.tm* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [5 x i8*], align 16
  %8 = alloca [5 x i8*], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.tm* %0, %struct.tm** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %18 = bitcast [5 x i8*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 40, i1 false)
  %19 = bitcast i8* %18 to [5 x i8*]*
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %20, align 16
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %19, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %21, align 8
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %19, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %22, align 16
  %23 = getelementptr inbounds [5 x i8*], [5 x i8*]* %19, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %23, align 8
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %19, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** %24, align 16
  %25 = bitcast [5 x i8*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 40, i1 false)
  %26 = bitcast i8* %25 to [5 x i8*]*
  %27 = getelementptr inbounds [5 x i8*], [5 x i8*]* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8** %27, align 16
  %28 = getelementptr inbounds [5 x i8*], [5 x i8*]* %26, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8** %28, align 8
  %29 = getelementptr inbounds [5 x i8*], [5 x i8*]* %26, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8** %29, align 16
  %30 = getelementptr inbounds [5 x i8*], [5 x i8*]* %26, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8** %30, align 8
  %31 = getelementptr inbounds [5 x i8*], [5 x i8*]* %26, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8** %31, align 16
  %32 = load %struct.tm*, %struct.tm** %4, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 70
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %75

37:                                               ; preds = %3
  %38 = load %struct.tm*, %struct.tm** %4, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 70
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  %45 = load i8*, i8** %44, align 16
  br label %49

46:                                               ; preds = %37
  %47 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 0
  %48 = load i8*, i8** %47, align 16
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i8* [ %45, %43 ], [ %48, %46 ]
  store i8* %50, i8** %9, align 8
  %51 = load %struct.tm*, %struct.tm** %4, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 1
  %57 = load i8*, i8** %56, align 8
  br label %61

58:                                               ; preds = %49
  %59 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 1
  %60 = load i8*, i8** %59, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i8* [ %57, %55 ], [ %60, %58 ]
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.tm*, %struct.tm** %4, align 8
  %66 = getelementptr inbounds %struct.tm, %struct.tm* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 70
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.tm*, %struct.tm** %4, align 8
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 (i8*, i64, i8*, i32, i8*, ...) @snprintf(i8* %63, i64 %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %68, i8* %69, i32 %72, i8* %73)
  br label %221

75:                                               ; preds = %3
  %76 = load %struct.tm*, %struct.tm** %4, align 8
  %77 = getelementptr inbounds %struct.tm, %struct.tm* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %116

80:                                               ; preds = %75
  %81 = load %struct.tm*, %struct.tm** %4, align 8
  %82 = getelementptr inbounds %struct.tm, %struct.tm* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 1
  %87 = load i8*, i8** %86, align 8
  br label %91

88:                                               ; preds = %80
  %89 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 1
  %90 = load i8*, i8** %89, align 8
  br label %91

91:                                               ; preds = %88, %85
  %92 = phi i8* [ %87, %85 ], [ %90, %88 ]
  store i8* %92, i8** %11, align 8
  %93 = load %struct.tm*, %struct.tm** %4, align 8
  %94 = getelementptr inbounds %struct.tm, %struct.tm* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 2
  %99 = load i8*, i8** %98, align 16
  br label %103

100:                                              ; preds = %91
  %101 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 2
  %102 = load i8*, i8** %101, align 16
  br label %103

103:                                              ; preds = %100, %97
  %104 = phi i8* [ %99, %97 ], [ %102, %100 ]
  store i8* %104, i8** %12, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load %struct.tm*, %struct.tm** %4, align 8
  %108 = getelementptr inbounds %struct.tm, %struct.tm* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %11, align 8
  %111 = load %struct.tm*, %struct.tm** %4, align 8
  %112 = getelementptr inbounds %struct.tm, %struct.tm* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 (i8*, i64, i8*, i32, i8*, ...) @snprintf(i8* %105, i64 %106, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %109, i8* %110, i32 %113, i8* %114)
  br label %220

116:                                              ; preds = %75
  %117 = load %struct.tm*, %struct.tm** %4, align 8
  %118 = getelementptr inbounds %struct.tm, %struct.tm* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %157

121:                                              ; preds = %116
  %122 = load %struct.tm*, %struct.tm** %4, align 8
  %123 = getelementptr inbounds %struct.tm, %struct.tm* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 2
  %128 = load i8*, i8** %127, align 16
  br label %132

129:                                              ; preds = %121
  %130 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 2
  %131 = load i8*, i8** %130, align 16
  br label %132

132:                                              ; preds = %129, %126
  %133 = phi i8* [ %128, %126 ], [ %131, %129 ]
  store i8* %133, i8** %13, align 8
  %134 = load %struct.tm*, %struct.tm** %4, align 8
  %135 = getelementptr inbounds %struct.tm, %struct.tm* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 3
  %140 = load i8*, i8** %139, align 8
  br label %144

141:                                              ; preds = %132
  %142 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 3
  %143 = load i8*, i8** %142, align 8
  br label %144

144:                                              ; preds = %141, %138
  %145 = phi i8* [ %140, %138 ], [ %143, %141 ]
  store i8* %145, i8** %14, align 8
  %146 = load i8*, i8** %5, align 8
  %147 = load i64, i64* %6, align 8
  %148 = load %struct.tm*, %struct.tm** %4, align 8
  %149 = getelementptr inbounds %struct.tm, %struct.tm* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i8*, i8** %13, align 8
  %152 = load %struct.tm*, %struct.tm** %4, align 8
  %153 = getelementptr inbounds %struct.tm, %struct.tm* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load i8*, i8** %14, align 8
  %156 = call i32 (i8*, i64, i8*, i32, i8*, ...) @snprintf(i8* %146, i64 %147, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %150, i8* %151, i32 %154, i8* %155)
  br label %219

157:                                              ; preds = %116
  %158 = load %struct.tm*, %struct.tm** %4, align 8
  %159 = getelementptr inbounds %struct.tm, %struct.tm* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %198

162:                                              ; preds = %157
  %163 = load %struct.tm*, %struct.tm** %4, align 8
  %164 = getelementptr inbounds %struct.tm, %struct.tm* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 3
  %169 = load i8*, i8** %168, align 8
  br label %173

170:                                              ; preds = %162
  %171 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 3
  %172 = load i8*, i8** %171, align 8
  br label %173

173:                                              ; preds = %170, %167
  %174 = phi i8* [ %169, %167 ], [ %172, %170 ]
  store i8* %174, i8** %15, align 8
  %175 = load %struct.tm*, %struct.tm** %4, align 8
  %176 = getelementptr inbounds %struct.tm, %struct.tm* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %182

179:                                              ; preds = %173
  %180 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 4
  %181 = load i8*, i8** %180, align 16
  br label %185

182:                                              ; preds = %173
  %183 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 4
  %184 = load i8*, i8** %183, align 16
  br label %185

185:                                              ; preds = %182, %179
  %186 = phi i8* [ %181, %179 ], [ %184, %182 ]
  store i8* %186, i8** %16, align 8
  %187 = load i8*, i8** %5, align 8
  %188 = load i64, i64* %6, align 8
  %189 = load %struct.tm*, %struct.tm** %4, align 8
  %190 = getelementptr inbounds %struct.tm, %struct.tm* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load i8*, i8** %15, align 8
  %193 = load %struct.tm*, %struct.tm** %4, align 8
  %194 = getelementptr inbounds %struct.tm, %struct.tm* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = load i8*, i8** %16, align 8
  %197 = call i32 (i8*, i64, i8*, i32, i8*, ...) @snprintf(i8* %187, i64 %188, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %191, i8* %192, i32 %195, i8* %196)
  br label %218

198:                                              ; preds = %157
  %199 = load %struct.tm*, %struct.tm** %4, align 8
  %200 = getelementptr inbounds %struct.tm, %struct.tm* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 4
  %205 = load i8*, i8** %204, align 16
  br label %209

206:                                              ; preds = %198
  %207 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 4
  %208 = load i8*, i8** %207, align 16
  br label %209

209:                                              ; preds = %206, %203
  %210 = phi i8* [ %205, %203 ], [ %208, %206 ]
  store i8* %210, i8** %17, align 8
  %211 = load i8*, i8** %5, align 8
  %212 = load i64, i64* %6, align 8
  %213 = load %struct.tm*, %struct.tm** %4, align 8
  %214 = getelementptr inbounds %struct.tm, %struct.tm* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = load i8*, i8** %17, align 8
  %217 = call i32 (i8*, i64, i8*, i32, i8*, ...) @snprintf(i8* %211, i64 %212, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %215, i8* %216)
  br label %218

218:                                              ; preds = %209, %185
  br label %219

219:                                              ; preds = %218, %144
  br label %220

220:                                              ; preds = %219, %103
  br label %221

221:                                              ; preds = %220, %61
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

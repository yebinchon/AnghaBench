; ModuleID = '/home/carl/AnghaBench/htop/extr_Process.c_Process_compare.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Process.c_Process_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Process_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_4__*
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 22
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %7, align 8
  br label %27

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %7, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %6, align 8
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %252 [
    i32 143, label %31
    i32 142, label %42
    i32 150, label %50
    i32 149, label %58
    i32 148, label %66
    i32 147, label %74
    i32 146, label %82
    i32 145, label %90
    i32 144, label %98
    i32 141, label %106
    i32 140, label %114
    i32 139, label %122
    i32 138, label %130
    i32 137, label %138
    i32 136, label %146
    i32 135, label %154
    i32 134, label %178
    i32 133, label %188
    i32 131, label %196
    i32 132, label %204
    i32 130, label %212
    i32 129, label %220
    i32 128, label %228
  ]

31:                                               ; preds = %27
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 21
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 21
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %34, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 -1
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %3, align 8
  br label %260

42:                                               ; preds = %27
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  store i64 %49, i64* %3, align 8
  br label %260

50:                                               ; preds = %27
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* %53, i8* %56)
  store i64 %57, i64* %3, align 8
  br label %260

58:                                               ; preds = %27
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  store i64 %65, i64* %3, align 8
  br label %260

66:                                               ; preds = %27
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  store i64 %73, i64* %3, align 8
  br label %260

74:                                               ; preds = %27
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  store i64 %81, i64* %3, align 8
  br label %260

82:                                               ; preds = %27
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %85, %88
  store i64 %89, i64* %3, align 8
  br label %260

90:                                               ; preds = %27
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %93, %96
  store i64 %97, i64* %3, align 8
  br label %260

98:                                               ; preds = %27
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %101, %104
  store i64 %105, i64* %3, align 8
  br label %260

106:                                              ; preds = %27
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %109, %112
  store i64 %113, i64* %3, align 8
  br label %260

114:                                              ; preds = %27
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 8
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 8
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %117, %120
  store i64 %121, i64* %3, align 8
  br label %260

122:                                              ; preds = %27
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 9
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 9
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %125, %128
  store i64 %129, i64* %3, align 8
  br label %260

130:                                              ; preds = %27
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 10
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 10
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %133, %136
  store i64 %137, i64* %3, align 8
  br label %260

138:                                              ; preds = %27
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 11
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 11
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %141, %144
  store i64 %145, i64* %3, align 8
  br label %260

146:                                              ; preds = %27
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 12
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 12
  %152 = load i64, i64* %151, align 8
  %153 = sub nsw i64 %149, %152
  store i64 %153, i64* %3, align 8
  br label %260

154:                                              ; preds = %27
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 13
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 13
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %157, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %154
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 8
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 8
  %168 = load i64, i64* %167, align 8
  %169 = sub nsw i64 %165, %168
  store i64 %169, i64* %3, align 8
  br label %260

170:                                              ; preds = %154
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 13
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 13
  %176 = load i64, i64* %175, align 8
  %177 = sub nsw i64 %173, %176
  store i64 %177, i64* %3, align 8
  br label %260

178:                                              ; preds = %27
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 20
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @Process_sortState(i32 %181)
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 20
  %185 = load i32, i32* %184, align 8
  %186 = call i64 @Process_sortState(i32 %185)
  %187 = sub nsw i64 %182, %186
  store i64 %187, i64* %3, align 8
  br label %260

188:                                              ; preds = %27
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 14
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 14
  %194 = load i64, i64* %193, align 8
  %195 = sub nsw i64 %191, %194
  store i64 %195, i64* %3, align 8
  br label %260

196:                                              ; preds = %27
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 15
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 15
  %202 = load i64, i64* %201, align 8
  %203 = sub nsw i64 %199, %202
  store i64 %203, i64* %3, align 8
  br label %260

204:                                              ; preds = %27
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 16
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 16
  %210 = load i64, i64* %209, align 8
  %211 = sub nsw i64 %207, %210
  store i64 %211, i64* %3, align 8
  br label %260

212:                                              ; preds = %27
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 17
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 17
  %218 = load i64, i64* %217, align 8
  %219 = sub nsw i64 %215, %218
  store i64 %219, i64* %3, align 8
  br label %260

220:                                              ; preds = %27
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 18
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 18
  %226 = load i64, i64* %225, align 8
  %227 = sub nsw i64 %223, %226
  store i64 %227, i64* %3, align 8
  br label %260

228:                                              ; preds = %27
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 19
  %231 = load i8*, i8** %230, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 19
  %236 = load i8*, i8** %235, align 8
  br label %238

237:                                              ; preds = %228
  br label %238

238:                                              ; preds = %237, %233
  %239 = phi i8* [ %236, %233 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %237 ]
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 19
  %242 = load i8*, i8** %241, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %248

244:                                              ; preds = %238
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 19
  %247 = load i8*, i8** %246, align 8
  br label %249

248:                                              ; preds = %238
  br label %249

249:                                              ; preds = %248, %244
  %250 = phi i8* [ %247, %244 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %248 ]
  %251 = call i64 @strcmp(i8* %239, i8* %250)
  store i64 %251, i64* %3, align 8
  br label %260

252:                                              ; preds = %27
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 8
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 8
  %258 = load i64, i64* %257, align 8
  %259 = sub nsw i64 %255, %258
  store i64 %259, i64* %3, align 8
  br label %260

260:                                              ; preds = %252, %249, %220, %212, %204, %196, %188, %178, %170, %162, %146, %138, %130, %122, %114, %106, %98, %90, %82, %74, %66, %58, %50, %42, %31
  %261 = load i64, i64* %3, align 8
  ret i64 %261
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @Process_sortState(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

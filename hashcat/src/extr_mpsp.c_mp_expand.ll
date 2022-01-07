; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_mp_expand.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_mp_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Syntax error in mask: %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Custom-charset 1 is undefined.\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Custom-charset 2 is undefined.\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Custom-charset 3 is undefined.\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Custom-charset 4 is undefined.\00", align 1
@OPTS_TYPE_PT_HEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [76 x i8] c"The hex-charset option expects exactly 2 hexadecimal chars. Failed mask: %s\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Invalid hex character detected in mask %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i64, %struct.TYPE_12__*, %struct.TYPE_12__*, i8, i32)* @mp_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_expand(%struct.TYPE_11__* %0, i8* %1, i64 %2, %struct.TYPE_12__* %3, %struct.TYPE_12__* %4, i8 signext %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %13, align 8
  store i8 %5, i8* %14, align 1
  store i32 %6, i32* %15, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %16, align 8
  store i64 0, i64* %17, align 8
  br label %29

29:                                               ; preds = %364, %7
  %30 = load i64, i64* %17, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %367

33:                                               ; preds = %29
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* %17, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = and i32 %38, 255
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %18, align 1
  %41 = load i32, i32* %15, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %286

43:                                               ; preds = %33
  %44 = load i8, i8* %18, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 63
  br i1 %46, label %47, label %286

47:                                               ; preds = %43
  %48 = load i64, i64* %17, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %17, align 8
  %50 = load i64, i64* %17, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 (%struct.TYPE_11__*, i8*, ...) @event_log_error(%struct.TYPE_11__* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %55)
  store i32 -1, i32* %8, align 4
  br label %368

57:                                               ; preds = %47
  %58 = load i8*, i8** %10, align 8
  %59 = load i64, i64* %17, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = and i32 %62, 255
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %19, align 1
  store i32 0, i32* %20, align 4
  %65 = load i8, i8* %19, align 1
  %66 = sext i8 %65 to i32
  switch i32 %66, label %277 [
    i32 108, label %67
    i32 117, label %81
    i32 100, label %95
    i32 115, label %109
    i32 97, label %123
    i32 98, label %137
    i32 104, label %151
    i32 72, label %165
    i32 49, label %179
    i32 50, label %202
    i32 51, label %225
    i32 52, label %248
    i32 63, label %271
  ]

67:                                               ; preds = %57
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %78 = load i8, i8* %14, align 1
  %79 = call i8* @mp_add_cs_buf(%struct.TYPE_11__* %68, i8* %72, i32 %76, %struct.TYPE_12__* %77, i8 signext %78)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %20, align 4
  br label %281

81:                                               ; preds = %57
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i64 1
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %92 = load i8, i8* %14, align 1
  %93 = call i8* @mp_add_cs_buf(%struct.TYPE_11__* %82, i8* %86, i32 %90, %struct.TYPE_12__* %91, i8 signext %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %20, align 4
  br label %281

95:                                               ; preds = %57
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i64 2
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i64 2
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %106 = load i8, i8* %14, align 1
  %107 = call i8* @mp_add_cs_buf(%struct.TYPE_11__* %96, i8* %100, i32 %104, %struct.TYPE_12__* %105, i8 signext %106)
  %108 = ptrtoint i8* %107 to i32
  store i32 %108, i32* %20, align 4
  br label %281

109:                                              ; preds = %57
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i64 3
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i64 3
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %120 = load i8, i8* %14, align 1
  %121 = call i8* @mp_add_cs_buf(%struct.TYPE_11__* %110, i8* %114, i32 %118, %struct.TYPE_12__* %119, i8 signext %120)
  %122 = ptrtoint i8* %121 to i32
  store i32 %122, i32* %20, align 4
  br label %281

123:                                              ; preds = %57
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i64 4
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i64 4
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %134 = load i8, i8* %14, align 1
  %135 = call i8* @mp_add_cs_buf(%struct.TYPE_11__* %124, i8* %128, i32 %132, %struct.TYPE_12__* %133, i8 signext %134)
  %136 = ptrtoint i8* %135 to i32
  store i32 %136, i32* %20, align 4
  br label %281

137:                                              ; preds = %57
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i64 5
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i64 5
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %148 = load i8, i8* %14, align 1
  %149 = call i8* @mp_add_cs_buf(%struct.TYPE_11__* %138, i8* %142, i32 %146, %struct.TYPE_12__* %147, i8 signext %148)
  %150 = ptrtoint i8* %149 to i32
  store i32 %150, i32* %20, align 4
  br label %281

151:                                              ; preds = %57
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i64 6
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i64 6
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %162 = load i8, i8* %14, align 1
  %163 = call i8* @mp_add_cs_buf(%struct.TYPE_11__* %152, i8* %156, i32 %160, %struct.TYPE_12__* %161, i8 signext %162)
  %164 = ptrtoint i8* %163 to i32
  store i32 %164, i32* %20, align 4
  br label %281

165:                                              ; preds = %57
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i64 7
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i64 7
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %176 = load i8, i8* %14, align 1
  %177 = call i8* @mp_add_cs_buf(%struct.TYPE_11__* %166, i8* %170, i32 %174, %struct.TYPE_12__* %175, i8 signext %176)
  %178 = ptrtoint i8* %177 to i32
  store i32 %178, i32* %20, align 4
  br label %281

179:                                              ; preds = %57
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %187 = call i32 (%struct.TYPE_11__*, i8*, ...) @event_log_error(%struct.TYPE_11__* %186, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %368

188:                                              ; preds = %179
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i64 0
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i64 0
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %199 = load i8, i8* %14, align 1
  %200 = call i8* @mp_add_cs_buf(%struct.TYPE_11__* %189, i8* %193, i32 %197, %struct.TYPE_12__* %198, i8 signext %199)
  %201 = ptrtoint i8* %200 to i32
  store i32 %201, i32* %20, align 4
  br label %281

202:                                              ; preds = %57
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i64 1
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %202
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %210 = call i32 (%struct.TYPE_11__*, i8*, ...) @event_log_error(%struct.TYPE_11__* %209, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %368

211:                                              ; preds = %202
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i64 1
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i64 1
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %222 = load i8, i8* %14, align 1
  %223 = call i8* @mp_add_cs_buf(%struct.TYPE_11__* %212, i8* %216, i32 %220, %struct.TYPE_12__* %221, i8 signext %222)
  %224 = ptrtoint i8* %223 to i32
  store i32 %224, i32* %20, align 4
  br label %281

225:                                              ; preds = %57
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i64 2
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %225
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %233 = call i32 (%struct.TYPE_11__*, i8*, ...) @event_log_error(%struct.TYPE_11__* %232, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %368

234:                                              ; preds = %225
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i64 2
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i64 2
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %245 = load i8, i8* %14, align 1
  %246 = call i8* @mp_add_cs_buf(%struct.TYPE_11__* %235, i8* %239, i32 %243, %struct.TYPE_12__* %244, i8 signext %245)
  %247 = ptrtoint i8* %246 to i32
  store i32 %247, i32* %20, align 4
  br label %281

248:                                              ; preds = %57
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i64 3
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %248
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %256 = call i32 (%struct.TYPE_11__*, i8*, ...) @event_log_error(%struct.TYPE_11__* %255, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %368

257:                                              ; preds = %248
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i64 3
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i64 3
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %268 = load i8, i8* %14, align 1
  %269 = call i8* @mp_add_cs_buf(%struct.TYPE_11__* %258, i8* %262, i32 %266, %struct.TYPE_12__* %267, i8 signext %268)
  %270 = ptrtoint i8* %269 to i32
  store i32 %270, i32* %20, align 4
  br label %281

271:                                              ; preds = %57
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %274 = load i8, i8* %14, align 1
  %275 = call i8* @mp_add_cs_buf(%struct.TYPE_11__* %272, i8* %18, i32 1, %struct.TYPE_12__* %273, i8 signext %274)
  %276 = ptrtoint i8* %275 to i32
  store i32 %276, i32* %20, align 4
  br label %281

277:                                              ; preds = %57
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %279 = load i8*, i8** %10, align 8
  %280 = call i32 (%struct.TYPE_11__*, i8*, ...) @event_log_error(%struct.TYPE_11__* %278, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %279)
  store i32 -1, i32* %8, align 4
  br label %368

281:                                              ; preds = %271, %257, %234, %211, %188, %165, %151, %137, %123, %109, %95, %81, %67
  %282 = load i32, i32* %20, align 4
  %283 = icmp eq i32 %282, -1
  br i1 %283, label %284, label %285

284:                                              ; preds = %281
  store i32 -1, i32* %8, align 4
  br label %368

285:                                              ; preds = %281
  br label %363

286:                                              ; preds = %43, %33
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @OPTS_TYPE_PT_HEX, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %351

293:                                              ; preds = %286
  %294 = load i64, i64* %17, align 8
  %295 = add i64 %294, 1
  store i64 %295, i64* %17, align 8
  %296 = load i64, i64* %17, align 8
  %297 = load i64, i64* %11, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %303

299:                                              ; preds = %293
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %301 = load i8*, i8** %10, align 8
  %302 = call i32 (%struct.TYPE_11__*, i8*, ...) @event_log_error(%struct.TYPE_11__* %300, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0), i8* %301)
  store i32 -1, i32* %8, align 4
  br label %368

303:                                              ; preds = %293
  %304 = load i8*, i8** %10, align 8
  %305 = load i64, i64* %17, align 8
  %306 = getelementptr inbounds i8, i8* %304, i64 %305
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i32
  %309 = and i32 %308, 255
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %21, align 1
  %311 = load i8, i8* %18, align 1
  %312 = sext i8 %311 to i32
  %313 = call i32 @is_valid_hex_char(i32 %312)
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %320, label %315

315:                                              ; preds = %303
  %316 = load i8, i8* %21, align 1
  %317 = sext i8 %316 to i32
  %318 = call i32 @is_valid_hex_char(i32 %317)
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %315, %303
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %322 = load i8*, i8** %10, align 8
  %323 = call i32 (%struct.TYPE_11__*, i8*, ...) @event_log_error(%struct.TYPE_11__* %321, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %322)
  store i32 -1, i32* %8, align 4
  br label %368

324:                                              ; preds = %315
  store i8 0, i8* %22, align 1
  %325 = load i8, i8* %21, align 1
  %326 = sext i8 %325 to i32
  %327 = call i64 @hex_convert(i32 %326)
  %328 = trunc i64 %327 to i8
  %329 = sext i8 %328 to i32
  %330 = shl i32 %329, 0
  %331 = trunc i32 %330 to i8
  store i8 %331, i8* %22, align 1
  %332 = load i8, i8* %18, align 1
  %333 = sext i8 %332 to i32
  %334 = call i64 @hex_convert(i32 %333)
  %335 = trunc i64 %334 to i8
  %336 = sext i8 %335 to i32
  %337 = shl i32 %336, 4
  %338 = load i8, i8* %22, align 1
  %339 = sext i8 %338 to i32
  %340 = or i32 %339, %337
  %341 = trunc i32 %340 to i8
  store i8 %341, i8* %22, align 1
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %344 = load i8, i8* %14, align 1
  %345 = call i8* @mp_add_cs_buf(%struct.TYPE_11__* %342, i8* %22, i32 1, %struct.TYPE_12__* %343, i8 signext %344)
  %346 = ptrtoint i8* %345 to i32
  store i32 %346, i32* %23, align 4
  %347 = load i32, i32* %23, align 4
  %348 = icmp eq i32 %347, -1
  br i1 %348, label %349, label %350

349:                                              ; preds = %324
  store i32 -1, i32* %8, align 4
  br label %368

350:                                              ; preds = %324
  br label %362

351:                                              ; preds = %286
  %352 = load i8, i8* %18, align 1
  store i8 %352, i8* %24, align 1
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %354 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %355 = load i8, i8* %14, align 1
  %356 = call i8* @mp_add_cs_buf(%struct.TYPE_11__* %353, i8* %24, i32 1, %struct.TYPE_12__* %354, i8 signext %355)
  %357 = ptrtoint i8* %356 to i32
  store i32 %357, i32* %25, align 4
  %358 = load i32, i32* %25, align 4
  %359 = icmp eq i32 %358, -1
  br i1 %359, label %360, label %361

360:                                              ; preds = %351
  store i32 -1, i32* %8, align 4
  br label %368

361:                                              ; preds = %351
  br label %362

362:                                              ; preds = %361, %350
  br label %363

363:                                              ; preds = %362, %285
  br label %364

364:                                              ; preds = %363
  %365 = load i64, i64* %17, align 8
  %366 = add i64 %365, 1
  store i64 %366, i64* %17, align 8
  br label %29

367:                                              ; preds = %29
  store i32 0, i32* %8, align 4
  br label %368

368:                                              ; preds = %367, %360, %349, %320, %299, %284, %277, %254, %231, %208, %185, %53
  %369 = load i32, i32* %8, align 4
  ret i32 %369
}

declare dso_local i32 @event_log_error(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i8* @mp_add_cs_buf(%struct.TYPE_11__*, i8*, i32, %struct.TYPE_12__*, i8 signext) #1

declare dso_local i32 @is_valid_hex_char(i32) #1

declare dso_local i64 @hex_convert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

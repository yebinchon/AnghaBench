; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_mp_gen_css.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_mp_gen_css.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Syntax error in mask: %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Custom-charset 1 is undefined.\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Custom-charset 2 is undefined.\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Custom-charset 3 is undefined.\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Custom-charset 4 is undefined.\00", align 1
@OPTS_TYPE_PT_HEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [76 x i8] c"The hex-charset option expects exactly 2 hexadecimal chars. Failed mask: %s\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Invalid hex character detected in mask %s\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Invalid mask length (0).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i64, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*)* @mp_gen_css to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_gen_css(%struct.TYPE_13__* %0, i8* %1, i64 %2, %struct.TYPE_14__* %3, %struct.TYPE_14__* %4, %struct.TYPE_14__* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %5, %struct.TYPE_14__** %14, align 8
  store i32* %6, i32** %15, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %16, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %32 = call i32 @memset(%struct.TYPE_14__* %31, i32 0, i32 4096)
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  br label %33

33:                                               ; preds = %356, %7
  %34 = load i64, i64* %17, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %361

37:                                               ; preds = %33
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %17, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %19, align 1
  %42 = load i8, i8* %19, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 63
  br i1 %44, label %45, label %283

45:                                               ; preds = %37
  %46 = load i64, i64* %17, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %17, align 8
  %48 = load i64, i64* %17, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 (%struct.TYPE_13__*, i8*, ...) @event_log_error(%struct.TYPE_13__* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %53)
  store i32 -1, i32* %8, align 4
  br label %371

55:                                               ; preds = %45
  %56 = load i8*, i8** %10, align 8
  %57 = load i64, i64* %17, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  store i8 %59, i8* %20, align 1
  %60 = load i8, i8* %20, align 1
  %61 = sext i8 %60 to i32
  store i32 %61, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %62 = load i8, i8* %20, align 1
  %63 = sext i8 %62 to i32
  switch i32 %63, label %274 [
    i32 108, label %64
    i32 117, label %78
    i32 100, label %92
    i32 115, label %106
    i32 97, label %120
    i32 98, label %134
    i32 104, label %148
    i32 72, label %162
    i32 49, label %176
    i32 50, label %199
    i32 51, label %222
    i32 52, label %245
    i32 63, label %268
  ]

64:                                               ; preds = %55
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %75 = load i64, i64* %18, align 8
  %76 = call i8* @mp_add_cs_buf(%struct.TYPE_13__* %65, i32* %69, i32 %73, %struct.TYPE_14__* %74, i64 %75)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %22, align 4
  br label %278

78:                                               ; preds = %55
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i64 1
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %89 = load i64, i64* %18, align 8
  %90 = call i8* @mp_add_cs_buf(%struct.TYPE_13__* %79, i32* %83, i32 %87, %struct.TYPE_14__* %88, i64 %89)
  %91 = ptrtoint i8* %90 to i32
  store i32 %91, i32* %22, align 4
  br label %278

92:                                               ; preds = %55
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i64 2
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i64 2
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %103 = load i64, i64* %18, align 8
  %104 = call i8* @mp_add_cs_buf(%struct.TYPE_13__* %93, i32* %97, i32 %101, %struct.TYPE_14__* %102, i64 %103)
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* %22, align 4
  br label %278

106:                                              ; preds = %55
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i64 3
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i64 3
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %117 = load i64, i64* %18, align 8
  %118 = call i8* @mp_add_cs_buf(%struct.TYPE_13__* %107, i32* %111, i32 %115, %struct.TYPE_14__* %116, i64 %117)
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* %22, align 4
  br label %278

120:                                              ; preds = %55
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i64 4
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i64 4
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %131 = load i64, i64* %18, align 8
  %132 = call i8* @mp_add_cs_buf(%struct.TYPE_13__* %121, i32* %125, i32 %129, %struct.TYPE_14__* %130, i64 %131)
  %133 = ptrtoint i8* %132 to i32
  store i32 %133, i32* %22, align 4
  br label %278

134:                                              ; preds = %55
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i64 5
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i64 5
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %145 = load i64, i64* %18, align 8
  %146 = call i8* @mp_add_cs_buf(%struct.TYPE_13__* %135, i32* %139, i32 %143, %struct.TYPE_14__* %144, i64 %145)
  %147 = ptrtoint i8* %146 to i32
  store i32 %147, i32* %22, align 4
  br label %278

148:                                              ; preds = %55
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i64 6
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i64 6
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %159 = load i64, i64* %18, align 8
  %160 = call i8* @mp_add_cs_buf(%struct.TYPE_13__* %149, i32* %153, i32 %157, %struct.TYPE_14__* %158, i64 %159)
  %161 = ptrtoint i8* %160 to i32
  store i32 %161, i32* %22, align 4
  br label %278

162:                                              ; preds = %55
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i64 7
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i64 7
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %173 = load i64, i64* %18, align 8
  %174 = call i8* @mp_add_cs_buf(%struct.TYPE_13__* %163, i32* %167, i32 %171, %struct.TYPE_14__* %172, i64 %173)
  %175 = ptrtoint i8* %174 to i32
  store i32 %175, i32* %22, align 4
  br label %278

176:                                              ; preds = %55
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %184 = call i32 (%struct.TYPE_13__*, i8*, ...) @event_log_error(%struct.TYPE_13__* %183, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %371

185:                                              ; preds = %176
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i64 0
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i64 0
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %196 = load i64, i64* %18, align 8
  %197 = call i8* @mp_add_cs_buf(%struct.TYPE_13__* %186, i32* %190, i32 %194, %struct.TYPE_14__* %195, i64 %196)
  %198 = ptrtoint i8* %197 to i32
  store i32 %198, i32* %22, align 4
  br label %278

199:                                              ; preds = %55
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i64 1
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %199
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %207 = call i32 (%struct.TYPE_13__*, i8*, ...) @event_log_error(%struct.TYPE_13__* %206, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %371

208:                                              ; preds = %199
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i64 1
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i64 1
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %219 = load i64, i64* %18, align 8
  %220 = call i8* @mp_add_cs_buf(%struct.TYPE_13__* %209, i32* %213, i32 %217, %struct.TYPE_14__* %218, i64 %219)
  %221 = ptrtoint i8* %220 to i32
  store i32 %221, i32* %22, align 4
  br label %278

222:                                              ; preds = %55
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i64 2
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %222
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %230 = call i32 (%struct.TYPE_13__*, i8*, ...) @event_log_error(%struct.TYPE_13__* %229, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %371

231:                                              ; preds = %222
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i64 2
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i64 2
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %242 = load i64, i64* %18, align 8
  %243 = call i8* @mp_add_cs_buf(%struct.TYPE_13__* %232, i32* %236, i32 %240, %struct.TYPE_14__* %241, i64 %242)
  %244 = ptrtoint i8* %243 to i32
  store i32 %244, i32* %22, align 4
  br label %278

245:                                              ; preds = %55
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i64 3
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %245
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %253 = call i32 (%struct.TYPE_13__*, i8*, ...) @event_log_error(%struct.TYPE_13__* %252, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %371

254:                                              ; preds = %245
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i64 3
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i64 3
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %265 = load i64, i64* %18, align 8
  %266 = call i8* @mp_add_cs_buf(%struct.TYPE_13__* %255, i32* %259, i32 %263, %struct.TYPE_14__* %264, i64 %265)
  %267 = ptrtoint i8* %266 to i32
  store i32 %267, i32* %22, align 4
  br label %278

268:                                              ; preds = %55
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %271 = load i64, i64* %18, align 8
  %272 = call i8* @mp_add_cs_buf(%struct.TYPE_13__* %269, i32* %21, i32 1, %struct.TYPE_14__* %270, i64 %271)
  %273 = ptrtoint i8* %272 to i32
  store i32 %273, i32* %22, align 4
  br label %278

274:                                              ; preds = %55
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %276 = load i8*, i8** %10, align 8
  %277 = call i32 (%struct.TYPE_13__*, i8*, ...) @event_log_error(%struct.TYPE_13__* %275, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %276)
  store i32 -1, i32* %8, align 4
  br label %371

278:                                              ; preds = %268, %254, %231, %208, %185, %162, %148, %134, %120, %106, %92, %78, %64
  %279 = load i32, i32* %22, align 4
  %280 = icmp eq i32 %279, -1
  br i1 %280, label %281, label %282

281:                                              ; preds = %278
  store i32 -1, i32* %8, align 4
  br label %371

282:                                              ; preds = %278
  br label %355

283:                                              ; preds = %37
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @OPTS_TYPE_PT_HEX, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %342

290:                                              ; preds = %283
  %291 = load i64, i64* %17, align 8
  %292 = add i64 %291, 1
  store i64 %292, i64* %17, align 8
  %293 = load i64, i64* %17, align 8
  %294 = load i64, i64* %11, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %290
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %298 = load i8*, i8** %10, align 8
  %299 = call i32 (%struct.TYPE_13__*, i8*, ...) @event_log_error(%struct.TYPE_13__* %297, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0), i8* %298)
  store i32 -1, i32* %8, align 4
  br label %371

300:                                              ; preds = %290
  %301 = load i8*, i8** %10, align 8
  %302 = load i64, i64* %17, align 8
  %303 = getelementptr inbounds i8, i8* %301, i64 %302
  %304 = load i8, i8* %303, align 1
  store i8 %304, i8* %23, align 1
  %305 = load i8, i8* %19, align 1
  %306 = sext i8 %305 to i32
  %307 = call i32 @is_valid_hex_char(i32 %306)
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %314, label %309

309:                                              ; preds = %300
  %310 = load i8, i8* %23, align 1
  %311 = sext i8 %310 to i32
  %312 = call i32 @is_valid_hex_char(i32 %311)
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %309, %300
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %316 = load i8*, i8** %10, align 8
  %317 = call i32 (%struct.TYPE_13__*, i8*, ...) @event_log_error(%struct.TYPE_13__* %315, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %316)
  store i32 -1, i32* %8, align 4
  br label %371

318:                                              ; preds = %309
  store i32 0, i32* %24, align 4
  %319 = load i8, i8* %23, align 1
  %320 = sext i8 %319 to i32
  %321 = call i64 @hex_convert(i32 %320)
  %322 = trunc i64 %321 to i32
  %323 = shl i32 %322, 0
  %324 = load i32, i32* %24, align 4
  %325 = or i32 %324, %323
  store i32 %325, i32* %24, align 4
  %326 = load i8, i8* %19, align 1
  %327 = sext i8 %326 to i32
  %328 = call i64 @hex_convert(i32 %327)
  %329 = trunc i64 %328 to i32
  %330 = shl i32 %329, 4
  %331 = load i32, i32* %24, align 4
  %332 = or i32 %331, %330
  store i32 %332, i32* %24, align 4
  %333 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %335 = load i64, i64* %18, align 8
  %336 = call i8* @mp_add_cs_buf(%struct.TYPE_13__* %333, i32* %24, i32 1, %struct.TYPE_14__* %334, i64 %335)
  %337 = ptrtoint i8* %336 to i32
  store i32 %337, i32* %25, align 4
  %338 = load i32, i32* %25, align 4
  %339 = icmp eq i32 %338, -1
  br i1 %339, label %340, label %341

340:                                              ; preds = %318
  store i32 -1, i32* %8, align 4
  br label %371

341:                                              ; preds = %318
  br label %354

342:                                              ; preds = %283
  %343 = load i8, i8* %19, align 1
  %344 = sext i8 %343 to i32
  store i32 %344, i32* %26, align 4
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %347 = load i64, i64* %18, align 8
  %348 = call i8* @mp_add_cs_buf(%struct.TYPE_13__* %345, i32* %26, i32 1, %struct.TYPE_14__* %346, i64 %347)
  %349 = ptrtoint i8* %348 to i32
  store i32 %349, i32* %27, align 4
  %350 = load i32, i32* %27, align 4
  %351 = icmp eq i32 %350, -1
  br i1 %351, label %352, label %353

352:                                              ; preds = %342
  store i32 -1, i32* %8, align 4
  br label %371

353:                                              ; preds = %342
  br label %354

354:                                              ; preds = %353, %341
  br label %355

355:                                              ; preds = %354, %282
  br label %356

356:                                              ; preds = %355
  %357 = load i64, i64* %17, align 8
  %358 = add i64 %357, 1
  store i64 %358, i64* %17, align 8
  %359 = load i64, i64* %18, align 8
  %360 = add i64 %359, 1
  store i64 %360, i64* %18, align 8
  br label %33

361:                                              ; preds = %33
  %362 = load i64, i64* %18, align 8
  %363 = icmp eq i64 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %361
  %365 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %366 = call i32 (%struct.TYPE_13__*, i8*, ...) @event_log_error(%struct.TYPE_13__* %365, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %371

367:                                              ; preds = %361
  %368 = load i64, i64* %18, align 8
  %369 = trunc i64 %368 to i32
  %370 = load i32*, i32** %15, align 8
  store i32 %369, i32* %370, align 4
  store i32 0, i32* %8, align 4
  br label %371

371:                                              ; preds = %367, %364, %352, %340, %314, %296, %281, %274, %251, %228, %205, %182, %51
  %372 = load i32, i32* %8, align 4
  ret i32 %372
}

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @event_log_error(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i8* @mp_add_cs_buf(%struct.TYPE_13__*, i32*, i32, %struct.TYPE_14__*, i64) #1

declare dso_local i32 @is_valid_hex_char(i32) #1

declare dso_local i64 @hex_convert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

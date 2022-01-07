; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_mask_ctx_parse_maskfile.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_mask_ctx_parse_maskfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i32, i32, i8*, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i8* }

@MAX_MFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Invalid line '%s' in maskfile.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mask_ctx_parse_maskfile(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %4, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %5, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %262

26:                                               ; preds = %1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %262

32:                                               ; preds = %26
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %6, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 2
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 3
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 4
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  store i64 0, i64* %7, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i64 @strlen(i8* %54)
  store i64 %55, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %56

56:                                               ; preds = %134, %32
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %137

60:                                               ; preds = %56
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 %62
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %12, align 8
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %82

66:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  store i8 %70, i8* %77, align 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %79, align 8
  br label %133

82:                                               ; preds = %60
  %83 = load i8*, i8** %8, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 92
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 1, i32* %10, align 4
  br label %132

90:                                               ; preds = %82
  %91 = load i8*, i8** %8, align 8
  %92 = load i64, i64* %11, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 44
  br i1 %96, label %97, label %115

97:                                               ; preds = %90
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  store i8 0, i8* %104, align 1
  %105 = load i64, i64* %7, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %7, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* @MAX_MFS, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %97
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @event_log_error(%struct.TYPE_11__* %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %112)
  store i32 -1, i32* %2, align 4
  br label %262

114:                                              ; preds = %97
  br label %131

115:                                              ; preds = %90
  %116 = load i8*, i8** %8, align 8
  %117 = load i64, i64* %11, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  store i8 %119, i8* %126, align 1
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %128, align 8
  br label %131

131:                                              ; preds = %115, %114
  br label %132

132:                                              ; preds = %131, %89
  br label %133

133:                                              ; preds = %132, %66
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %11, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %11, align 8
  br label %56

137:                                              ; preds = %56
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %139 = load i64, i64* %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i64 %139
  store %struct.TYPE_9__* %140, %struct.TYPE_9__** %13, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  store i8 0, i8* %147, align 1
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  store i8* null, i8** %149, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  store i8* null, i8** %151, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  store i8* null, i8** %153, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 3
  store i8* null, i8** %155, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @mp_reset_usr(i32 %158, i32 0)
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @mp_reset_usr(i32 %162, i32 1)
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @mp_reset_usr(i32 %166, i32 2)
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @mp_reset_usr(i32 %170, i32 3)
  store i64 0, i64* %14, align 8
  br label %172

172:                                              ; preds = %251, %137
  %173 = load i64, i64* %14, align 8
  %174 = load i64, i64* %7, align 8
  %175 = icmp ult i64 %173, %174
  br i1 %175, label %176, label %254

176:                                              ; preds = %172
  %177 = load i64, i64* %14, align 8
  switch i64 %177, label %250 [
    i64 0, label %178
    i64 1, label %196
    i64 2, label %214
    i64 3, label %232
  ]

178:                                              ; preds = %176
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i64 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @mp_setup_usr(%struct.TYPE_11__* %185, i32 %188, i32 %191, i8* %194, i32 0)
  br label %250

196:                                              ; preds = %176
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i64 1
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 1
  store i8* %200, i8** %202, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @mp_setup_usr(%struct.TYPE_11__* %203, i32 %206, i32 %209, i8* %212, i32 1)
  br label %250

214:                                              ; preds = %176
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i64 2
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 2
  store i8* %218, i8** %220, align 8
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 2
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @mp_setup_usr(%struct.TYPE_11__* %221, i32 %224, i32 %227, i8* %230, i32 2)
  br label %250

232:                                              ; preds = %176
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i64 3
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 1
  %236 = load i8*, i8** %235, align 8
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 3
  store i8* %236, i8** %238, align 8
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 3
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @mp_setup_usr(%struct.TYPE_11__* %239, i32 %242, i32 %245, i8* %248, i32 3)
  br label %250

250:                                              ; preds = %176, %232, %214, %196, %178
  br label %251

251:                                              ; preds = %250
  %252 = load i64, i64* %14, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %14, align 8
  br label %172

254:                                              ; preds = %172
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %256 = load i64, i64* %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 1
  %259 = load i8*, i8** %258, align 8
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 2
  store i8* %259, i8** %261, align 8
  store i32 0, i32* %2, align 4
  br label %262

262:                                              ; preds = %254, %110, %31, %25
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @event_log_error(%struct.TYPE_11__*, i8*, i8*) #1

declare dso_local i32 @mp_reset_usr(i32, i32) #1

declare dso_local i32 @mp_setup_usr(%struct.TYPE_11__*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

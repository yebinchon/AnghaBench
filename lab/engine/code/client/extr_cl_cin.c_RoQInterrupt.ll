; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_RoQInterrupt.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_RoQInterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64, i64* }
%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i32, i32, i8, i8, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32 (i32*, i32*)*, i32*, i32, i32 (i32*, i32*)*, i32 }

@currentHandle = common dso_local global i64 0, align 8
@cin = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@cinTable = common dso_local global %struct.TYPE_3__* null, align 8
@qfalse = common dso_local global i64 0, align 8
@FMV_EOF = common dso_local global i64 0, align 8
@FMV_IDLE = common dso_local global i8* null, align 8
@qtrue = common dso_local global i32 0, align 4
@s_soundtime = common dso_local global i32 0, align 4
@s_rawend = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"roq_size>65536||roq_id==0x1084\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @RoQInterrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RoQInterrupt() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [32768 x i16], align 16
  %3 = alloca i32, align 4
  %4 = load i64, i64* @currentHandle, align 8
  %5 = icmp ult i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %515

7:                                                ; preds = %0
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 0), align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %10 = load i64, i64* @currentHandle, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %16 = load i64, i64* @currentHandle, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 24
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @FS_Read(i32* %8, i32 %14, i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %22 = load i64, i64* @currentHandle, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %27 = load i64, i64* @currentHandle, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %25, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %7
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %34 = load i64, i64* @currentHandle, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @qfalse, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %32
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %42 = load i64, i64* @currentHandle, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 13
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 (...) @RoQReset()
  br label %55

49:                                               ; preds = %40
  %50 = load i64, i64* @FMV_EOF, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %52 = load i64, i64* @currentHandle, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  store i64 %50, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %47
  br label %63

56:                                               ; preds = %32
  %57 = load i8*, i8** @FMV_IDLE, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %60 = load i64, i64* @currentHandle, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  store i64 %58, i64* %62, align 8
  br label %63

63:                                               ; preds = %56, %55
  br label %515

64:                                               ; preds = %7
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 0), align 8
  store i32* %65, i32** %1, align 8
  br label %66

66:                                               ; preds = %492, %64
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %68 = load i64, i64* @currentHandle, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %332 [
    i32 130, label %72
    i32 135, label %204
    i32 129, label %213
    i32 128, label %240
    i32 132, label %279
    i32 134, label %312
    i32 133, label %326
    i32 131, label %331
  ]

72:                                               ; preds = %66
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %74 = load i64, i64* @currentHandle, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %125

80:                                               ; preds = %72
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %82 = load i64, i64* @currentHandle, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 21
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %89 = load i64, i64* @currentHandle, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 22
  store i32 %87, i32* %91, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %93 = load i64, i64* @currentHandle, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 7
  %96 = load i8, i8* %95, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %98 = load i64, i64* @currentHandle, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 8
  %101 = load i8, i8* %100, align 1
  %102 = call i32 @RoQPrepMcomp(i8 signext %96, i8 signext %101)
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %104 = load i64, i64* @currentHandle, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 23
  %107 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %106, align 8
  %108 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 2), align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 1
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i32*
  %112 = load i32*, i32** %1, align 8
  %113 = call i32 %107(i32* %111, i32* %112)
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 1), align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %116 = load i64, i64* @currentHandle, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 18
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %114, %119
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %122 = load i64, i64* @currentHandle, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 19
  store i64 %120, i64* %124, align 8
  br label %164

125:                                              ; preds = %72
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %127 = load i64, i64* @currentHandle, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 21
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %134 = load i64, i64* @currentHandle, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 22
  store i32 %132, i32* %136, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %138 = load i64, i64* @currentHandle, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 7
  %141 = load i8, i8* %140, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %143 = load i64, i64* @currentHandle, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 8
  %146 = load i8, i8* %145, align 1
  %147 = call i32 @RoQPrepMcomp(i8 signext %141, i8 signext %146)
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %149 = load i64, i64* @currentHandle, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 20
  %152 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %151, align 8
  %153 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 2), align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 0
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i32*
  %157 = load i32*, i32** %1, align 8
  %158 = call i32 %152(i32* %156, i32* %157)
  %159 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 1), align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %161 = load i64, i64* @currentHandle, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 19
  store i64 %159, i64* %163, align 8
  br label %164

164:                                              ; preds = %125, %80
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %166 = load i64, i64* @currentHandle, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %192

171:                                              ; preds = %164
  %172 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 1), align 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %174 = load i64, i64* @currentHandle, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 18
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %172, %177
  %179 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 1), align 8
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %181 = load i64, i64* @currentHandle, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 9
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %186 = load i64, i64* @currentHandle, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 10
  %189 = load i32, i32* %188, align 8
  %190 = mul nsw i32 %184, %189
  %191 = call i32 @Com_Memcpy(i64 %178, i64 %179, i32 %190)
  br label %192

192:                                              ; preds = %171, %164
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %194 = load i64, i64* @currentHandle, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 4
  %199 = load i32, i32* @qtrue, align 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %201 = load i64, i64* @currentHandle, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 17
  store i32 %199, i32* %203, align 4
  br label %338

204:                                              ; preds = %66
  %205 = load i32*, i32** %1, align 8
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %207 = load i64, i64* @currentHandle, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 11
  %210 = load i32, i32* %209, align 4
  %211 = trunc i32 %210 to i16
  %212 = call i32 @decodeCodeBook(i32* %205, i16 zeroext %211)
  br label %338

213:                                              ; preds = %66
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %215 = load i64, i64* @currentHandle, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 16
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %239, label %220

220:                                              ; preds = %213
  %221 = load i32*, i32** %1, align 8
  %222 = getelementptr inbounds [32768 x i16], [32768 x i16]* %2, i64 0, i64 0
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %224 = load i64, i64* @currentHandle, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %229 = load i64, i64* @currentHandle, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 11
  %232 = load i32, i32* %231, align 4
  %233 = trunc i32 %232 to i16
  %234 = call i32 @RllDecodeMonoToStereo(i32* %221, i16* %222, i32 %227, i32 0, i16 zeroext %233)
  store i32 %234, i32* %3, align 4
  %235 = load i32, i32* %3, align 4
  %236 = getelementptr inbounds [32768 x i16], [32768 x i16]* %2, i64 0, i64 0
  %237 = bitcast i16* %236 to i32*
  %238 = call i32 @S_RawSamples(i32 0, i32 %235, i32 22050, i32 2, i32 1, i32* %237, float 1.000000e+00, i32 -1)
  br label %239

239:                                              ; preds = %220, %213
  br label %338

240:                                              ; preds = %66
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %242 = load i64, i64* @currentHandle, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 16
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %278, label %247

247:                                              ; preds = %240
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %249 = load i64, i64* @currentHandle, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %252, -1
  br i1 %253, label %254, label %259

254:                                              ; preds = %247
  %255 = call i32 (...) @S_Update()
  %256 = load i32, i32* @s_soundtime, align 4
  %257 = load i32*, i32** @s_rawend, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  store i32 %256, i32* %258, align 4
  br label %259

259:                                              ; preds = %254, %247
  %260 = load i32*, i32** %1, align 8
  %261 = getelementptr inbounds [32768 x i16], [32768 x i16]* %2, i64 0, i64 0
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %263 = load i64, i64* @currentHandle, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %268 = load i64, i64* @currentHandle, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 11
  %271 = load i32, i32* %270, align 4
  %272 = trunc i32 %271 to i16
  %273 = call i32 @RllDecodeStereoToStereo(i32* %260, i16* %261, i32 %266, i32 0, i16 zeroext %272)
  store i32 %273, i32* %3, align 4
  %274 = load i32, i32* %3, align 4
  %275 = getelementptr inbounds [32768 x i16], [32768 x i16]* %2, i64 0, i64 0
  %276 = bitcast i16* %275 to i32*
  %277 = call i32 @S_RawSamples(i32 0, i32 %274, i32 22050, i32 2, i32 2, i32* %276, float 1.000000e+00, i32 -1)
  br label %278

278:                                              ; preds = %259, %240
  br label %338

279:                                              ; preds = %66
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %281 = load i64, i64* @currentHandle, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 4
  %285 = icmp eq i32 %284, -1
  br i1 %285, label %286, label %299

286:                                              ; preds = %279
  %287 = load i32*, i32** %1, align 8
  %288 = call i32 @readQuadInfo(i32* %287)
  %289 = call i32 @setupQuad(i32 0, i32 0)
  %290 = call i32 (...) @CL_ScaledMilliseconds()
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %292 = load i64, i64* @currentHandle, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 14
  store i32 %290, i32* %294, align 8
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %296 = load i64, i64* @currentHandle, align 8
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 15
  store i32 %290, i32* %298, align 4
  br label %299

299:                                              ; preds = %286, %279
  %300 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %301 = load i64, i64* @currentHandle, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 4
  %305 = icmp ne i32 %304, 1
  br i1 %305, label %306, label %311

306:                                              ; preds = %299
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %308 = load i64, i64* @currentHandle, align 8
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 6
  store i32 0, i32* %310, align 4
  br label %311

311:                                              ; preds = %306, %299
  br label %338

312:                                              ; preds = %66
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %314 = load i64, i64* @currentHandle, align 8
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 11
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %319 = load i64, i64* @currentHandle, align 8
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 12
  store i32 %317, i32* %321, align 8
  %322 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %323 = load i64, i64* @currentHandle, align 8
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i32 0, i32 0
  store i32 0, i32* %325, align 8
  br label %338

326:                                              ; preds = %66
  %327 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %328 = load i64, i64* @currentHandle, align 8
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 0
  store i32 0, i32* %330, align 8
  br label %338

331:                                              ; preds = %66
  br label %338

332:                                              ; preds = %66
  %333 = load i64, i64* @FMV_EOF, align 8
  %334 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %335 = load i64, i64* @currentHandle, align 8
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i32 0, i32 4
  store i64 %333, i64* %337, align 8
  br label %338

338:                                              ; preds = %332, %331, %326, %312, %311, %278, %239, %204, %192
  %339 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %340 = load i64, i64* @currentHandle, align 8
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %345 = load i64, i64* @currentHandle, align 8
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %344, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = icmp sge i64 %343, %348
  br i1 %349, label %350, label %382

350:                                              ; preds = %338
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %352 = load i64, i64* @currentHandle, align 8
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %353, i32 0, i32 3
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @qfalse, align 8
  %357 = icmp eq i64 %355, %356
  br i1 %357, label %358, label %374

358:                                              ; preds = %350
  %359 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %360 = load i64, i64* @currentHandle, align 8
  %361 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %359, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %361, i32 0, i32 13
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %358
  %366 = call i32 (...) @RoQReset()
  br label %373

367:                                              ; preds = %358
  %368 = load i64, i64* @FMV_EOF, align 8
  %369 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %370 = load i64, i64* @currentHandle, align 8
  %371 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 4
  store i64 %368, i64* %372, align 8
  br label %373

373:                                              ; preds = %367, %365
  br label %381

374:                                              ; preds = %350
  %375 = load i8*, i8** @FMV_IDLE, align 8
  %376 = ptrtoint i8* %375 to i64
  %377 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %378 = load i64, i64* @currentHandle, align 8
  %379 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %377, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %379, i32 0, i32 4
  store i64 %376, i64* %380, align 8
  br label %381

381:                                              ; preds = %374, %373
  br label %515

382:                                              ; preds = %338
  %383 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %384 = load i64, i64* @currentHandle, align 8
  %385 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = load i32*, i32** %1, align 8
  %389 = sext i32 %387 to i64
  %390 = getelementptr inbounds i32, i32* %388, i64 %389
  store i32* %390, i32** %1, align 8
  %391 = load i32*, i32** %1, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 0
  %393 = load i32, i32* %392, align 4
  %394 = load i32*, i32** %1, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 1
  %396 = load i32, i32* %395, align 4
  %397 = mul nsw i32 %396, 256
  %398 = add nsw i32 %393, %397
  %399 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %400 = load i64, i64* @currentHandle, align 8
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %401, i32 0, i32 5
  store i32 %398, i32* %402, align 8
  %403 = load i32*, i32** %1, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 2
  %405 = load i32, i32* %404, align 4
  %406 = load i32*, i32** %1, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 3
  %408 = load i32, i32* %407, align 4
  %409 = mul nsw i32 %408, 256
  %410 = add nsw i32 %405, %409
  %411 = load i32*, i32** %1, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 4
  %413 = load i32, i32* %412, align 4
  %414 = mul nsw i32 %413, 65536
  %415 = add nsw i32 %410, %414
  %416 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %417 = load i64, i64* @currentHandle, align 8
  %418 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %416, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %418, i32 0, i32 0
  store i32 %415, i32* %419, align 8
  %420 = load i32*, i32** %1, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 6
  %422 = load i32, i32* %421, align 4
  %423 = load i32*, i32** %1, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 7
  %425 = load i32, i32* %424, align 4
  %426 = mul nsw i32 %425, 256
  %427 = add nsw i32 %422, %426
  %428 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %429 = load i64, i64* @currentHandle, align 8
  %430 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %428, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %430, i32 0, i32 11
  store i32 %427, i32* %431, align 4
  %432 = load i32*, i32** %1, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 7
  %434 = load i32, i32* %433, align 4
  %435 = trunc i32 %434 to i8
  %436 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %437 = load i64, i64* @currentHandle, align 8
  %438 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %436, i64 %437
  %439 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %438, i32 0, i32 7
  store i8 %435, i8* %439, align 8
  %440 = load i32*, i32** %1, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 6
  %442 = load i32, i32* %441, align 4
  %443 = trunc i32 %442 to i8
  %444 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %445 = load i64, i64* @currentHandle, align 8
  %446 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %444, i64 %445
  %447 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %446, i32 0, i32 8
  store i8 %443, i8* %447, align 1
  %448 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %449 = load i64, i64* @currentHandle, align 8
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %448, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = icmp sgt i32 %452, 65536
  br i1 %453, label %461, label %454

454:                                              ; preds = %382
  %455 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %456 = load i64, i64* @currentHandle, align 8
  %457 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %455, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %457, i32 0, i32 5
  %459 = load i32, i32* %458, align 8
  %460 = icmp eq i32 %459, 4228
  br i1 %460, label %461, label %477

461:                                              ; preds = %454, %382
  %462 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %463 = load i64, i64* @FMV_EOF, align 8
  %464 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %465 = load i64, i64* @currentHandle, align 8
  %466 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %464, i64 %465
  %467 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %466, i32 0, i32 4
  store i64 %463, i64* %467, align 8
  %468 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %469 = load i64, i64* @currentHandle, align 8
  %470 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %468, i64 %469
  %471 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %470, i32 0, i32 13
  %472 = load i64, i64* %471, align 8
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %476

474:                                              ; preds = %461
  %475 = call i32 (...) @RoQReset()
  br label %476

476:                                              ; preds = %474, %461
  br label %515

477:                                              ; preds = %454
  %478 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %479 = load i64, i64* @currentHandle, align 8
  %480 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %478, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %480, i32 0, i32 12
  %482 = load i32, i32* %481, align 8
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %501

484:                                              ; preds = %477
  %485 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %486 = load i64, i64* @currentHandle, align 8
  %487 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %485, i64 %486
  %488 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %487, i32 0, i32 4
  %489 = load i64, i64* %488, align 8
  %490 = load i64, i64* @FMV_EOF, align 8
  %491 = icmp ne i64 %489, %490
  br i1 %491, label %492, label %501

492:                                              ; preds = %484
  %493 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %494 = load i64, i64* @currentHandle, align 8
  %495 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %493, i64 %494
  %496 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %495, i32 0, i32 12
  %497 = load i32, i32* %496, align 8
  %498 = add nsw i32 %497, -1
  store i32 %498, i32* %496, align 8
  %499 = load i32*, i32** %1, align 8
  %500 = getelementptr inbounds i32, i32* %499, i64 8
  store i32* %500, i32** %1, align 8
  br label %66

501:                                              ; preds = %484, %477
  %502 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %503 = load i64, i64* @currentHandle, align 8
  %504 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %502, i64 %503
  %505 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 8
  %507 = add nsw i32 %506, 8
  %508 = sext i32 %507 to i64
  %509 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %510 = load i64, i64* @currentHandle, align 8
  %511 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %509, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %511, i32 0, i32 1
  %513 = load i64, i64* %512, align 8
  %514 = add nsw i64 %513, %508
  store i64 %514, i64* %512, align 8
  br label %515

515:                                              ; preds = %501, %476, %381, %63, %6
  ret void
}

declare dso_local i32 @FS_Read(i32*, i32, i32) #1

declare dso_local i32 @RoQReset(...) #1

declare dso_local i32 @RoQPrepMcomp(i8 signext, i8 signext) #1

declare dso_local i32 @Com_Memcpy(i64, i64, i32) #1

declare dso_local i32 @decodeCodeBook(i32*, i16 zeroext) #1

declare dso_local i32 @RllDecodeMonoToStereo(i32*, i16*, i32, i32, i16 zeroext) #1

declare dso_local i32 @S_RawSamples(i32, i32, i32, i32, i32, i32*, float, i32) #1

declare dso_local i32 @S_Update(...) #1

declare dso_local i32 @RllDecodeStereoToStereo(i32*, i16*, i32, i32, i16 zeroext) #1

declare dso_local i32 @readQuadInfo(i32*) #1

declare dso_local i32 @setupQuad(i32, i32) #1

declare dso_local i32 @CL_ScaledMilliseconds(...) #1

declare dso_local i32 @Com_DPrintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

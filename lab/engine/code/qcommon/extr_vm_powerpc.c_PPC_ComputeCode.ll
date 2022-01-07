; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_powerpc.c_PPC_ComputeCode.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_powerpc.c_PPC_ComputeCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i64, i32, i64, i64, %struct.TYPE_18__*, %struct.TYPE_18__*, i32*, i32, i8*, %struct.TYPE_18__*, i32* }
%struct.TYPE_17__ = type { i64*, i32, i32, i32, i32*, i32, i64, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64*, i32, i32 }
%struct.TYPE_16__ = type { i8*, i64, i64, i32 }

@di_first = common dso_local global %struct.TYPE_18__* null, align 8
@data_acc = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Not enough memory\00", align 1
@data = common dso_local global %struct.TYPE_17__* null, align 8
@iNOP = common dso_local global i32 0, align 4
@FALSE_ICOUNT = common dso_local global i64 0, align 8
@di_pointers = common dso_local global i8** null, align 8
@sj_first = common dso_local global %struct.TYPE_18__* null, align 8
@branchExtLink = common dso_local global i32 0, align 4
@iBCL = common dso_local global i32 0, align 4
@iBC = common dso_local global i32 0, align 4
@iBL = common dso_local global i32 0, align 4
@iB = common dso_local global i32 0, align 4
@branchAlways = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"additional space for long jump not prepared\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"unrecognized branch type\00", align 1
@VM_AsmCall = common dso_local global i64 0, align 8
@VM_BlockCopy = common dso_local global i64 0, align 8
@data_first = common dso_local global %struct.TYPE_18__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @PPC_ComputeCode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PPC_ComputeCode(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca %struct.TYPE_18__*, align 8
  %21 = alloca %struct.TYPE_18__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** @di_first, align 8
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %3, align 8
  store i64 0, i64* %4, align 8
  br label %25

25:                                               ; preds = %30, %1
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %3, align 8
  %29 = icmp ne %struct.TYPE_18__* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %4, align 8
  br label %25

36:                                               ; preds = %25
  %37 = load i32, i32* @data_acc, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = add i64 72, %39
  %41 = load i64, i64* %4, align 8
  %42 = mul i64 8, %41
  %43 = add i64 %40, %42
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i32, i32* @PROT_READ, align 4
  %46 = load i32, i32* @PROT_WRITE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @MAP_SHARED, align 4
  %49 = load i32, i32* @MAP_ANONYMOUS, align 4
  %50 = or i32 %48, %49
  %51 = call i8* @mmap(i32* null, i64 %44, i32 %47, i32 %50, i32 -1, i32 0)
  store i8* %51, i8** %6, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** @MAP_FAILED, align 8
  %54 = icmp eq i8* %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %36
  %56 = call i32 @DIE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %36
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** @data, align 8
  %60 = load i32, i32* @data_acc, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i64 %61
  %63 = call i32 @VM_Data_Offset(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %62)
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %58, i64 %64
  %66 = bitcast i8* %65 to i64*
  store i64* %66, i64** %8, align 8
  store i64* %66, i64** %7, align 8
  %67 = load i32, i32* @iNOP, align 4
  %68 = call i64 (i32, ...) @IN(i32 %67)
  store i64 %68, i64* %9, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** @di_first, align 8
  store %struct.TYPE_18__* %69, %struct.TYPE_18__** %3, align 8
  br label %70

70:                                               ; preds = %146, %57
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 7
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  store %struct.TYPE_18__* %73, %struct.TYPE_18__** %3, align 8
  %74 = icmp ne %struct.TYPE_18__* %73, null
  br i1 %74, label %75, label %147

75:                                               ; preds = %70
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @FALSE_ICOUNT, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %75
  %83 = load i8**, i8*** @di_pointers, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds i8*, i8** %83, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load i64*, i64** %7, align 8
  %90 = bitcast i64* %89 to i8*
  %91 = load i8**, i8*** @di_pointers, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds i8*, i8** %91, i64 %92
  store i8* %90, i8** %93, align 8
  br label %94

94:                                               ; preds = %88, %82
  br label %95

95:                                               ; preds = %94, %75
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 6
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  %99 = icmp eq %struct.TYPE_18__* %98, null
  br i1 %99, label %100, label %117

100:                                              ; preds = %95
  %101 = load i64*, i64** %7, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 12
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = mul i64 %108, 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @memcpy(i64* %101, i32* %105, i32 %110)
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %7, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 %114
  store i64* %116, i64** %7, align 8
  br label %146

117:                                              ; preds = %95
  store i64 0, i64* %11, align 8
  br label %118

118:                                              ; preds = %129, %117
  %119 = load i64, i64* %11, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ult i64 %119, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %118
  %125 = load i64, i64* %9, align 8
  %126 = load i64*, i64** %7, align 8
  %127 = load i64, i64* %11, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  store i64 %125, i64* %128, align 8
  br label %129

129:                                              ; preds = %124
  %130 = load i64, i64* %11, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %11, align 8
  br label %118

132:                                              ; preds = %118
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64*, i64** %7, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 %135
  store i64* %137, i64** %7, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 6
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %139, align 8
  store %struct.TYPE_18__* %140, %struct.TYPE_18__** %12, align 8
  %141 = load i64*, i64** %7, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 -1
  %143 = bitcast i64* %142 to i8*
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 10
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %132, %100
  br label %70

147:                                              ; preds = %70
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** @sj_first, align 8
  store %struct.TYPE_18__* %148, %struct.TYPE_18__** %13, align 8
  br label %149

149:                                              ; preds = %240, %223, %188, %147
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 11
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %151, align 8
  store %struct.TYPE_18__* %152, %struct.TYPE_18__** %13, align 8
  %153 = icmp ne %struct.TYPE_18__* %152, null
  br i1 %153, label %154, label %249

154:                                              ; preds = %149
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 10
  %157 = load i8*, i8** %156, align 8
  %158 = bitcast i8* %157 to i64*
  store i64* %158, i64** %14, align 8
  %159 = load i8**, i8*** @di_pointers, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds i8*, i8** %159, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = bitcast i8* %164 to i64*
  store i64* %165, i64** %15, align 8
  %166 = load i64*, i64** %15, align 8
  %167 = load i64*, i64** %14, align 8
  %168 = ptrtoint i64* %166 to i64
  %169 = ptrtoint i64* %167 to i64
  %170 = sub i64 %168, %169
  %171 = sdiv exact i64 %170, 8
  store i64 %171, i64* %16, align 8
  %172 = load i64, i64* %16, align 8
  %173 = icmp sge i64 %172, -8192
  br i1 %173, label %174, label %201

174:                                              ; preds = %154
  %175 = load i64, i64* %16, align 8
  %176 = icmp slt i64 %175, 8192
  br i1 %176, label %177, label %201

177:                                              ; preds = %174
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @branchExtLink, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = load i32, i32* @iBCL, align 4
  br label %188

186:                                              ; preds = %177
  %187 = load i32, i32* @iBC, align 4
  br label %188

188:                                              ; preds = %186, %184
  %189 = phi i32 [ %185, %184 ], [ %187, %186 ]
  store i32 %189, i32* %17, align 4
  %190 = load i32, i32* %17, align 4
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 9
  %196 = load i32, i32* %195, align 8
  %197 = load i64, i64* %16, align 8
  %198 = mul nsw i64 %197, 4
  %199 = call i64 (i32, ...) @IN(i32 %190, i64 %193, i32 %196, i64 %198)
  %200 = load i64*, i64** %14, align 8
  store i64 %199, i64* %200, align 8
  br label %149

201:                                              ; preds = %174, %154
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @branchExtLink, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %201
  %209 = load i32, i32* @iBL, align 4
  br label %212

210:                                              ; preds = %201
  %211 = load i32, i32* @iB, align 4
  br label %212

212:                                              ; preds = %210, %208
  %213 = phi i32 [ %209, %208 ], [ %211, %210 ]
  %214 = load i64, i64* %16, align 8
  %215 = mul nsw i64 %214, 4
  %216 = call i64 (i32, ...) @IN(i32 %213, i64 %215)
  %217 = load i64*, i64** %14, align 8
  store i64 %216, i64* %217, align 8
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @branchAlways, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %212
  br label %149

224:                                              ; preds = %212
  %225 = load i64*, i64** %14, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 -1
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* %9, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %224
  %231 = call i32 @DIE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %232

232:                                              ; preds = %230, %224
  store i64 0, i64* %18, align 8
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 4
  %235 = load i64, i64* %234, align 8
  switch i64 %235, label %238 [
    i64 128, label %236
    i64 129, label %237
  ]

236:                                              ; preds = %232
  store i64 129, i64* %18, align 8
  br label %240

237:                                              ; preds = %232
  store i64 128, i64* %18, align 8
  br label %240

238:                                              ; preds = %232
  %239 = call i32 @DIE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %240

240:                                              ; preds = %238, %237, %236
  %241 = load i32, i32* @iBC, align 4
  %242 = load i64, i64* %18, align 8
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 9
  %245 = load i32, i32* %244, align 8
  %246 = call i64 (i32, ...) @IN(i32 %241, i64 %242, i32 %245, i32 8)
  %247 = load i64*, i64** %14, align 8
  %248 = getelementptr inbounds i64, i64* %247, i64 -1
  store i64 %246, i64* %248, align 8
  br label %149

249:                                              ; preds = %149
  %250 = load i8*, i8** %6, align 8
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 0
  store i8* %250, i8** %252, align 8
  %253 = load i64, i64* %5, align 8
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 1
  store i64 %253, i64* %255, align 8
  %256 = load i8*, i8** %6, align 8
  %257 = bitcast i8* %256 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %257, %struct.TYPE_17__** %19, align 8
  %258 = load i64, i64* @VM_AsmCall, align 8
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 7
  store i64 %258, i64* %260, align 8
  %261 = load i64, i64* @VM_BlockCopy, align 8
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 6
  store i64 %261, i64* %263, align 8
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 5
  store i32 %266, i32* %268, align 8
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = inttoptr i64 %271 to i64*
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 0
  store i64* %272, i64** %274, align 8
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %276 = load i32, i32* @data_acc, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i64 %277
  %279 = call i32 @VM_Data_Offset(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %278)
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 8
  %282 = load i64*, i64** %7, align 8
  %283 = load i64*, i64** %8, align 8
  %284 = ptrtoint i64* %282 to i64
  %285 = ptrtoint i64* %283 to i64
  %286 = sub i64 %284, %285
  %287 = sdiv exact i64 %286, 8
  %288 = mul i64 %287, 8
  %289 = trunc i64 %288 to i32
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 4
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 3
  store i32 1501560836, i32* %293, align 8
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** @data_first, align 8
  store %struct.TYPE_18__* %294, %struct.TYPE_18__** %21, align 8
  store i64 0, i64* %22, align 8
  br label %295

295:                                              ; preds = %335, %249
  store i64 0, i64* %23, align 8
  br label %296

296:                                              ; preds = %316, %295
  %297 = load i64, i64* %23, align 8
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 5
  %300 = load i64, i64* %299, align 8
  %301 = icmp slt i64 %297, %300
  br i1 %301, label %302, label %319

302:                                              ; preds = %296
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 8
  %305 = load i32*, i32** %304, align 8
  %306 = load i64, i64* %23, align 8
  %307 = getelementptr inbounds i32, i32* %305, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 4
  %311 = load i32*, i32** %310, align 8
  %312 = load i64, i64* %22, align 8
  %313 = load i64, i64* %23, align 8
  %314 = add nsw i64 %312, %313
  %315 = getelementptr inbounds i32, i32* %311, i64 %314
  store i32 %308, i32* %315, align 4
  br label %316

316:                                              ; preds = %302
  %317 = load i64, i64* %23, align 8
  %318 = add nsw i64 %317, 1
  store i64 %318, i64* %23, align 8
  br label %296

319:                                              ; preds = %296
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 5
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* %22, align 8
  %324 = add nsw i64 %323, %322
  store i64 %324, i64* %22, align 8
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 7
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %326, align 8
  store %struct.TYPE_18__* %327, %struct.TYPE_18__** %20, align 8
  %328 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %329 = call i32 @PPC_Free(%struct.TYPE_18__* %328)
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %331 = icmp ne %struct.TYPE_18__* %330, null
  br i1 %331, label %333, label %332

332:                                              ; preds = %319
  br label %336

333:                                              ; preds = %319
  %334 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  store %struct.TYPE_18__* %334, %struct.TYPE_18__** %21, align 8
  br label %335

335:                                              ; preds = %333
  br i1 true, label %295, label %336

336:                                              ; preds = %335, %332
  store %struct.TYPE_18__* null, %struct.TYPE_18__** @data_first, align 8
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** @di_first, align 8
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 7
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %338, align 8
  store %struct.TYPE_18__* %339, %struct.TYPE_18__** %3, align 8
  %340 = load %struct.TYPE_18__*, %struct.TYPE_18__** @di_first, align 8
  %341 = call i32 @PPC_Free(%struct.TYPE_18__* %340)
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** @sj_first, align 8
  %343 = call i32 @PPC_Free(%struct.TYPE_18__* %342)
  br label %344

344:                                              ; preds = %360, %336
  %345 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %346 = icmp ne %struct.TYPE_18__* %345, null
  br i1 %346, label %347, label %364

347:                                              ; preds = %344
  %348 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %348, i32 0, i32 7
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %349, align 8
  store %struct.TYPE_18__* %350, %struct.TYPE_18__** @di_first, align 8
  %351 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %351, i32 0, i32 6
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %352, align 8
  %354 = icmp ne %struct.TYPE_18__* %353, null
  br i1 %354, label %355, label %360

355:                                              ; preds = %347
  %356 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %356, i32 0, i32 6
  %358 = load %struct.TYPE_18__*, %struct.TYPE_18__** %357, align 8
  %359 = call i32 @PPC_Free(%struct.TYPE_18__* %358)
  br label %360

360:                                              ; preds = %355, %347
  %361 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %362 = call i32 @PPC_Free(%struct.TYPE_18__* %361)
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** @di_first, align 8
  store %struct.TYPE_18__* %363, %struct.TYPE_18__** %3, align 8
  br label %344

364:                                              ; preds = %344
  ret void
}

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @DIE(i8*) #1

declare dso_local i32 @VM_Data_Offset(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8) #1

declare dso_local i64 @IN(i32, ...) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @PPC_Free(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

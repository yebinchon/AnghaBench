; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_Ioctls.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_Ioctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_7__ = type { i32, i32 }

@DSL_DEV_MEI_ERR_SUCCESS = common dso_local global i32 0, align 4
@LTQ_MEI_BASE_ADDR = common dso_local global i32 0, align 4
@MSG_LENGTH = common dso_local global i32 0, align 4
@YES_REPLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"WINHOST CMV fail :TxMessage:%X %X %X %X, RxMessage:%X %X %X %X %X\0A\00", align 1
@DSL_DEV_MEI_ERR_FAILURE = common dso_local global i32 0, align 4
@DSL_CPU_RESET = common dso_local global i32 0, align 4
@DSL_CPU_HALT = common dso_local global i32 0, align 4
@DSL_CPU_RUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"DSL_FIO_BSP_DSL_START\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"IFX_MEI_RunAdslModem() error...\00", align 1
@bsp_mei_version = common dso_local global i32 0, align 4
@bsp_chip_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@LTQ_MPS_CHIPID = common dso_local global i32* null, align 8
@H2D_CMV_READ = common dso_local global i32 0, align 4
@DSL_CMV_GROUP_STAT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"RxMessage[4] = %#x\0A\00", align 1
@DSL_DEV_STAT_CODESWAP_COMPLETE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Freeing all memories marked FREE_SHOWTIME\0A\00", align 1
@FREE_SHOWTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IFX_MEI_Ioctls(i32* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = alloca %struct.TYPE_6__, align 8
  %15 = alloca %struct.TYPE_7__, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @DSL_DEV_MEI_ERR_SUCCESS, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @LTQ_MEI_BASE_ADDR, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %244 [
    i32 141, label %19
    i32 142, label %101
    i32 140, label %116
    i32 137, label %127
    i32 133, label %133
    i32 129, label %142
    i32 131, label %142
    i32 134, label %149
    i32 128, label %153
    i32 143, label %157
    i32 132, label %160
    i32 130, label %163
    i32 139, label %172
    i32 135, label %182
    i32 136, label %187
    i32 138, label %197
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = bitcast i32* %23 to i8*
  %25 = load i64, i64* %9, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load i32, i32* @MSG_LENGTH, align 4
  %28 = mul nsw i32 %27, 2
  %29 = call i32 @IFX_MEI_IoctlCopyFrom(i32 %20, i8* %24, i8* %26, i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @YES_REPLY, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @DSL_BSP_SendCMV(i32* %30, i32* %33, i32 %34, i32* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @DSL_DEV_MEI_ERR_SUCCESS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %89

41:                                               ; preds = %19
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, ...) @IFX_MEI_EMSG(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %51, i32 %56, i32 %61, i32 %66, i32 %71, i32 %76, i32 %81, i32 %86)
  %88 = load i32, i32* @DSL_DEV_MEI_ERR_FAILURE, align 4
  store i32 %88, i32* %11, align 4
  br label %100

89:                                               ; preds = %19
  %90 = load i32, i32* %7, align 4
  %91 = load i64, i64* %9, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = bitcast i32* %95 to i8*
  %97 = load i32, i32* @MSG_LENGTH, align 4
  %98 = mul nsw i32 %97, 2
  %99 = call i32 @IFX_MEI_IoctlCopyTo(i32 %90, i8* %92, i8* %96, i32 %98)
  br label %100

100:                                              ; preds = %89, %41
  br label %245

101:                                              ; preds = %4
  %102 = load i32, i32* %7, align 4
  %103 = bitcast %struct.TYPE_7__* %15 to i8*
  %104 = load i64, i64* %9, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = call i32 @IFX_MEI_IoctlCopyFrom(i32 %102, i8* %103, i8* %105, i32 8)
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %110 = call i32 @IFX_MEI_LongWordRead(i32 %108, i32* %109)
  %111 = load i32, i32* %7, align 4
  %112 = load i64, i64* %9, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = bitcast %struct.TYPE_7__* %15 to i8*
  %115 = call i32 @IFX_MEI_IoctlCopyTo(i32 %111, i8* %113, i8* %114, i32 8)
  br label %245

116:                                              ; preds = %4
  %117 = load i32, i32* %7, align 4
  %118 = bitcast %struct.TYPE_7__* %15 to i8*
  %119 = load i64, i64* %9, align 8
  %120 = inttoptr i64 %119 to i8*
  %121 = call i32 @IFX_MEI_IoctlCopyFrom(i32 %117, i8* %118, i8* %120, i32 8)
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @IFX_MEI_LongWordWrite(i32 %123, i32 %125)
  br label %245

127:                                              ; preds = %4
  %128 = load i32, i32* %7, align 4
  %129 = load i64, i64* %9, align 8
  %130 = inttoptr i64 %129 to i8*
  %131 = bitcast i32* %12 to i8*
  %132 = call i32 @IFX_MEI_IoctlCopyTo(i32 %128, i8* %130, i8* %131, i32 4)
  br label %245

133:                                              ; preds = %4
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 @IFX_MEI_IsModemReady(i32* %134)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i64, i64* %9, align 8
  %138 = inttoptr i64 %137 to i8*
  %139 = bitcast i32* %10 to i8*
  %140 = call i32 @IFX_MEI_IoctlCopyTo(i32 %136, i8* %138, i8* %139, i32 4)
  %141 = load i32, i32* @DSL_DEV_MEI_ERR_SUCCESS, align 4
  store i32 %141, i32* %11, align 4
  br label %245

142:                                              ; preds = %4, %4
  %143 = load i32*, i32** %6, align 8
  %144 = load i32, i32* @DSL_CPU_RESET, align 4
  %145 = call i32 @IFX_MEI_CpuModeSet(i32* %143, i32 %144)
  store i32 %145, i32* %11, align 4
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* @DSL_CPU_HALT, align 4
  %148 = call i32 @IFX_MEI_CpuModeSet(i32* %146, i32 %147)
  store i32 %148, i32* %11, align 4
  br label %245

149:                                              ; preds = %4
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* @DSL_CPU_HALT, align 4
  %152 = call i32 @IFX_MEI_CpuModeSet(i32* %150, i32 %151)
  store i32 %152, i32* %11, align 4
  br label %245

153:                                              ; preds = %4
  %154 = load i32*, i32** %6, align 8
  %155 = load i32, i32* @DSL_CPU_RUN, align 4
  %156 = call i32 @IFX_MEI_CpuModeSet(i32* %154, i32 %155)
  store i32 %156, i32* %11, align 4
  br label %245

157:                                              ; preds = %4
  %158 = load i32*, i32** %6, align 8
  %159 = call i32 @IFX_MEI_DownloadBootCode(i32* %158)
  store i32 %159, i32* %11, align 4
  br label %245

160:                                              ; preds = %4
  %161 = load i32*, i32** %6, align 8
  %162 = call i32 @IFX_MEI_ArcJtagEnable(i32* %161, i32 1)
  store i32 %162, i32* %11, align 4
  br label %245

163:                                              ; preds = %4
  %164 = load i32, i32* %7, align 4
  %165 = bitcast i32* %10 to i8*
  %166 = load i64, i64* %9, align 8
  %167 = inttoptr i64 %166 to i8*
  %168 = call i32 @IFX_MEI_IoctlCopyFrom(i32 %164, i8* %165, i8* %167, i32 4)
  %169 = load i32*, i32** %6, align 8
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @IFX_MEI_AdslMailboxIRQEnable(i32* %169, i32 %170)
  store i32 %171, i32* %11, align 4
  br label %245

172:                                              ; preds = %4
  %173 = call i32 (i8*, ...) @IFX_MEI_DMSG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %174 = load i32*, i32** %6, align 8
  %175 = call i32 @IFX_MEI_RunAdslModem(i32* %174)
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* @DSL_DEV_MEI_ERR_SUCCESS, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = call i32 (i8*, ...) @IFX_MEI_EMSG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %180 = load i32, i32* @DSL_DEV_MEI_ERR_FAILURE, align 4
  store i32 %180, i32* %11, align 4
  br label %181

181:                                              ; preds = %178, %172
  br label %245

182:                                              ; preds = %4
  %183 = load i32, i32* %7, align 4
  %184 = load i64, i64* %9, align 8
  %185 = inttoptr i64 %184 to i8*
  %186 = call i32 @IFX_MEI_IoctlCopyTo(i32 %183, i8* %185, i8* bitcast (i32* @bsp_mei_version to i8*), i32 4)
  br label %245

187:                                              ; preds = %4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bsp_chip_info, i32 0, i32 0), align 4
  %188 = load i32*, i32** @LTQ_MPS_CHIPID, align 8
  %189 = load i32, i32* %188, align 4
  %190 = ashr i32 %189, 28
  %191 = and i32 %190, 15
  store i32 %191, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bsp_chip_info, i32 0, i32 1), align 4
  %192 = load i32, i32* %7, align 4
  %193 = load i64, i64* %9, align 8
  %194 = inttoptr i64 %193 to i8*
  %195 = call i32 @IFX_MEI_IoctlCopyTo(i32 %192, i8* %194, i8* bitcast (%struct.TYPE_8__* @bsp_chip_info to i8*), i32 4)
  %196 = load i32, i32* @DSL_DEV_MEI_ERR_SUCCESS, align 4
  store i32 %196, i32* %11, align 4
  br label %245

197:                                              ; preds = %4
  %198 = load i32, i32* @H2D_CMV_READ, align 4
  %199 = load i32, i32* @DSL_CMV_GROUP_STAT, align 4
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @makeCMV(i32 %198, i32 %199, i32 4, i32 0, i32 1, i32* null, i32* %202)
  %204 = load i32*, i32** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* @YES_REPLY, align 4
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = call i32 @DSL_BSP_SendCMV(i32* %204, i32* %207, i32 %208, i32* %211)
  %213 = load i32, i32* @DSL_DEV_MEI_ERR_SUCCESS, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %197
  %216 = load i32, i32* @DSL_DEV_MEI_ERR_FAILURE, align 4
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* @EIO, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %5, align 4
  br label %247

219:                                              ; preds = %197
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 4
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (i8*, ...) @IFX_MEI_DMSG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %224)
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 4
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @DSL_DEV_STAT_CODESWAP_COMPLETE, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %219
  %235 = load i32, i32* @DSL_DEV_MEI_ERR_FAILURE, align 4
  store i32 %235, i32* %11, align 4
  %236 = load i32, i32* @EAGAIN, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %5, align 4
  br label %247

238:                                              ; preds = %219
  %239 = call i32 (i8*, ...) @IFX_MEI_DMSG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %240 = load i32*, i32** %6, align 8
  %241 = load i32, i32* @FREE_SHOWTIME, align 4
  %242 = call i32 @IFX_MEI_DFEMemoryFree(i32* %240, i32 %241)
  %243 = load i32, i32* @DSL_DEV_MEI_ERR_SUCCESS, align 4
  store i32 %243, i32* %11, align 4
  br label %245

244:                                              ; preds = %4
  br label %245

245:                                              ; preds = %244, %238, %187, %182, %181, %163, %160, %157, %153, %149, %142, %133, %127, %116, %101, %100
  %246 = load i32, i32* %11, align 4
  store i32 %246, i32* %5, align 4
  br label %247

247:                                              ; preds = %245, %234, %215
  %248 = load i32, i32* %5, align 4
  ret i32 %248
}

declare dso_local i32 @IFX_MEI_IoctlCopyFrom(i32, i8*, i8*, i32) #1

declare dso_local i32 @DSL_BSP_SendCMV(i32*, i32*, i32, i32*) #1

declare dso_local i32 @IFX_MEI_EMSG(i8*, ...) #1

declare dso_local i32 @IFX_MEI_IoctlCopyTo(i32, i8*, i8*, i32) #1

declare dso_local i32 @IFX_MEI_LongWordRead(i32, i32*) #1

declare dso_local i32 @IFX_MEI_LongWordWrite(i32, i32) #1

declare dso_local i32 @IFX_MEI_IsModemReady(i32*) #1

declare dso_local i32 @IFX_MEI_CpuModeSet(i32*, i32) #1

declare dso_local i32 @IFX_MEI_DownloadBootCode(i32*) #1

declare dso_local i32 @IFX_MEI_ArcJtagEnable(i32*, i32) #1

declare dso_local i32 @IFX_MEI_AdslMailboxIRQEnable(i32*, i32) #1

declare dso_local i32 @IFX_MEI_DMSG(i8*, ...) #1

declare dso_local i32 @IFX_MEI_RunAdslModem(i32*) #1

declare dso_local i32 @makeCMV(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @IFX_MEI_DFEMemoryFree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

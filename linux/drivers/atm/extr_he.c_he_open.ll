; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i16, i32, i32, %struct.TYPE_8__, %struct.he_vcc*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_11__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.he_vcc = type { i32, i32, i32, i64, i32 }
%struct.he_dev = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@ATM_VCI_UNSPEC = common dso_local global i32 0, align 4
@ATM_VPI_UNSPEC = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [19 x i8] c"open vcc %p %d.%d\0A\00", align 1
@ATM_VF_ADDR = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"unable to allocate he_vcc during open\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ATM_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"open tx cid 0x%x pcr_goal %d\0A\00", align 1
@TSR0_AAL5 = common dso_local global i32 0, align 4
@TSR4_AAL5 = common dso_local global i32 0, align 4
@TSR0_AAL0_SDU = common dso_local global i32 0, align 4
@TSR4_AAL0_SDU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"cid 0x%x not idle (tsr0 = 0x%x)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@TSR0_UBR = common dso_local global i32 0, align 4
@TSR0_USE_WMIN = common dso_local global i32 0, align 4
@TSR0_UPDATE_GER = common dso_local global i32 0, align 4
@HE_NUM_CS_STPER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"rc_index = %d period = %d\0A\00", align 1
@CS_STPER0 = common dso_local global i32 0, align 4
@TSR0_CBR = common dso_local global i32 0, align 4
@TSR9_OPEN_CONN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"open rx cid 0x%x (rx_waitq %p)\0A\00", align 1
@RSR0_AAL5 = common dso_local global i32 0, align 4
@RSR0_RAWCELL = common dso_local global i32 0, align 4
@RSR0_OPEN_CONN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"cid 0x%x not idle (rsr0 = 0x%x)\0A\00", align 1
@RSR1_RBPL_ONLY = common dso_local global i32 0, align 4
@RSR4_RBPL_ONLY = common dso_local global i32 0, align 4
@RSR0_EPD_ENABLE = common dso_local global i32 0, align 4
@RSR0_PPD_ENABLE = common dso_local global i32 0, align 4
@RSR0_START_PDU = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@ATM_NOT_RSV_VCI = common dso_local global i32 0, align 4
@RSR0_TCP_CKSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*)* @he_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @he_open(%struct.atm_vcc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.he_dev*, align 8
  %6 = alloca %struct.he_vcc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i16, align 2
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  %22 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %23 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.he_dev* @HE_DEV(i32 %24)
  store %struct.he_dev* %25, %struct.he_dev** %5, align 8
  store i32 0, i32* %7, align 4
  %26 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %27 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %26, i32 0, i32 0
  %28 = load i16, i16* %27, align 8
  store i16 %28, i16* %18, align 2
  %29 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %30 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* %19, align 4
  %33 = load i32, i32* @ATM_VCI_UNSPEC, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %1
  %36 = load i16, i16* %18, align 2
  %37 = sext i16 %36 to i32
  %38 = load i16, i16* @ATM_VPI_UNSPEC, align 2
  %39 = sext i16 %38 to i32
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %1
  store i32 0, i32* %2, align 4
  br label %464

42:                                               ; preds = %35
  %43 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %44 = load i16, i16* %18, align 2
  %45 = sext i16 %44 to i32
  %46 = load i32, i32* %19, align 4
  %47 = call i32 (i8*, ...) @HPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.atm_vcc* %43, i32 %45, i32 %46)
  %48 = load i32, i32* @ATM_VF_ADDR, align 4
  %49 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %50 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %49, i32 0, i32 2
  %51 = call i32 @set_bit(i32 %48, i32* %50)
  %52 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %53 = load i16, i16* %18, align 2
  %54 = load i32, i32* %19, align 4
  %55 = call i32 @he_mkcid(%struct.he_dev* %52, i16 signext %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @GFP_ATOMIC, align 4
  %57 = call %struct.he_vcc* @kmalloc(i32 32, i32 %56)
  store %struct.he_vcc* %57, %struct.he_vcc** %6, align 8
  %58 = load %struct.he_vcc*, %struct.he_vcc** %6, align 8
  %59 = icmp eq %struct.he_vcc* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %42
  %61 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %464

64:                                               ; preds = %42
  %65 = load %struct.he_vcc*, %struct.he_vcc** %6, align 8
  %66 = getelementptr inbounds %struct.he_vcc, %struct.he_vcc* %65, i32 0, i32 4
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.he_vcc*, %struct.he_vcc** %6, align 8
  %69 = getelementptr inbounds %struct.he_vcc, %struct.he_vcc* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load %struct.he_vcc*, %struct.he_vcc** %6, align 8
  %71 = getelementptr inbounds %struct.he_vcc, %struct.he_vcc* %70, i32 0, i32 0
  store i32 -1, i32* %71, align 8
  %72 = load %struct.he_vcc*, %struct.he_vcc** %6, align 8
  %73 = getelementptr inbounds %struct.he_vcc, %struct.he_vcc* %72, i32 0, i32 2
  %74 = call i32 @init_waitqueue_head(i32* %73)
  %75 = load %struct.he_vcc*, %struct.he_vcc** %6, align 8
  %76 = getelementptr inbounds %struct.he_vcc, %struct.he_vcc* %75, i32 0, i32 1
  %77 = call i32 @init_waitqueue_head(i32* %76)
  %78 = load %struct.he_vcc*, %struct.he_vcc** %6, align 8
  %79 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %80 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %79, i32 0, i32 4
  store %struct.he_vcc* %78, %struct.he_vcc** %80, align 8
  %81 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %82 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ATM_NONE, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %354

88:                                               ; preds = %64
  %89 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %90 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = call i32 @atm_pcr_goal(%struct.TYPE_11__* %91)
  store i32 %92, i32* %20, align 4
  %93 = load i32, i32* %20, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %97 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %96, i32 0, i32 3
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %20, align 4
  br label %101

101:                                              ; preds = %95, %88
  %102 = load i32, i32* %20, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* %20, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %20, align 4
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %20, align 4
  %110 = call i32 (i8*, ...) @HPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %112 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  switch i32 %114, label %121 [
    i32 130, label %115
    i32 131, label %118
  ]

115:                                              ; preds = %107
  %116 = load i32, i32* @TSR0_AAL5, align 4
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* @TSR4_AAL5, align 4
  store i32 %117, i32* %14, align 4
  br label %124

118:                                              ; preds = %107
  %119 = load i32, i32* @TSR0_AAL0_SDU, align 4
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* @TSR4_AAL0_SDU, align 4
  store i32 %120, i32* %14, align 4
  br label %124

121:                                              ; preds = %107
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %7, align 4
  br label %447

124:                                              ; preds = %118, %115
  %125 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %126 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %125, i32 0, i32 1
  %127 = load i64, i64* %4, align 8
  %128 = call i32 @spin_lock_irqsave(i32* %126, i64 %127)
  %129 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @he_readl_tsr0(%struct.he_dev* %129, i32 %130)
  store i32 %131, i32* %12, align 4
  %132 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %133 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %132, i32 0, i32 1
  %134 = load i64, i64* %4, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  %136 = load i32, i32* %12, align 4
  %137 = call i64 @TSR0_CONN_STATE(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %124
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %140, i32 %141)
  %143 = load i32, i32* @EBUSY, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %7, align 4
  br label %447

145:                                              ; preds = %124
  %146 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %147 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  switch i64 %150, label %281 [
    i64 128, label %151
    i64 129, label %161
  ]

151:                                              ; preds = %145
  %152 = load i32, i32* @TSR0_UBR, align 4
  %153 = call i32 @TSR0_GROUP(i32 0)
  %154 = or i32 %152, %153
  %155 = load i32, i32* %13, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @TSR0_USE_WMIN, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @TSR0_UPDATE_GER, align 4
  %160 = or i32 %158, %159
  store i32 %160, i32* %12, align 4
  br label %284

161:                                              ; preds = %145
  %162 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %163 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %20, align 4
  %166 = add nsw i32 %164, %165
  %167 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %168 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %167, i32 0, i32 3
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = mul nsw i32 %171, 9
  %173 = sdiv i32 %172, 10
  %174 = icmp sgt i32 %166, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %161
  %176 = load i32, i32* @EBUSY, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %7, align 4
  br label %447

178:                                              ; preds = %161
  %179 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %180 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %179, i32 0, i32 1
  %181 = load i64, i64* %4, align 8
  %182 = call i32 @spin_lock_irqsave(i32* %180, i64 %181)
  store i32 0, i32* %16, align 4
  br label %183

183:                                              ; preds = %210, %178
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* @HE_NUM_CS_STPER, align 4
  %186 = icmp ult i32 %184, %185
  br i1 %186, label %187, label %213

187:                                              ; preds = %183
  %188 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %189 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %188, i32 0, i32 2
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = load i32, i32* %16, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %208, label %197

197:                                              ; preds = %187
  %198 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %199 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %198, i32 0, i32 2
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %199, align 8
  %201 = load i32, i32* %16, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %20, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %197, %187
  br label %213

209:                                              ; preds = %197
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %16, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %16, align 4
  br label %183

213:                                              ; preds = %208, %183
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* @HE_NUM_CS_STPER, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %213
  %218 = load i32, i32* @EBUSY, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %7, align 4
  %220 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %221 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %220, i32 0, i32 1
  %222 = load i64, i64* %4, align 8
  %223 = call i32 @spin_unlock_irqrestore(i32* %221, i64 %222)
  br label %447

224:                                              ; preds = %213
  %225 = load i32, i32* %20, align 4
  %226 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %227 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = add nsw i32 %228, %225
  store i32 %229, i32* %227, align 8
  %230 = load i32, i32* %16, align 4
  %231 = load %struct.he_vcc*, %struct.he_vcc** %6, align 8
  %232 = getelementptr inbounds %struct.he_vcc, %struct.he_vcc* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  %233 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %234 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %233, i32 0, i32 2
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %234, align 8
  %236 = load i32, i32* %16, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 4
  %242 = load i32, i32* %20, align 4
  %243 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %244 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %243, i32 0, i32 2
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %244, align 8
  %246 = load i32, i32* %16, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  store i32 %242, i32* %249, align 4
  %250 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %251 = call i32 @he_is622(%struct.he_dev* %250)
  %252 = icmp ne i32 %251, 0
  %253 = zext i1 %252 to i64
  %254 = select i1 %252, i32 66667000, i32 50000000
  store i32 %254, i32* %17, align 4
  %255 = load i32, i32* %17, align 4
  %256 = load i32, i32* %20, align 4
  %257 = udiv i32 %255, %256
  store i32 %257, i32* %15, align 4
  %258 = load i32, i32* %16, align 4
  %259 = load i32, i32* %15, align 4
  %260 = call i32 (i8*, ...) @HPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %258, i32 %259)
  %261 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %262 = load i32, i32* %15, align 4
  %263 = udiv i32 %262, 2
  %264 = call i32 @rate_to_atmf(i32 %263)
  %265 = load i32, i32* @CS_STPER0, align 4
  %266 = load i32, i32* %16, align 4
  %267 = add i32 %265, %266
  %268 = call i32 @he_writel_mbox(%struct.he_dev* %261, i32 %264, i32 %267)
  %269 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %270 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %269, i32 0, i32 1
  %271 = load i64, i64* %4, align 8
  %272 = call i32 @spin_unlock_irqrestore(i32* %270, i64 %271)
  %273 = load i32, i32* @TSR0_CBR, align 4
  %274 = call i32 @TSR0_GROUP(i32 0)
  %275 = or i32 %273, %274
  %276 = load i32, i32* %13, align 4
  %277 = or i32 %275, %276
  %278 = load i32, i32* %16, align 4
  %279 = call i32 @TSR0_RC_INDEX(i32 %278)
  %280 = or i32 %277, %279
  store i32 %280, i32* %12, align 4
  br label %284

281:                                              ; preds = %145
  %282 = load i32, i32* @EINVAL, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %7, align 4
  br label %447

284:                                              ; preds = %224, %151
  %285 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %286 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %285, i32 0, i32 1
  %287 = load i64, i64* %4, align 8
  %288 = call i32 @spin_lock_irqsave(i32* %286, i64 %287)
  %289 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %290 = load i32, i32* %12, align 4
  %291 = load i32, i32* %8, align 4
  %292 = call i32 @he_writel_tsr0(%struct.he_dev* %289, i32 %290, i32 %291)
  %293 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %294 = load i32, i32* %14, align 4
  %295 = or i32 %294, 1
  %296 = load i32, i32* %8, align 4
  %297 = call i32 @he_writel_tsr4(%struct.he_dev* %293, i32 %295, i32 %296)
  %298 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %299 = call i32 @rate_to_atmf(i32 0)
  %300 = call i32 @TSR1_MCR(i32 %299)
  %301 = load i32, i32* %20, align 4
  %302 = call i32 @rate_to_atmf(i32 %301)
  %303 = call i32 @TSR1_PCR(i32 %302)
  %304 = or i32 %300, %303
  %305 = load i32, i32* %8, align 4
  %306 = call i32 @he_writel_tsr1(%struct.he_dev* %298, i32 %304, i32 %305)
  %307 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %308 = load i32, i32* %20, align 4
  %309 = call i32 @rate_to_atmf(i32 %308)
  %310 = call i32 @TSR2_ACR(i32 %309)
  %311 = load i32, i32* %8, align 4
  %312 = call i32 @he_writel_tsr2(%struct.he_dev* %307, i32 %310, i32 %311)
  %313 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %314 = load i32, i32* @TSR9_OPEN_CONN, align 4
  %315 = load i32, i32* %8, align 4
  %316 = call i32 @he_writel_tsr9(%struct.he_dev* %313, i32 %314, i32 %315)
  %317 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %318 = load i32, i32* %8, align 4
  %319 = call i32 @he_writel_tsr3(%struct.he_dev* %317, i32 0, i32 %318)
  %320 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %321 = load i32, i32* %8, align 4
  %322 = call i32 @he_writel_tsr5(%struct.he_dev* %320, i32 0, i32 %321)
  %323 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %324 = load i32, i32* %8, align 4
  %325 = call i32 @he_writel_tsr6(%struct.he_dev* %323, i32 0, i32 %324)
  %326 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %327 = load i32, i32* %8, align 4
  %328 = call i32 @he_writel_tsr7(%struct.he_dev* %326, i32 0, i32 %327)
  %329 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %330 = load i32, i32* %8, align 4
  %331 = call i32 @he_writel_tsr8(%struct.he_dev* %329, i32 0, i32 %330)
  %332 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %333 = load i32, i32* %8, align 4
  %334 = call i32 @he_writel_tsr10(%struct.he_dev* %332, i32 0, i32 %333)
  %335 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %336 = load i32, i32* %8, align 4
  %337 = call i32 @he_writel_tsr11(%struct.he_dev* %335, i32 0, i32 %336)
  %338 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %339 = load i32, i32* %8, align 4
  %340 = call i32 @he_writel_tsr12(%struct.he_dev* %338, i32 0, i32 %339)
  %341 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %342 = load i32, i32* %8, align 4
  %343 = call i32 @he_writel_tsr13(%struct.he_dev* %341, i32 0, i32 %342)
  %344 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %345 = load i32, i32* %8, align 4
  %346 = call i32 @he_writel_tsr14(%struct.he_dev* %344, i32 0, i32 %345)
  %347 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %348 = load i32, i32* %8, align 4
  %349 = call i32 @he_readl_tsr0(%struct.he_dev* %347, i32 %348)
  %350 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %351 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %350, i32 0, i32 1
  %352 = load i64, i64* %4, align 8
  %353 = call i32 @spin_unlock_irqrestore(i32* %351, i64 %352)
  br label %354

354:                                              ; preds = %284, %64
  %355 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %356 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %355, i32 0, i32 3
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @ATM_NONE, align 8
  %361 = icmp ne i64 %359, %360
  br i1 %361, label %362, label %446

362:                                              ; preds = %354
  %363 = load i32, i32* %8, align 4
  %364 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %365 = call %struct.TYPE_12__* @HE_VCC(%struct.atm_vcc* %364)
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 0
  %367 = call i32 (i8*, ...) @HPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %363, i32* %366)
  %368 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %369 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %368, i32 0, i32 3
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  switch i32 %371, label %376 [
    i32 130, label %372
    i32 131, label %374
  ]

372:                                              ; preds = %362
  %373 = load i32, i32* @RSR0_AAL5, align 4
  store i32 %373, i32* %21, align 4
  br label %379

374:                                              ; preds = %362
  %375 = load i32, i32* @RSR0_RAWCELL, align 4
  store i32 %375, i32* %21, align 4
  br label %379

376:                                              ; preds = %362
  %377 = load i32, i32* @EINVAL, align 4
  %378 = sub nsw i32 0, %377
  store i32 %378, i32* %7, align 4
  br label %447

379:                                              ; preds = %374, %372
  %380 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %381 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %380, i32 0, i32 1
  %382 = load i64, i64* %4, align 8
  %383 = call i32 @spin_lock_irqsave(i32* %381, i64 %382)
  %384 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %385 = load i32, i32* %8, align 4
  %386 = call i32 @he_readl_rsr0(%struct.he_dev* %384, i32 %385)
  store i32 %386, i32* %9, align 4
  %387 = load i32, i32* %9, align 4
  %388 = load i32, i32* @RSR0_OPEN_CONN, align 4
  %389 = and i32 %387, %388
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %401

391:                                              ; preds = %379
  %392 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %393 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %392, i32 0, i32 1
  %394 = load i64, i64* %4, align 8
  %395 = call i32 @spin_unlock_irqrestore(i32* %393, i64 %394)
  %396 = load i32, i32* %8, align 4
  %397 = load i32, i32* %9, align 4
  %398 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %396, i32 %397)
  %399 = load i32, i32* @EBUSY, align 4
  %400 = sub nsw i32 0, %399
  store i32 %400, i32* %7, align 4
  br label %447

401:                                              ; preds = %379
  %402 = call i32 @RSR1_GROUP(i32 0)
  %403 = load i32, i32* @RSR1_RBPL_ONLY, align 4
  %404 = or i32 %402, %403
  store i32 %404, i32* %10, align 4
  %405 = call i32 @RSR4_GROUP(i32 0)
  %406 = load i32, i32* @RSR4_RBPL_ONLY, align 4
  %407 = or i32 %405, %406
  store i32 %407, i32* %11, align 4
  %408 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %409 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %408, i32 0, i32 3
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = icmp eq i64 %412, 128
  br i1 %413, label %414, label %418

414:                                              ; preds = %401
  %415 = load i32, i32* @RSR0_EPD_ENABLE, align 4
  %416 = load i32, i32* @RSR0_PPD_ENABLE, align 4
  %417 = or i32 %415, %416
  br label %419

418:                                              ; preds = %401
  br label %419

419:                                              ; preds = %418, %414
  %420 = phi i32 [ %417, %414 ], [ 0, %418 ]
  store i32 %420, i32* %9, align 4
  %421 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %422 = load i32, i32* %11, align 4
  %423 = load i32, i32* %8, align 4
  %424 = call i32 @he_writel_rsr4(%struct.he_dev* %421, i32 %422, i32 %423)
  %425 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %426 = load i32, i32* %10, align 4
  %427 = load i32, i32* %8, align 4
  %428 = call i32 @he_writel_rsr1(%struct.he_dev* %425, i32 %426, i32 %427)
  %429 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %430 = load i32, i32* %9, align 4
  %431 = load i32, i32* @RSR0_START_PDU, align 4
  %432 = or i32 %430, %431
  %433 = load i32, i32* @RSR0_OPEN_CONN, align 4
  %434 = or i32 %432, %433
  %435 = load i32, i32* %21, align 4
  %436 = or i32 %434, %435
  %437 = load i32, i32* %8, align 4
  %438 = call i32 @he_writel_rsr0(%struct.he_dev* %429, i32 %436, i32 %437)
  %439 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %440 = load i32, i32* %8, align 4
  %441 = call i32 @he_readl_rsr0(%struct.he_dev* %439, i32 %440)
  %442 = load %struct.he_dev*, %struct.he_dev** %5, align 8
  %443 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %442, i32 0, i32 1
  %444 = load i64, i64* %4, align 8
  %445 = call i32 @spin_unlock_irqrestore(i32* %443, i64 %444)
  br label %446

446:                                              ; preds = %419, %354
  br label %447

447:                                              ; preds = %446, %391, %376, %281, %217, %175, %139, %121
  %448 = load i32, i32* %7, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %457

450:                                              ; preds = %447
  %451 = load %struct.he_vcc*, %struct.he_vcc** %6, align 8
  %452 = call i32 @kfree(%struct.he_vcc* %451)
  %453 = load i32, i32* @ATM_VF_ADDR, align 4
  %454 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %455 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %454, i32 0, i32 2
  %456 = call i32 @clear_bit(i32 %453, i32* %455)
  br label %462

457:                                              ; preds = %447
  %458 = load i32, i32* @ATM_VF_READY, align 4
  %459 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %460 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %459, i32 0, i32 2
  %461 = call i32 @set_bit(i32 %458, i32* %460)
  br label %462

462:                                              ; preds = %457, %450
  %463 = load i32, i32* %7, align 4
  store i32 %463, i32* %2, align 4
  br label %464

464:                                              ; preds = %462, %60, %41
  %465 = load i32, i32* %2, align 4
  ret i32 %465
}

declare dso_local %struct.he_dev* @HE_DEV(i32) #1

declare dso_local i32 @HPRINTK(i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @he_mkcid(%struct.he_dev*, i16 signext, i32) #1

declare dso_local %struct.he_vcc* @kmalloc(i32, i32) #1

declare dso_local i32 @hprintk(i8*, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atm_pcr_goal(%struct.TYPE_11__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @he_readl_tsr0(%struct.he_dev*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @TSR0_CONN_STATE(i32) #1

declare dso_local i32 @TSR0_GROUP(i32) #1

declare dso_local i32 @he_is622(%struct.he_dev*) #1

declare dso_local i32 @he_writel_mbox(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @rate_to_atmf(i32) #1

declare dso_local i32 @TSR0_RC_INDEX(i32) #1

declare dso_local i32 @he_writel_tsr0(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_writel_tsr4(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_writel_tsr1(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @TSR1_MCR(i32) #1

declare dso_local i32 @TSR1_PCR(i32) #1

declare dso_local i32 @he_writel_tsr2(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @TSR2_ACR(i32) #1

declare dso_local i32 @he_writel_tsr9(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_writel_tsr3(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_writel_tsr5(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_writel_tsr6(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_writel_tsr7(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_writel_tsr8(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_writel_tsr10(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_writel_tsr11(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_writel_tsr12(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_writel_tsr13(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_writel_tsr14(%struct.he_dev*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @HE_VCC(%struct.atm_vcc*) #1

declare dso_local i32 @he_readl_rsr0(%struct.he_dev*, i32) #1

declare dso_local i32 @RSR1_GROUP(i32) #1

declare dso_local i32 @RSR4_GROUP(i32) #1

declare dso_local i32 @he_writel_rsr4(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_writel_rsr1(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_writel_rsr0(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @kfree(%struct.he_vcc*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.he_dev = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.he_tpd = type { i32, %struct.atm_vcc*, i32* }
%struct.he_vcc = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"close vcc %p %d.%d\0A\00", align 1
@ATM_VF_READY = common dso_local global i32 0, align 4
@ATM_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"close rx cid 0x%x\0A\00", align 1
@RCC_STAT = common dso_local global i32 0, align 4
@RCC_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"close cid 0x%x RCC_BUSY\0A\00", align 1
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@RSR0_CLOSE_CONN = common dso_local global i32 0, align 4
@RXCON_CLOSE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"close rx timeout cid 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"close rx cid 0x%x complete\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"close tx cid 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"close tx cid 0x%x tx_inuse = %d\0A\00", align 1
@TSR4_FLUSH_CONN = common dso_local global i32 0, align 4
@TSR14_DELETE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"close tx he_alloc_tpd failed cid 0x%x\0A\00", align 1
@TPD_EOS = common dso_local global i32 0, align 4
@TPD_INT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"close tx timeout cid 0x%x\0A\00", align 1
@TSR4_SESSION_ENDED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [53 x i8] c"close tx cid 0x%x !TSR4_SESSION_ENDED (tsr4 = 0x%x)\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"close tx cid 0x%x TSR0_CONN_STATE != 0 (tsr0 = 0x%x)\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"cs_stper reg = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"cs_stper[%d].inuse = 0!\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"close tx cid 0x%x complete\0A\00", align 1
@ATM_VF_ADDR = common dso_local global i32 0, align 4
@MAX_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*)* @he_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @he_close(%struct.atm_vcc* %0) #0 {
  %2 = alloca %struct.atm_vcc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.he_dev*, align 8
  %5 = alloca %struct.he_tpd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.he_vcc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %2, align 8
  %16 = load i32, i32* @wait, align 4
  %17 = load i32, i32* @current, align 4
  %18 = call i32 @DECLARE_WAITQUEUE(i32 %16, i32 %17)
  %19 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %20 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.he_dev* @HE_DEV(i32 %21)
  store %struct.he_dev* %22, %struct.he_dev** %4, align 8
  %23 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %24 = call %struct.he_vcc* @HE_VCC(%struct.atm_vcc* %23)
  store %struct.he_vcc* %24, %struct.he_vcc** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %25 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %26 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %27 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %30 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, ...) @HPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.atm_vcc* %25, i32 %28, i32 %31)
  %33 = load i32, i32* @ATM_VF_READY, align 4
  %34 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %35 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %34, i32 0, i32 0
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  %37 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %38 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %39 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %42 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @he_mkcid(%struct.he_dev* %37, i32 %40, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %46 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ATM_NONE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %107

52:                                               ; preds = %1
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (i8*, ...) @HPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %56 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %55, i32 0, i32 0
  %57 = load i64, i64* %3, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  br label %59

59:                                               ; preds = %66, %52
  %60 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %61 = load i32, i32* @RCC_STAT, align 4
  %62 = call i32 @he_readl(%struct.he_dev* %60, i32 %61)
  %63 = load i32, i32* @RCC_BUSY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (i8*, ...) @HPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = call i32 @udelay(i32 250)
  br label %59

70:                                               ; preds = %59
  %71 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %72 = call i32 @set_current_state(i32 %71)
  %73 = load %struct.he_vcc*, %struct.he_vcc** %7, align 8
  %74 = getelementptr inbounds %struct.he_vcc, %struct.he_vcc* %73, i32 0, i32 2
  %75 = call i32 @add_wait_queue(i32* %74, i32* @wait)
  %76 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %77 = load i32, i32* @RSR0_CLOSE_CONN, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @he_writel_rsr0(%struct.he_dev* %76, i32 %77, i32 %78)
  %80 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @he_readl_rsr0(%struct.he_dev* %80, i32 %81)
  %83 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @RXCON_CLOSE, align 4
  %86 = call i32 @he_writel_mbox(%struct.he_dev* %83, i32 %84, i32 %85)
  %87 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %88 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %87, i32 0, i32 0
  %89 = load i64, i64* %3, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load i32, i32* @HZ, align 4
  %92 = mul nsw i32 30, %91
  %93 = call i32 @schedule_timeout(i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load %struct.he_vcc*, %struct.he_vcc** %7, align 8
  %95 = getelementptr inbounds %struct.he_vcc, %struct.he_vcc* %94, i32 0, i32 2
  %96 = call i32 @remove_wait_queue(i32* %95, i32* @wait)
  %97 = load i32, i32* @TASK_RUNNING, align 4
  %98 = call i32 @set_current_state(i32 %97)
  %99 = load i32, i32* %11, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %70
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (i8*, i32, ...) @hprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %101, %70
  %105 = load i32, i32* %6, align 4
  %106 = call i32 (i8*, ...) @HPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %104, %1
  %108 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %109 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @ATM_NONE, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %313

115:                                              ; preds = %107
  %116 = load i32, i32* %6, align 4
  %117 = call i32 (i8*, ...) @HPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %137, %115
  %119 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %120 = call %struct.TYPE_10__* @sk_atm(%struct.atm_vcc* %119)
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = call i32 @refcount_read(i32* %121)
  store i32 %122, i32* %10, align 4
  %123 = icmp sgt i32 %122, 1
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 30
  br label %127

127:                                              ; preds = %124, %118
  %128 = phi i1 [ false, %118 ], [ %126, %124 ]
  br i1 %128, label %129, label %140

129:                                              ; preds = %127
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @msleep(i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = icmp slt i32 %132, 250
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* %9, align 4
  %136 = mul nsw i32 %135, 2
  store i32 %136, i32* %9, align 4
  br label %137

137:                                              ; preds = %134, %129
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %118

140:                                              ; preds = %127
  %141 = load i32, i32* %10, align 4
  %142 = icmp sgt i32 %141, 1
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i32 (i8*, i32, ...) @hprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %140
  %148 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %149 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %148, i32 0, i32 0
  %150 = load i64, i64* %3, align 8
  %151 = call i32 @spin_lock_irqsave(i32* %149, i64 %150)
  %152 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %153 = load i32, i32* @TSR4_FLUSH_CONN, align 4
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @he_writel_tsr4_upper(%struct.he_dev* %152, i32 %153, i32 %154)
  %156 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %157 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  switch i64 %160, label %174 [
    i64 128, label %161
    i64 129, label %169
  ]

161:                                              ; preds = %147
  %162 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %163 = call i32 @rate_to_atmf(i32 200000)
  %164 = call i32 @TSR1_MCR(i32 %163)
  %165 = call i32 @TSR1_PCR(i32 0)
  %166 = or i32 %164, %165
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @he_writel_tsr1(%struct.he_dev* %162, i32 %166, i32 %167)
  br label %174

169:                                              ; preds = %147
  %170 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %171 = load i32, i32* @TSR14_DELETE, align 4
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @he_writel_tsr14_upper(%struct.he_dev* %170, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %147, %169, %161
  %175 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @he_readl_tsr4(%struct.he_dev* %175, i32 %176)
  %178 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %179 = call %struct.he_tpd* @__alloc_tpd(%struct.he_dev* %178)
  store %struct.he_tpd* %179, %struct.he_tpd** %5, align 8
  %180 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %181 = icmp eq %struct.he_tpd* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %174
  %183 = load i32, i32* %6, align 4
  %184 = call i32 (i8*, i32, ...) @hprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %183)
  br label %256

185:                                              ; preds = %174
  %186 = load i32, i32* @TPD_EOS, align 4
  %187 = load i32, i32* @TPD_INT, align 4
  %188 = or i32 %186, %187
  %189 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %190 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  %193 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %194 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %193, i32 0, i32 2
  store i32* null, i32** %194, align 8
  %195 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %196 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %197 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %196, i32 0, i32 1
  store %struct.atm_vcc* %195, %struct.atm_vcc** %197, align 8
  %198 = call i32 (...) @wmb()
  %199 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %200 = call i32 @set_current_state(i32 %199)
  %201 = load %struct.he_vcc*, %struct.he_vcc** %7, align 8
  %202 = getelementptr inbounds %struct.he_vcc, %struct.he_vcc* %201, i32 0, i32 1
  %203 = call i32 @add_wait_queue(i32* %202, i32* @wait)
  %204 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %205 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @__enqueue_tpd(%struct.he_dev* %204, %struct.he_tpd* %205, i32 %206)
  %208 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %209 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %208, i32 0, i32 0
  %210 = load i64, i64* %3, align 8
  %211 = call i32 @spin_unlock_irqrestore(i32* %209, i64 %210)
  %212 = load i32, i32* @HZ, align 4
  %213 = mul nsw i32 30, %212
  %214 = call i32 @schedule_timeout(i32 %213)
  store i32 %214, i32* %14, align 4
  %215 = load %struct.he_vcc*, %struct.he_vcc** %7, align 8
  %216 = getelementptr inbounds %struct.he_vcc, %struct.he_vcc* %215, i32 0, i32 1
  %217 = call i32 @remove_wait_queue(i32* %216, i32* @wait)
  %218 = load i32, i32* @TASK_RUNNING, align 4
  %219 = call i32 @set_current_state(i32 %218)
  %220 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %221 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %220, i32 0, i32 0
  %222 = load i64, i64* %3, align 8
  %223 = call i32 @spin_lock_irqsave(i32* %221, i64 %222)
  %224 = load i32, i32* %14, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %185
  %227 = load i32, i32* %6, align 4
  %228 = call i32 (i8*, i32, ...) @hprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %227)
  br label %256

229:                                              ; preds = %185
  br label %230

230:                                              ; preds = %238, %229
  %231 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %232 = load i32, i32* %6, align 4
  %233 = call i32 @he_readl_tsr4(%struct.he_dev* %231, i32 %232)
  store volatile i32 %233, i32* %12, align 4
  %234 = load volatile i32, i32* @TSR4_SESSION_ENDED, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  %237 = xor i1 %236, true
  br i1 %237, label %238, label %243

238:                                              ; preds = %230
  %239 = load i32, i32* %6, align 4
  %240 = load volatile i32, i32* %12, align 4
  %241 = call i32 (i8*, ...) @HPRINTK(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i32 %239, i32 %240)
  %242 = call i32 @udelay(i32 250)
  br label %230

243:                                              ; preds = %230
  br label %244

244:                                              ; preds = %250, %243
  %245 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %246 = load i32, i32* %6, align 4
  %247 = call i32 @he_readl_tsr0(%struct.he_dev* %245, i32 %246)
  store volatile i32 %247, i32* %13, align 4
  %248 = call i64 @TSR0_CONN_STATE(i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %244
  %251 = load i32, i32* %6, align 4
  %252 = load volatile i32, i32* %13, align 4
  %253 = call i32 (i8*, ...) @HPRINTK(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 %251, i32 %252)
  %254 = call i32 @udelay(i32 250)
  br label %244

255:                                              ; preds = %244
  br label %256

256:                                              ; preds = %255, %226, %182
  %257 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %258 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %261, 129
  br i1 %262, label %263, label %306

263:                                              ; preds = %256
  %264 = load %struct.he_vcc*, %struct.he_vcc** %7, align 8
  %265 = getelementptr inbounds %struct.he_vcc, %struct.he_vcc* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %15, align 4
  %267 = load i32, i32* %15, align 4
  %268 = call i32 (i8*, ...) @HPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %267)
  %269 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %270 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %269, i32 0, i32 1
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %270, align 8
  %272 = load i32, i32* %15, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %263
  %279 = load i32, i32* %15, align 4
  %280 = call i32 (i8*, i32, ...) @hprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %279)
  br label %291

281:                                              ; preds = %263
  %282 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %283 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %282, i32 0, i32 1
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %283, align 8
  %285 = load i32, i32* %15, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = add nsw i64 %289, -1
  store i64 %290, i64* %288, align 8
  br label %291

291:                                              ; preds = %281, %278
  %292 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %293 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %292, i32 0, i32 1
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %293, align 8
  %295 = load i32, i32* %15, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %301 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = sext i32 %302 to i64
  %304 = sub nsw i64 %303, %299
  %305 = trunc i64 %304 to i32
  store i32 %305, i32* %301, align 8
  br label %306

306:                                              ; preds = %291, %256
  %307 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %308 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %307, i32 0, i32 0
  %309 = load i64, i64* %3, align 8
  %310 = call i32 @spin_unlock_irqrestore(i32* %308, i64 %309)
  %311 = load i32, i32* %6, align 4
  %312 = call i32 (i8*, ...) @HPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %311)
  br label %313

313:                                              ; preds = %306, %107
  %314 = load %struct.he_vcc*, %struct.he_vcc** %7, align 8
  %315 = call i32 @kfree(%struct.he_vcc* %314)
  %316 = load i32, i32* @ATM_VF_ADDR, align 4
  %317 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %318 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %317, i32 0, i32 0
  %319 = call i32 @clear_bit(i32 %316, i32* %318)
  ret void
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local %struct.he_dev* @HE_DEV(i32) #1

declare dso_local %struct.he_vcc* @HE_VCC(%struct.atm_vcc*) #1

declare dso_local i32 @HPRINTK(i8*, ...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @he_mkcid(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @he_readl(%struct.he_dev*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @he_writel_rsr0(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_readl_rsr0(%struct.he_dev*, i32) #1

declare dso_local i32 @he_writel_mbox(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @hprintk(i8*, i32, ...) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local %struct.TYPE_10__* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @he_writel_tsr4_upper(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_writel_tsr1(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @TSR1_MCR(i32) #1

declare dso_local i32 @rate_to_atmf(i32) #1

declare dso_local i32 @TSR1_PCR(i32) #1

declare dso_local i32 @he_writel_tsr14_upper(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @he_readl_tsr4(%struct.he_dev*, i32) #1

declare dso_local %struct.he_tpd* @__alloc_tpd(%struct.he_dev*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @__enqueue_tpd(%struct.he_dev*, %struct.he_tpd*, i32) #1

declare dso_local i64 @TSR0_CONN_STATE(i32) #1

declare dso_local i32 @he_readl_tsr0(%struct.he_dev*, i32) #1

declare dso_local i32 @kfree(%struct.he_vcc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

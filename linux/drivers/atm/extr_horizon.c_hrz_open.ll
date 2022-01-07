; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_hrz_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_hrz_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i16, i32, i32, i8*, %struct.atm_qos, i32 }
%struct.atm_qos = type { i32, %struct.atm_trafprm, %struct.atm_trafprm }
%struct.atm_trafprm = type { i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.atm_vcc**, i32 }
%struct.TYPE_9__ = type { i64, i32, i64, i32, i32, i8*, i8*, i8* }

@DBG_FLOW = common dso_local global i32 0, align 4
@DBG_VCC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"hrz_open %x %x\00", align 1
@DBG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"VPI/VCI out of range: %hd/%d\00", align 1
@DBG_QOS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"AAL0\00", align 1
@aal0 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"AAL3/4\00", align 1
@aal34 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"AAL5\00", align 1
@aal5 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"Bad AAL!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"TX:\00", align 1
@IDLE_RATE_TYPE = common dso_local global i8* null, align 8
@CLOCK_DISABLE = common dso_local global i8* null, align 8
@ATM_NONE = common dso_local global i32 0, align 4
@max_tx_size = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"TX max_sdu check failed\00", align 1
@round_nearest = common dso_local global i32 0, align 4
@ABR_RATE_TYPE = common dso_local global i8* null, align 8
@round_down = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"snatching all remaining TX bandwidth\00", align 1
@round_up = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"could not make rate from TX PCR\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"TX PCR failed consistency check\00", align 1
@CBR_RATE_TYPE = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [29 x i8] c"unsupported TX traffic class\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"RX:\00", align 1
@max_rx_size = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"RX max_sdu check failed\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"snatching all remaining RX bandwidth\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"RX PCR failed consistency check\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"unsupported RX traffic class\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"AAL not supported\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"out of memory!\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [23 x i8] c"not enough TX PCR left\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [23 x i8] c"not enough RX PCR left\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"reserving %u TX PCR and %u RX PCR\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"insufficient cell rate resources\00", align 1
@ATM_VF_ADDR = common dso_local global i32 0, align 4
@DBG_ERR = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [23 x i8] c"VC already open for RX\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@ATM_VCI_UNSPEC = common dso_local global i32 0, align 4
@ATM_VPI_UNSPEC = common dso_local global i16 0, align 2
@BUCKET_MAX_SIZE = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@VBR_RATE_TYPE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*)* @hrz_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hrz_open(%struct.atm_vcc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.atm_qos*, align 8
  %7 = alloca %struct.atm_trafprm*, align 8
  %8 = alloca %struct.atm_trafprm*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  %17 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %18 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_10__* @HRZ_DEV(i32 %19)
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %9, align 8
  %21 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %22 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %21, i32 0, i32 0
  %23 = load i16, i16* %22, align 8
  store i16 %23, i16* %12, align 2
  %24 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %25 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* @DBG_FLOW, align 4
  %28 = load i32, i32* @DBG_VCC, align 4
  %29 = or i32 %27, %28
  %30 = load i16, i16* %12, align 2
  %31 = sext i16 %30 to i32
  %32 = load i32, i32* %13, align 4
  %33 = call i32 (i32, i8*, ...) @PRINTD(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i16, i16* %12, align 2
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @vpivci_to_channel(i64* %5, i16 signext %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %1
  %40 = load i32, i32* @DBG_WARN, align 4
  %41 = load i32, i32* @DBG_VCC, align 4
  %42 = or i32 %40, %41
  %43 = load i16, i16* %12, align 2
  %44 = sext i16 %43 to i32
  %45 = load i32, i32* %13, align 4
  %46 = call i32 (i32, i8*, ...) @PRINTD(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %388

48:                                               ; preds = %1
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 0, i32* %51, align 8
  %52 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %53 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %52, i32 0, i32 4
  store %struct.atm_qos* %53, %struct.atm_qos** %6, align 8
  %54 = load %struct.atm_qos*, %struct.atm_qos** %6, align 8
  %55 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %78 [
    i32 134, label %57
    i32 133, label %64
    i32 132, label %71
  ]

57:                                               ; preds = %48
  %58 = load i32, i32* @DBG_QOS, align 4
  %59 = load i32, i32* @DBG_VCC, align 4
  %60 = or i32 %58, %59
  %61 = call i32 (i32, i8*, ...) @PRINTD(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i64, i64* @aal0, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store i64 %62, i64* %63, align 8
  br label %85

64:                                               ; preds = %48
  %65 = load i32, i32* @DBG_QOS, align 4
  %66 = load i32, i32* @DBG_VCC, align 4
  %67 = or i32 %65, %66
  %68 = call i32 (i32, i8*, ...) @PRINTD(i32 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i64, i64* @aal34, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store i64 %69, i64* %70, align 8
  br label %85

71:                                               ; preds = %48
  %72 = load i32, i32* @DBG_QOS, align 4
  %73 = load i32, i32* @DBG_VCC, align 4
  %74 = or i32 %72, %73
  %75 = call i32 (i32, i8*, ...) @PRINTD(i32 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i64, i64* @aal5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store i64 %76, i64* %77, align 8
  br label %85

78:                                               ; preds = %48
  %79 = load i32, i32* @DBG_QOS, align 4
  %80 = load i32, i32* @DBG_VCC, align 4
  %81 = or i32 %79, %80
  %82 = call i32 (i32, i8*, ...) @PRINTD(i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %388

85:                                               ; preds = %71, %64, %57
  %86 = load i32, i32* @DBG_QOS, align 4
  %87 = call i32 (i32, i8*, ...) @PRINTD(i32 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %88 = load %struct.atm_qos*, %struct.atm_qos** %6, align 8
  %89 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %88, i32 0, i32 2
  store %struct.atm_trafprm* %89, %struct.atm_trafprm** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 0, i32* %90, align 8
  %91 = load i8*, i8** @IDLE_RATE_TYPE, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 5
  store i8* %91, i8** %92, align 8
  %93 = load i8*, i8** @CLOCK_DISABLE, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 7
  store i8* %93, i8** %94, align 8
  %95 = load %struct.atm_trafprm*, %struct.atm_trafprm** %7, align 8
  %96 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ATM_NONE, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %179

100:                                              ; preds = %85
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.atm_trafprm*, %struct.atm_trafprm** %7, align 8
  %104 = load i32, i32* @max_tx_size, align 4
  %105 = call i32 @check_max_sdu(i64 %102, %struct.atm_trafprm* %103, i32 %104)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load i32, i32* @DBG_QOS, align 4
  %110 = call i32 (i32, i8*, ...) @PRINTD(i32 %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %111 = load i32, i32* %4, align 4
  store i32 %111, i32* %2, align 4
  br label %388

112:                                              ; preds = %100
  %113 = load %struct.atm_trafprm*, %struct.atm_trafprm** %7, align 8
  %114 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  switch i32 %115, label %173 [
    i32 129, label %116
    i32 130, label %124
  ]

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 0, i32* %117, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %119 = load i32, i32* @round_nearest, align 4
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 7
  %121 = call i32 @make_rate(%struct.TYPE_10__* %118, i32 1073741824, i32 %119, i8** %120, i32* null)
  %122 = load i8*, i8** @ABR_RATE_TYPE, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 5
  store i8* %122, i8** %123, align 8
  br label %178

124:                                              ; preds = %112
  %125 = load %struct.atm_trafprm*, %struct.atm_trafprm** %7, align 8
  %126 = call i32 @atm_pcr_goal(%struct.atm_trafprm* %125)
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* @round_down, align 4
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* @DBG_QOS, align 4
  %132 = call i32 (i32, i8*, ...) @PRINTD(i32 %131, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %14, align 4
  br label %146

136:                                              ; preds = %124
  %137 = load i32, i32* %14, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32, i32* @round_down, align 4
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %14, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %14, align 4
  br label %145

143:                                              ; preds = %136
  %144 = load i32, i32* @round_up, align 4
  store i32 %144, i32* %15, align 4
  br label %145

145:                                              ; preds = %143, %139
  br label %146

146:                                              ; preds = %145, %129
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %15, align 4
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 7
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %152 = call i32 @make_rate_with_tolerance(%struct.TYPE_10__* %147, i32 %148, i32 %149, i32 10, i8** %150, i32* %151)
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %4, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %146
  %156 = load i32, i32* @DBG_QOS, align 4
  %157 = call i32 (i32, i8*, ...) @PRINTD(i32 %156, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %158 = load i32, i32* %4, align 4
  store i32 %158, i32* %2, align 4
  br label %388

159:                                              ; preds = %146
  %160 = load %struct.atm_trafprm*, %struct.atm_trafprm** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @atm_pcr_check(%struct.atm_trafprm* %160, i32 %162)
  store i32 %163, i32* %4, align 4
  %164 = load i32, i32* %4, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = load i32, i32* @DBG_QOS, align 4
  %168 = call i32 (i32, i8*, ...) @PRINTD(i32 %167, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %169 = load i32, i32* %4, align 4
  store i32 %169, i32* %2, align 4
  br label %388

170:                                              ; preds = %159
  %171 = load i8*, i8** @CBR_RATE_TYPE, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 5
  store i8* %171, i8** %172, align 8
  br label %178

173:                                              ; preds = %112
  %174 = load i32, i32* @DBG_QOS, align 4
  %175 = call i32 (i32, i8*, ...) @PRINTD(i32 %174, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %2, align 4
  br label %388

178:                                              ; preds = %170, %116
  br label %179

179:                                              ; preds = %178, %85
  %180 = load i32, i32* @DBG_QOS, align 4
  %181 = call i32 (i32, i8*, ...) @PRINTD(i32 %180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %182 = load %struct.atm_qos*, %struct.atm_qos** %6, align 8
  %183 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %182, i32 0, i32 1
  store %struct.atm_trafprm* %183, %struct.atm_trafprm** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  store i32 0, i32* %184, align 4
  %185 = load %struct.atm_trafprm*, %struct.atm_trafprm** %8, align 8
  %186 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @ATM_NONE, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %245

190:                                              ; preds = %179
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.atm_trafprm*, %struct.atm_trafprm** %8, align 8
  %194 = load i32, i32* @max_rx_size, align 4
  %195 = call i32 @check_max_sdu(i64 %192, %struct.atm_trafprm* %193, i32 %194)
  store i32 %195, i32* %4, align 4
  %196 = load i32, i32* %4, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %190
  %199 = load i32, i32* @DBG_QOS, align 4
  %200 = call i32 (i32, i8*, ...) @PRINTD(i32 %199, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %201 = load i32, i32* %4, align 4
  store i32 %201, i32* %2, align 4
  br label %388

202:                                              ; preds = %190
  %203 = load %struct.atm_trafprm*, %struct.atm_trafprm** %8, align 8
  %204 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  switch i32 %205, label %239 [
    i32 129, label %206
    i32 130, label %207
  ]

206:                                              ; preds = %202
  br label %244

207:                                              ; preds = %202
  %208 = load %struct.atm_trafprm*, %struct.atm_trafprm** %8, align 8
  %209 = call i32 @atm_pcr_goal(%struct.atm_trafprm* %208)
  store i32 %209, i32* %16, align 4
  %210 = load i32, i32* %16, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %207
  %213 = load i32, i32* @DBG_QOS, align 4
  %214 = call i32 (i32, i8*, ...) @PRINTD(i32 %213, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %16, align 4
  br label %225

218:                                              ; preds = %207
  %219 = load i32, i32* %16, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = load i32, i32* %16, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %16, align 4
  br label %224

224:                                              ; preds = %221, %218
  br label %225

225:                                              ; preds = %224, %212
  %226 = load i32, i32* %16, align 4
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  store i32 %226, i32* %227, align 4
  %228 = load %struct.atm_trafprm*, %struct.atm_trafprm** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @atm_pcr_check(%struct.atm_trafprm* %228, i32 %230)
  store i32 %231, i32* %4, align 4
  %232 = load i32, i32* %4, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %225
  %235 = load i32, i32* @DBG_QOS, align 4
  %236 = call i32 (i32, i8*, ...) @PRINTD(i32 %235, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %237 = load i32, i32* %4, align 4
  store i32 %237, i32* %2, align 4
  br label %388

238:                                              ; preds = %225
  br label %244

239:                                              ; preds = %202
  %240 = load i32, i32* @DBG_QOS, align 4
  %241 = call i32 (i32, i8*, ...) @PRINTD(i32 %240, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  %242 = load i32, i32* @EINVAL, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %2, align 4
  br label %388

244:                                              ; preds = %238, %206
  br label %245

245:                                              ; preds = %244, %179
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @aal5, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %255

250:                                              ; preds = %245
  %251 = load i32, i32* @DBG_QOS, align 4
  %252 = call i32 (i32, i8*, ...) @PRINTD(i32 %251, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %253 = load i32, i32* @EINVAL, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %2, align 4
  br label %388

255:                                              ; preds = %245
  %256 = load i32, i32* @GFP_KERNEL, align 4
  %257 = call %struct.TYPE_9__* @kmalloc(i32 56, i32 %256)
  store %struct.TYPE_9__* %257, %struct.TYPE_9__** %11, align 8
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %259 = icmp ne %struct.TYPE_9__* %258, null
  br i1 %259, label %265, label %260

260:                                              ; preds = %255
  %261 = load i32, i32* @KERN_ERR, align 4
  %262 = call i32 @PRINTK(i32 %261, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %263 = load i32, i32* @ENOMEM, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %2, align 4
  br label %388

265:                                              ; preds = %255
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %267 = bitcast %struct.TYPE_9__* %266 to i8*
  %268 = bitcast %struct.TYPE_9__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %267, i8* align 8 %268, i64 56, i1 false)
  store i32 0, i32* %4, align 4
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 3
  %271 = call i32 @spin_lock(i32* %270)
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp sgt i32 %273, %276
  br i1 %277, label %278, label %283

278:                                              ; preds = %265
  %279 = load i32, i32* @DBG_QOS, align 4
  %280 = call i32 (i32, i8*, ...) @PRINTD(i32 %279, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %281 = load i32, i32* @EAGAIN, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %4, align 4
  br label %283

283:                                              ; preds = %278, %265
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = icmp sgt i32 %285, %288
  br i1 %289, label %290, label %295

290:                                              ; preds = %283
  %291 = load i32, i32* @DBG_QOS, align 4
  %292 = call i32 (i32, i8*, ...) @PRINTD(i32 %291, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  %293 = load i32, i32* @EAGAIN, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %4, align 4
  br label %295

295:                                              ; preds = %290, %283
  %296 = load i32, i32* %4, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %319, label %298

298:                                              ; preds = %295
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = sub nsw i32 %303, %300
  store i32 %304, i32* %302, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = sub nsw i32 %309, %306
  store i32 %310, i32* %308, align 4
  %311 = load i32, i32* @DBG_QOS, align 4
  %312 = load i32, i32* @DBG_VCC, align 4
  %313 = or i32 %311, %312
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  %317 = load i32, i32* %316, align 4
  %318 = call i32 (i32, i8*, ...) @PRINTD(i32 %313, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i32 %315, i32 %317)
  br label %319

319:                                              ; preds = %298, %295
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 3
  %322 = call i32 @spin_unlock(i32* %321)
  %323 = load i32, i32* %4, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %319
  %326 = load i32, i32* @DBG_QOS, align 4
  %327 = load i32, i32* @DBG_VCC, align 4
  %328 = or i32 %326, %327
  %329 = call i32 (i32, i8*, ...) @PRINTD(i32 %328, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0))
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %331 = call i32 @kfree(%struct.TYPE_9__* %330)
  %332 = load i32, i32* %4, align 4
  store i32 %332, i32* %2, align 4
  br label %388

333:                                              ; preds = %319
  %334 = load i32, i32* @ATM_VF_ADDR, align 4
  %335 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %336 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %335, i32 0, i32 2
  %337 = call i32 @set_bit(i32 %334, i32* %336)
  %338 = load %struct.atm_trafprm*, %struct.atm_trafprm** %8, align 8
  %339 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @ATM_NONE, align 4
  %342 = icmp ne i32 %340, %341
  br i1 %342, label %343, label %379

343:                                              ; preds = %333
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 2
  %346 = load %struct.atm_vcc**, %struct.atm_vcc*** %345, align 8
  %347 = load i64, i64* %5, align 8
  %348 = getelementptr inbounds %struct.atm_vcc*, %struct.atm_vcc** %346, i64 %347
  %349 = load %struct.atm_vcc*, %struct.atm_vcc** %348, align 8
  %350 = icmp ne %struct.atm_vcc* %349, null
  br i1 %350, label %351, label %358

351:                                              ; preds = %343
  %352 = load i32, i32* @DBG_ERR, align 4
  %353 = load i32, i32* @DBG_VCC, align 4
  %354 = or i32 %352, %353
  %355 = call i32 (i32, i8*, ...) @PRINTD(i32 %354, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0))
  %356 = load i32, i32* @EBUSY, align 4
  %357 = sub nsw i32 0, %356
  store i32 %357, i32* %4, align 4
  br label %358

358:                                              ; preds = %351, %343
  %359 = load i32, i32* %4, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %365, label %361

361:                                              ; preds = %358
  %362 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %363 = load i64, i64* %5, align 8
  %364 = call i32 @hrz_open_rx(%struct.TYPE_10__* %362, i64 %363)
  store i32 %364, i32* %4, align 4
  br label %365

365:                                              ; preds = %361, %358
  %366 = load i32, i32* %4, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %365
  %369 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %370 = call i32 @kfree(%struct.TYPE_9__* %369)
  %371 = load i32, i32* %4, align 4
  store i32 %371, i32* %2, align 4
  br label %388

372:                                              ; preds = %365
  %373 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %374 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 2
  %376 = load %struct.atm_vcc**, %struct.atm_vcc*** %375, align 8
  %377 = load i64, i64* %5, align 8
  %378 = getelementptr inbounds %struct.atm_vcc*, %struct.atm_vcc** %376, i64 %377
  store %struct.atm_vcc* %373, %struct.atm_vcc** %378, align 8
  br label %379

379:                                              ; preds = %372, %333
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %381 = bitcast %struct.TYPE_9__* %380 to i8*
  %382 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %383 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %382, i32 0, i32 3
  store i8* %381, i8** %383, align 8
  %384 = load i32, i32* @ATM_VF_READY, align 4
  %385 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %386 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %385, i32 0, i32 2
  %387 = call i32 @set_bit(i32 %384, i32* %386)
  store i32 0, i32* %2, align 4
  br label %388

388:                                              ; preds = %379, %368, %325, %260, %250, %239, %234, %198, %173, %166, %155, %108, %78, %39
  %389 = load i32, i32* %2, align 4
  ret i32 %389
}

declare dso_local %struct.TYPE_10__* @HRZ_DEV(i32) #1

declare dso_local i32 @PRINTD(i32, i8*, ...) #1

declare dso_local i32 @vpivci_to_channel(i64*, i16 signext, i32) #1

declare dso_local i32 @check_max_sdu(i64, %struct.atm_trafprm*, i32) #1

declare dso_local i32 @make_rate(%struct.TYPE_10__*, i32, i32, i8**, i32*) #1

declare dso_local i32 @atm_pcr_goal(%struct.atm_trafprm*) #1

declare dso_local i32 @make_rate_with_tolerance(%struct.TYPE_10__*, i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @atm_pcr_check(%struct.atm_trafprm*, i32) #1

declare dso_local %struct.TYPE_9__* @kmalloc(i32, i32) #1

declare dso_local i32 @PRINTK(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hrz_open_rx(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

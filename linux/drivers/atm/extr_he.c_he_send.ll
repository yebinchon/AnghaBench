; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { %struct.TYPE_10__*, {}*, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.sk_buff = type { i32, i32 }
%struct.he_dev = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.he_tpd = type { i32, i32, %struct.sk_buff*, %struct.atm_vcc*, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_12__ = type { %struct.atm_vcc* }

@.str = private unnamed_addr constant [12 x i8] c"send %d.%d\0A\00", align 1
@ATM_AAL0 = common dso_local global i64 0, align 8
@ATM_AAL0_SDU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"buffer too large (or small) -- %d bytes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"no scatter/gather support\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ATM_AAL5 = common dso_local global i64 0, align 8
@TPD_USERCELL = common dso_local global i32 0, align 4
@ATM_HDR_PTI_MASK = common dso_local global i8 0, align 1
@ATM_HDR_PTI_SHIFT = common dso_local global i8 0, align 1
@ATM_HDR_CLP = common dso_local global i8 0, align 1
@TPD_CLP = common dso_local global i32 0, align 4
@ATM_CELL_PAYLOAD = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TPD_LST = common dso_local global i32 0, align 4
@TPD_INT = common dso_local global i32 0, align 4
@HE_TPD_BUFSIZE = common dso_local global i32 0, align 4
@TPD_MAXIOV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, %struct.sk_buff*)* @he_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @he_send(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.he_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.he_tpd*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %14 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.he_dev* @HE_DEV(i32 %15)
  store %struct.he_dev* %16, %struct.he_dev** %7, align 8
  %17 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %18 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %19 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %22 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @he_mkcid(%struct.he_dev* %17, i32 %20, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %26 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %29 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @HPRINTK(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 65535
  br i1 %35, label %49, label %36

36:                                               ; preds = %2
  %37 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %38 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ATM_AAL0, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %36
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ATM_AAL0_SDU, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %43, %2
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %55 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %54, i32 0, i32 1
  %56 = bitcast {}** %55 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %57 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %56, align 8
  %58 = icmp ne i32 (%struct.atm_vcc*, %struct.sk_buff*)* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %49
  %60 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %61 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %60, i32 0, i32 1
  %62 = bitcast {}** %61 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %63 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %62, align 8
  %64 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call i32 %63(%struct.atm_vcc* %64, %struct.sk_buff* %65)
  br label %70

67:                                               ; preds = %49
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %68)
  br label %70

70:                                               ; preds = %67, %59
  %71 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %72 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = call i32 @atomic_inc(i32* %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %255

78:                                               ; preds = %43, %36
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = call %struct.TYPE_11__* @skb_shinfo(%struct.sk_buff* %79)
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %78
  %85 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %86 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %87 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %86, i32 0, i32 1
  %88 = bitcast {}** %87 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %89 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %88, align 8
  %90 = icmp ne i32 (%struct.atm_vcc*, %struct.sk_buff*)* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  %92 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %93 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %92, i32 0, i32 1
  %94 = bitcast {}** %93 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %95 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %94, align 8
  %96 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = call i32 %95(%struct.atm_vcc* %96, %struct.sk_buff* %97)
  br label %102

99:                                               ; preds = %84
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %100)
  br label %102

102:                                              ; preds = %99, %91
  %103 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %104 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = call i32 @atomic_inc(i32* %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %255

110:                                              ; preds = %78
  %111 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %112 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %111, i32 0, i32 0
  %113 = load i64, i64* %6, align 8
  %114 = call i32 @spin_lock_irqsave(i32* %112, i64 %113)
  %115 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %116 = call %struct.he_tpd* @__alloc_tpd(%struct.he_dev* %115)
  store %struct.he_tpd* %116, %struct.he_tpd** %9, align 8
  %117 = load %struct.he_tpd*, %struct.he_tpd** %9, align 8
  %118 = icmp eq %struct.he_tpd* %117, null
  br i1 %118, label %119, label %148

119:                                              ; preds = %110
  %120 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %121 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %120, i32 0, i32 1
  %122 = bitcast {}** %121 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %123 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %122, align 8
  %124 = icmp ne i32 (%struct.atm_vcc*, %struct.sk_buff*)* %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %119
  %126 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %127 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %126, i32 0, i32 1
  %128 = bitcast {}** %127 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %129 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %128, align 8
  %130 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = call i32 %129(%struct.atm_vcc* %130, %struct.sk_buff* %131)
  br label %136

133:                                              ; preds = %119
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %135 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %134)
  br label %136

136:                                              ; preds = %133, %125
  %137 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %138 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %137, i32 0, i32 0
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = call i32 @atomic_inc(i32* %140)
  %142 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %143 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %142, i32 0, i32 0
  %144 = load i64, i64* %6, align 8
  %145 = call i32 @spin_unlock_irqrestore(i32* %143, i64 %144)
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %255

148:                                              ; preds = %110
  %149 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %150 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @ATM_AAL5, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %148
  %156 = load i32, i32* @TPD_USERCELL, align 4
  %157 = call i32 @TPD_CELLTYPE(i32 %156)
  %158 = load %struct.he_tpd*, %struct.he_tpd** %9, align 8
  %159 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %204

162:                                              ; preds = %148
  %163 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 3
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to i8*
  store i8* %168, i8** %10, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = load i8, i8* @ATM_HDR_PTI_MASK, align 1
  %173 = sext i8 %172 to i32
  %174 = and i32 %171, %173
  %175 = load i8, i8* @ATM_HDR_PTI_SHIFT, align 1
  %176 = sext i8 %175 to i32
  %177 = ashr i32 %174, %176
  store i32 %177, i32* %12, align 4
  %178 = load i8*, i8** %10, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = load i8, i8* @ATM_HDR_CLP, align 1
  %182 = sext i8 %181 to i32
  %183 = and i32 %180, %182
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @TPD_CELLTYPE(i32 %184)
  %186 = load %struct.he_tpd*, %struct.he_tpd** %9, align 8
  %187 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load i32, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %162
  %193 = load i32, i32* @TPD_CLP, align 4
  %194 = load %struct.he_tpd*, %struct.he_tpd** %9, align 8
  %195 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  br label %198

198:                                              ; preds = %192, %162
  %199 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %200 = load i32, i32* @ATM_AAL0_SDU, align 4
  %201 = load i32, i32* @ATM_CELL_PAYLOAD, align 4
  %202 = sub nsw i32 %200, %201
  %203 = call i32 @skb_pull(%struct.sk_buff* %199, i32 %202)
  br label %204

204:                                              ; preds = %198, %155
  %205 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %206 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %205, i32 0, i32 1
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %210 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %213 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @DMA_TO_DEVICE, align 4
  %216 = call i8* @dma_map_single(i32* %208, i32 %211, i32 %214, i32 %215)
  %217 = load %struct.he_tpd*, %struct.he_tpd** %9, align 8
  %218 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %217, i32 0, i32 4
  store i8* %216, i8** %218, align 8
  %219 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %220 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @TPD_LST, align 4
  %223 = or i32 %221, %222
  %224 = load %struct.he_tpd*, %struct.he_tpd** %9, align 8
  %225 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* @TPD_INT, align 4
  %227 = load %struct.he_tpd*, %struct.he_tpd** %9, align 8
  %228 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  %231 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %232 = load %struct.he_tpd*, %struct.he_tpd** %9, align 8
  %233 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %232, i32 0, i32 3
  store %struct.atm_vcc* %231, %struct.atm_vcc** %233, align 8
  %234 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %235 = load %struct.he_tpd*, %struct.he_tpd** %9, align 8
  %236 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %235, i32 0, i32 2
  store %struct.sk_buff* %234, %struct.sk_buff** %236, align 8
  %237 = call i32 (...) @wmb()
  %238 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %239 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %240 = call %struct.TYPE_12__* @ATM_SKB(%struct.sk_buff* %239)
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  store %struct.atm_vcc* %238, %struct.atm_vcc** %241, align 8
  %242 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %243 = load %struct.he_tpd*, %struct.he_tpd** %9, align 8
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @__enqueue_tpd(%struct.he_dev* %242, %struct.he_tpd* %243, i32 %244)
  %246 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %247 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %246, i32 0, i32 0
  %248 = load i64, i64* %6, align 8
  %249 = call i32 @spin_unlock_irqrestore(i32* %247, i64 %248)
  %250 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %251 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %250, i32 0, i32 0
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  %254 = call i32 @atomic_inc(i32* %253)
  store i32 0, i32* %3, align 4
  br label %255

255:                                              ; preds = %204, %136, %102, %70
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local %struct.he_dev* @HE_DEV(i32) #1

declare dso_local i32 @he_mkcid(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @HPRINTK(i8*, i32, i32) #1

declare dso_local i32 @hprintk(i8*, ...) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.TYPE_11__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.he_tpd* @__alloc_tpd(%struct.he_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @TPD_CELLTYPE(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i8* @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local %struct.TYPE_12__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @__enqueue_tpd(%struct.he_dev*, %struct.he_tpd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

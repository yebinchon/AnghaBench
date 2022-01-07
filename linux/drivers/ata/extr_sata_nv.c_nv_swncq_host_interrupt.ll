; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_swncq_host_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_swncq_host_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_7__, %struct.nv_swncq_port_priv* }
%struct.TYPE_5__ = type { i32 (%struct.ata_port*)*, i32 (%struct.TYPE_7__*, i32, i32)*, i64 (%struct.TYPE_7__*, i32, i32*)* }
%struct.TYPE_7__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32, i32, i32 }
%struct.nv_swncq_port_priv = type { i32, i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.ata_queued_cmd = type { i32 }

@ATA_PFLAG_FROZEN = common dso_local global i32 0, align 4
@NV_SWNCQ_IRQ_HOTPLUG = common dso_local global i32 0, align 4
@SCR_ERROR = common dso_local global i32 0, align 4
@ATA_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Ata error. fis:0x%X\00", align 1
@AC_ERR_DEV = common dso_local global i32 0, align 4
@ATA_EH_RESET = common dso_local global i32 0, align 4
@NV_SWNCQ_IRQ_BACKOUT = common dso_local global i32 0, align 4
@ncq_saw_backout = common dso_local global i32 0, align 4
@NV_SWNCQ_IRQ_SDBFIS = common dso_local global i32 0, align 4
@ncq_saw_sdb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"id 0x%x SWNCQ: qc_active 0x%X dhfis 0x%X dmafis 0x%X sactive 0x%X\0A\00", align 1
@NV_SWNCQ_IRQ_DHREGFIS = common dso_local global i32 0, align 4
@ncq_saw_d2h = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"illegal fis transaction\00", align 1
@AC_ERR_HSM = common dso_local global i32 0, align 4
@NV_SWNCQ_IRQ_DMASETUP = common dso_local global i32 0, align 4
@ncq_saw_dmas = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"send next command\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"fis:0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, i32)* @nv_swncq_host_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_swncq_host_interrupt(%struct.ata_port* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv_swncq_port_priv*, align 8
  %6 = alloca %struct.ata_queued_cmd*, align 8
  %7 = alloca %struct.ata_eh_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %11 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %10, i32 0, i32 4
  %12 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %11, align 8
  store %struct.nv_swncq_port_priv* %12, %struct.nv_swncq_port_priv** %5, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store %struct.ata_eh_info* %15, %struct.ata_eh_info** %7, align 8
  %16 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %19, align 8
  %21 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %22 = call i32 %20(%struct.ata_port* %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @nv_swncq_irq_clear(%struct.ata_port* %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %254

29:                                               ; preds = %2
  %30 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %31 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ATA_PFLAG_FROZEN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %254

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @NV_SWNCQ_IRQ_HOTPLUG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @nv_swncq_hotplug(%struct.ata_port* %43, i32 %44)
  br label %254

46:                                               ; preds = %37
  %47 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %48 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %254

52:                                               ; preds = %46
  %53 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %54 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i64 (%struct.TYPE_7__*, i32, i32*)*, i64 (%struct.TYPE_7__*, i32, i32*)** %56, align 8
  %58 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %59 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %58, i32 0, i32 3
  %60 = load i32, i32* @SCR_ERROR, align 4
  %61 = call i64 %57(%struct.TYPE_7__* %59, i32 %60, i32* %8)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %254

64:                                               ; preds = %52
  %65 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %66 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** %68, align 8
  %70 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %71 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %70, i32 0, i32 3
  %72 = load i32, i32* @SCR_ERROR, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 %69(%struct.TYPE_7__* %71, i32 %72, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @ATA_ERR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %64
  %80 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %81 = call i32 @ata_ehi_clear_desc(%struct.ata_eh_info* %80)
  %82 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 (%struct.ata_eh_info*, i8*, ...) @ata_ehi_push_desc(%struct.ata_eh_info* %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @AC_ERR_DEV, align 4
  %86 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %87 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %92 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* @ATA_EH_RESET, align 4
  %96 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %97 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %101 = call i32 @ata_port_freeze(%struct.ata_port* %100)
  br label %254

102:                                              ; preds = %64
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @NV_SWNCQ_IRQ_BACKOUT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32, i32* @ncq_saw_backout, align 4
  %109 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %110 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %102
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @NV_SWNCQ_IRQ_SDBFIS, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %146

118:                                              ; preds = %113
  %119 = load i32, i32* @ncq_saw_sdb, align 4
  %120 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %121 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %125 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %128 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %131 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %134 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %137 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @readl(i32 %138)
  %140 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %126, i32 %129, i32 %132, i32 %135, i32 %139)
  %141 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %142 = call i64 @nv_swncq_sdbfis(%struct.ata_port* %141)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %118
  br label %248

145:                                              ; preds = %118
  br label %146

146:                                              ; preds = %145, %113
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* @NV_SWNCQ_IRQ_DHREGFIS, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %226

151:                                              ; preds = %146
  %152 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %153 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 1, %154
  %156 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %157 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load i32, i32* @ncq_saw_d2h, align 4
  %161 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %162 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  %165 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %166 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @ncq_saw_sdb, align 4
  %169 = load i32, i32* @ncq_saw_backout, align 4
  %170 = or i32 %168, %169
  %171 = and i32 %167, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %151
  %174 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %175 = call i32 (%struct.ata_eh_info*, i8*, ...) @ata_ehi_push_desc(%struct.ata_eh_info* %174, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %176 = load i32, i32* @AC_ERR_HSM, align 4
  %177 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %178 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  %181 = load i32, i32* @ATA_EH_RESET, align 4
  %182 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %183 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %248

186:                                              ; preds = %151
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @NV_SWNCQ_IRQ_DMASETUP, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %225, label %191

191:                                              ; preds = %186
  %192 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %193 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @ncq_saw_dmas, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %225, label %198

198:                                              ; preds = %191
  %199 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %200 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %199, i32 0, i32 1
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %202, align 8
  %204 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %205 = call i32 %203(%struct.ata_port* %204)
  store i32 %205, i32* %9, align 4
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* @ATA_BUSY, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %198
  br label %247

211:                                              ; preds = %198
  %212 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %213 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %211
  %218 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %219 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %220 = call %struct.ata_queued_cmd* @nv_swncq_qc_from_dq(%struct.ata_port* %219)
  store %struct.ata_queued_cmd* %220, %struct.ata_queued_cmd** %6, align 8
  %221 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %222 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %223 = call i32 @nv_swncq_issue_atacmd(%struct.ata_port* %221, %struct.ata_queued_cmd* %222)
  br label %224

224:                                              ; preds = %217, %211
  br label %225

225:                                              ; preds = %224, %191, %186
  br label %226

226:                                              ; preds = %225, %146
  %227 = load i32, i32* %4, align 4
  %228 = load i32, i32* @NV_SWNCQ_IRQ_DMASETUP, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %246

231:                                              ; preds = %226
  %232 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %233 = call i32 @nv_swncq_tag(%struct.ata_port* %232)
  %234 = shl i32 1, %233
  %235 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %236 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  %239 = load i32, i32* @ncq_saw_dmas, align 4
  %240 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %241 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = or i32 %242, %239
  store i32 %243, i32* %241, align 8
  %244 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %245 = call i32 @nv_swncq_dmafis(%struct.ata_port* %244)
  br label %246

246:                                              ; preds = %231, %226
  br label %247

247:                                              ; preds = %246, %210
  br label %254

248:                                              ; preds = %173, %144
  %249 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %250 = load i32, i32* %4, align 4
  %251 = call i32 (%struct.ata_eh_info*, i8*, ...) @ata_ehi_push_desc(%struct.ata_eh_info* %249, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %250)
  %252 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %253 = call i32 @ata_port_freeze(%struct.ata_port* %252)
  br label %254

254:                                              ; preds = %248, %247, %79, %63, %51, %42, %36, %28
  ret void
}

declare dso_local i32 @nv_swncq_irq_clear(%struct.ata_port*, i32) #1

declare dso_local i32 @nv_swncq_hotplug(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_ehi_clear_desc(%struct.ata_eh_info*) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.ata_eh_info*, i8*, ...) #1

declare dso_local i32 @ata_port_freeze(%struct.ata_port*) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i64 @nv_swncq_sdbfis(%struct.ata_port*) #1

declare dso_local %struct.ata_queued_cmd* @nv_swncq_qc_from_dq(%struct.ata_port*) #1

declare dso_local i32 @nv_swncq_issue_atacmd(%struct.ata_port*, %struct.ata_queued_cmd*) #1

declare dso_local i32 @nv_swncq_tag(%struct.ata_port*) #1

declare dso_local i32 @nv_swncq_dmafis(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_qc_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_qc_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, %struct.TYPE_6__, i32, %struct.ata_device*, %struct.ata_port* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ata_device = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32* }
%struct.ata_port = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@ATA_QCFLAG_FAILED = common dso_local global i32 0, align 4
@ATA_PFLAG_FROZEN = common dso_local global i32 0, align 4
@ATA_QCFLAG_RESULT_TF = common dso_local global i32 0, align 4
@SETFEATURES_WC_ON = common dso_local global i32 0, align 4
@SETFEATURES_WC_OFF = common dso_local global i32 0, align 4
@SETFEATURES_RA_ON = common dso_local global i32 0, align 4
@SETFEATURES_RA_OFF = common dso_local global i32 0, align 4
@ATA_EH_REVALIDATE = common dso_local global i32 0, align 4
@ATA_DFLAG_SLEEPING = common dso_local global i32 0, align 4
@ATA_DFLAG_DUBIOUS_XFER = common dso_local global i32 0, align 4
@ATA_QCFLAG_EH_SCHEDULED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_qc_complete(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.ata_eh_info*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 5
  %8 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  store %struct.ata_port* %8, %struct.ata_port** %3, align 8
  %9 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @ledtrig_disk_activity(i32 %18)
  %20 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %160

26:                                               ; preds = %1
  %27 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %28 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %27, i32 0, i32 4
  %29 = load %struct.ata_device*, %struct.ata_device** %28, align 8
  store %struct.ata_device* %29, %struct.ata_device** %4, align 8
  %30 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %31 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store %struct.ata_eh_info* %33, %struct.ata_eh_info** %5, align 8
  %34 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %35 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %26
  %40 = load i32, i32* @ATA_QCFLAG_FAILED, align 4
  %41 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %42 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %26
  %46 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %47 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ata_tag_internal(i32 %48)
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %54 = call i32 @fill_result_tf(%struct.ata_queued_cmd* %53)
  %55 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %56 = call i32 @trace_ata_qc_complete_internal(%struct.ata_queued_cmd* %55)
  %57 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %58 = call i32 @__ata_qc_complete(%struct.ata_queued_cmd* %57)
  br label %186

59:                                               ; preds = %45
  %60 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %61 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ATA_QCFLAG_FAILED, align 4
  %64 = and i32 %62, %63
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %69 = call i32 @fill_result_tf(%struct.ata_queued_cmd* %68)
  %70 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %71 = call i32 @trace_ata_qc_complete_failed(%struct.ata_queued_cmd* %70)
  %72 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %73 = call i32 @ata_qc_schedule_eh(%struct.ata_queued_cmd* %72)
  br label %186

74:                                               ; preds = %59
  %75 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %76 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @ATA_PFLAG_FROZEN, align 4
  %79 = and i32 %77, %78
  %80 = call i32 @WARN_ON_ONCE(i32 %79)
  %81 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %82 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ATA_QCFLAG_RESULT_TF, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %74
  %88 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %89 = call i32 @fill_result_tf(%struct.ata_queued_cmd* %88)
  br label %90

90:                                               ; preds = %87, %74
  %91 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %92 = call i32 @trace_ata_qc_complete_done(%struct.ata_queued_cmd* %91)
  %93 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %94 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %146 [
    i32 130, label %97
    i32 131, label %127
    i32 129, label %127
    i32 128, label %140
  ]

97:                                               ; preds = %90
  %98 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %99 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @SETFEATURES_WC_ON, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %126

104:                                              ; preds = %97
  %105 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %106 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @SETFEATURES_WC_OFF, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %104
  %112 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %113 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @SETFEATURES_RA_ON, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %111
  %119 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %120 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @SETFEATURES_RA_OFF, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %146

126:                                              ; preds = %118, %111, %104, %97
  br label %127

127:                                              ; preds = %90, %90, %126
  %128 = load i32, i32* @ATA_EH_REVALIDATE, align 4
  %129 = load %struct.ata_eh_info*, %struct.ata_eh_info** %5, align 8
  %130 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %133 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %128
  store i32 %137, i32* %135, align 4
  %138 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %139 = call i32 @ata_port_schedule_eh(%struct.ata_port* %138)
  br label %146

140:                                              ; preds = %90
  %141 = load i32, i32* @ATA_DFLAG_SLEEPING, align 4
  %142 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %143 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %90, %140, %127, %125
  %147 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %148 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @ATA_DFLAG_DUBIOUS_XFER, align 4
  %151 = and i32 %149, %150
  %152 = call i64 @unlikely(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %146
  %155 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %156 = call i32 @ata_verify_xfer(%struct.ata_queued_cmd* %155)
  br label %157

157:                                              ; preds = %154, %146
  %158 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %159 = call i32 @__ata_qc_complete(%struct.ata_queued_cmd* %158)
  br label %186

160:                                              ; preds = %1
  %161 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %162 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @ATA_QCFLAG_EH_SCHEDULED, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  br label %186

168:                                              ; preds = %160
  %169 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %170 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %168
  %174 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %175 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @ATA_QCFLAG_RESULT_TF, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %173, %168
  %181 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %182 = call i32 @fill_result_tf(%struct.ata_queued_cmd* %181)
  br label %183

183:                                              ; preds = %180, %173
  %184 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %185 = call i32 @__ata_qc_complete(%struct.ata_queued_cmd* %184)
  br label %186

186:                                              ; preds = %52, %67, %167, %183, %157
  ret void
}

declare dso_local i32 @ledtrig_disk_activity(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ata_tag_internal(i32) #1

declare dso_local i32 @fill_result_tf(%struct.ata_queued_cmd*) #1

declare dso_local i32 @trace_ata_qc_complete_internal(%struct.ata_queued_cmd*) #1

declare dso_local i32 @__ata_qc_complete(%struct.ata_queued_cmd*) #1

declare dso_local i32 @trace_ata_qc_complete_failed(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_qc_schedule_eh(%struct.ata_queued_cmd*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @trace_ata_qc_complete_done(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_port_schedule_eh(%struct.ata_port*) #1

declare dso_local i32 @ata_verify_xfer(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

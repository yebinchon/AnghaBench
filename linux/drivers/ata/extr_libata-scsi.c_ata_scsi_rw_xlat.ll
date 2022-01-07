; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_rw_xlat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_rw_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, i32, i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32*, i32, i32, %struct.TYPE_2__*, %struct.request* }
%struct.TYPE_2__ = type { i32 }
%struct.request = type { i32 }

@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@ATA_TFLAG_FUA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"no-byte command\0A\00", align 1
@ATA_QCFLAG_IO = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ata_scsi_rw_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_rw_xlat(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %13 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %13, i32 0, i32 5
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  store %struct.scsi_cmnd* %15, %struct.scsi_cmnd** %4, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 4
  %21 = load %struct.request*, %struct.request** %20, align 8
  store %struct.request* %21, %struct.request** %6, align 8
  %22 = load %struct.request*, %struct.request** %6, align 8
  %23 = call i32 @req_get_ioprio(%struct.request* %22)
  %24 = call i32 @IOPRIO_PRIO_CLASS(i32 %23)
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 130
  br i1 %28, label %39, label %29

29:                                               ; preds = %1
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 128
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 129
  br i1 %38, label %39, label %43

39:                                               ; preds = %34, %29, %1
  %40 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %125 [
    i32 133, label %47
    i32 130, label %47
    i32 131, label %75
    i32 128, label %75
    i32 132, label %97
    i32 129, label %97
  ]

47:                                               ; preds = %43, %43
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %50, 10
  %52 = zext i1 %51 to i32
  %53 = call i32 @unlikely(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 9, i32* %12, align 4
  br label %172

56:                                               ; preds = %47
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @scsi_10_lba_len(i32* %57, i32* %9, i32* %10)
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load i32, i32* @ATA_TFLAG_FUA, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %64, %56
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @ata_check_nblocks(%struct.scsi_cmnd* %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %172

74:                                               ; preds = %68
  br label %127

75:                                               ; preds = %43, %43
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %77 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %78, 6
  %80 = zext i1 %79 to i32
  %81 = call i32 @unlikely(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 5, i32* %12, align 4
  br label %172

84:                                               ; preds = %75
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @scsi_6_lba_len(i32* %85, i32* %9, i32* %10)
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  store i32 256, i32* %10, align 4
  br label %90

90:                                               ; preds = %89, %84
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @ata_check_nblocks(%struct.scsi_cmnd* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  br label %172

96:                                               ; preds = %90
  br label %127

97:                                               ; preds = %43, %43
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %99 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %100, 16
  %102 = zext i1 %101 to i32
  %103 = call i32 @unlikely(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  store i32 15, i32* %12, align 4
  br label %172

106:                                              ; preds = %97
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @scsi_16_lba_len(i32* %107, i32* %9, i32* %10)
  %109 = load i32*, i32** %5, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load i32, i32* @ATA_TFLAG_FUA, align 4
  %116 = load i32, i32* %8, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %114, %106
  %119 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @ata_check_nblocks(%struct.scsi_cmnd* %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %118
  br label %172

124:                                              ; preds = %118
  br label %127

125:                                              ; preds = %43
  %126 = call i32 @DPRINTK(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %172

127:                                              ; preds = %124, %96, %74
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  br label %186

131:                                              ; preds = %127
  %132 = load i32, i32* @ATA_QCFLAG_IO, align 4
  %133 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %134 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %139 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %138, i32 0, i32 3
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %137, %142
  %144 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %145 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %147 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %146, i32 0, i32 3
  %148 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %149 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %155 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @ata_build_rw_tf(i32* %147, i32 %150, i32 %151, i32 %152, i32 %153, i32 %156, i32 %157)
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp eq i32 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i64 @likely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %190

165:                                              ; preds = %131
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* @ERANGE, align 4
  %168 = sub nsw i32 0, %167
  %169 = icmp eq i32 %166, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %179

171:                                              ; preds = %165
  br label %172

172:                                              ; preds = %171, %125, %123, %105, %95, %83, %73, %55
  %173 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %174 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @ata_scsi_set_invalid_field(i32 %175, %struct.scsi_cmnd* %176, i32 %177, i32 255)
  store i32 1, i32* %2, align 4
  br label %190

179:                                              ; preds = %170
  %180 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %181 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %184 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %185 = call i32 @ata_scsi_set_sense(i32 %182, %struct.scsi_cmnd* %183, i32 %184, i32 33, i32 0)
  store i32 1, i32* %2, align 4
  br label %190

186:                                              ; preds = %130
  %187 = load i32, i32* @SAM_STAT_GOOD, align 4
  %188 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %189 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 4
  store i32 1, i32* %2, align 4
  br label %190

190:                                              ; preds = %186, %179, %172, %164
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i32 @IOPRIO_PRIO_CLASS(i32) #1

declare dso_local i32 @req_get_ioprio(%struct.request*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @scsi_10_lba_len(i32*, i32*, i32*) #1

declare dso_local i32 @ata_check_nblocks(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_6_lba_len(i32*, i32*, i32*) #1

declare dso_local i32 @scsi_16_lba_len(i32*, i32*, i32*) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @ata_build_rw_tf(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ata_scsi_set_invalid_field(i32, %struct.scsi_cmnd*, i32, i32) #1

declare dso_local i32 @ata_scsi_set_sense(i32, %struct.scsi_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

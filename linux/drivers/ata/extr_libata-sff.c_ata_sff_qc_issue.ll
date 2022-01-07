; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_qc_issue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_qc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.ata_port* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.ata_link* }
%struct.ata_link = type { i32 }
%struct.ata_port = type { i32, i8* }

@ATA_FLAG_PIO_POLLING = common dso_local global i32 0, align 4
@ATA_TFLAG_POLLING = common dso_local global i32 0, align 4
@HSM_ST_LAST = common dso_local global i8* null, align 8
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@HSM_ST_FIRST = common dso_local global i8* null, align 8
@HSM_ST = common dso_local global i8* null, align 8
@ATA_DFLAG_CDB_INTR = common dso_local global i32 0, align 4
@AC_ERR_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_sff_qc_issue(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_link*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 2
  %8 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  store %struct.ata_port* %8, %struct.ata_port** %4, align 8
  %9 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %10 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load %struct.ata_link*, %struct.ata_link** %12, align 8
  store %struct.ata_link* %13, %struct.ata_link** %5, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ATA_FLAG_PIO_POLLING, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %22 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %23 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %21
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %20, %1
  %28 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %29 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %30 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ata_dev_select(%struct.ata_port* %28, i32 %33, i32 1, i32 0)
  %35 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %36 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %153 [
    i32 129, label %39
    i32 128, label %69
    i32 130, label %114
    i32 131, label %114
  ]

39:                                               ; preds = %27
  %40 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %41 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %49 = call i32 @ata_qc_set_polling(%struct.ata_queued_cmd* %48)
  br label %50

50:                                               ; preds = %47, %39
  %51 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %52 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %53 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %52, i32 0, i32 0
  %54 = call i32 @ata_tf_to_host(%struct.ata_port* %51, %struct.TYPE_4__* %53)
  %55 = load i8*, i8** @HSM_ST_LAST, align 8
  %56 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %57 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %59 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %50
  %66 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %67 = call i32 @ata_sff_queue_pio_task(%struct.ata_link* %66, i32 0)
  br label %68

68:                                               ; preds = %65, %50
  br label %155

69:                                               ; preds = %27
  %70 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %71 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %79 = call i32 @ata_qc_set_polling(%struct.ata_queued_cmd* %78)
  br label %80

80:                                               ; preds = %77, %69
  %81 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %82 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %83 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %82, i32 0, i32 0
  %84 = call i32 @ata_tf_to_host(%struct.ata_port* %81, %struct.TYPE_4__* %83)
  %85 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %86 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %80
  %93 = load i8*, i8** @HSM_ST_FIRST, align 8
  %94 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %95 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %97 = call i32 @ata_sff_queue_pio_task(%struct.ata_link* %96, i32 0)
  br label %113

98:                                               ; preds = %80
  %99 = load i8*, i8** @HSM_ST, align 8
  %100 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %101 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %103 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %98
  %110 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %111 = call i32 @ata_sff_queue_pio_task(%struct.ata_link* %110, i32 0)
  br label %112

112:                                              ; preds = %109, %98
  br label %113

113:                                              ; preds = %112, %92
  br label %155

114:                                              ; preds = %27, %27
  %115 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %116 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %124 = call i32 @ata_qc_set_polling(%struct.ata_queued_cmd* %123)
  br label %125

125:                                              ; preds = %122, %114
  %126 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %127 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %128 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %127, i32 0, i32 0
  %129 = call i32 @ata_tf_to_host(%struct.ata_port* %126, %struct.TYPE_4__* %128)
  %130 = load i8*, i8** @HSM_ST_FIRST, align 8
  %131 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %132 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %134 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %133, i32 0, i32 1
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @ATA_DFLAG_CDB_INTR, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %125
  %142 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %143 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %141, %125
  %150 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %151 = call i32 @ata_sff_queue_pio_task(%struct.ata_link* %150, i32 0)
  br label %152

152:                                              ; preds = %149, %141
  br label %155

153:                                              ; preds = %27
  %154 = load i32, i32* @AC_ERR_SYSTEM, align 4
  store i32 %154, i32* %2, align 4
  br label %156

155:                                              ; preds = %152, %113, %68
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %155, %153
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @ata_dev_select(%struct.ata_port*, i32, i32, i32) #1

declare dso_local i32 @ata_qc_set_polling(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_tf_to_host(%struct.ata_port*, %struct.TYPE_4__*) #1

declare dso_local i32 @ata_sff_queue_pio_task(%struct.ata_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

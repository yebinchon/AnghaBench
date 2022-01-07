; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_qc_issue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_qc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i64, i32, %struct.TYPE_6__*, i32, i32, i32, i32, %struct.TYPE_5__, %struct.ata_port* }
%struct.TYPE_6__ = type { i32, %struct.ata_link* }
%struct.ata_link = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ata_port = type { i64, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_queued_cmd*)*, i64 }

@ATA_QCFLAG_ACTIVE = common dso_local global i32 0, align 4
@ATA_FLAG_PIO_DMA = common dso_local global i32 0, align 4
@ATA_DFLAG_SLEEPING = common dso_local global i32 0, align 4
@ATA_EH_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"waking up from sleep\00", align 1
@AC_ERR_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_qc_issue(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 9
  %8 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  store %struct.ata_port* %8, %struct.ata_port** %3, align 8
  %9 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %9, i32 0, i32 3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.ata_link*, %struct.ata_link** %12, align 8
  store %struct.ata_link* %13, %struct.ata_link** %4, align 8
  %14 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %19 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %26 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @ata_tag_valid(i64 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %24, %1
  %31 = phi i1 [ false, %1 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON_ONCE(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @ata_is_ncq(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %30
  %38 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %39 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %42 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 1, %43
  %45 = and i32 %40, %44
  %46 = call i32 @WARN_ON_ONCE(i32 %45)
  %47 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %48 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %37
  %52 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %53 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %51, %37
  %57 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %58 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = shl i32 1, %59
  %61 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %62 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %79

65:                                               ; preds = %30
  %66 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %67 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @WARN_ON_ONCE(i32 %68)
  %70 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %71 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %75 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %78 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %65, %56
  %80 = load i32, i32* @ATA_QCFLAG_ACTIVE, align 4
  %81 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %82 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %86 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = shl i64 1, %87
  %89 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %90 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = or i64 %91, %88
  store i64 %92, i64* %90, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i64 @ata_is_data(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %79
  %97 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %98 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %103 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %108 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %106, %101, %96
  br label %183

112:                                              ; preds = %106, %79
  %113 = load i32, i32* %5, align 4
  %114 = call i64 @ata_is_dma(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %5, align 4
  %118 = call i64 @ata_is_pio(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %116
  %121 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %122 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @ATA_FLAG_PIO_DMA, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %120, %112
  %128 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %129 = call i64 @ata_sg_setup(%struct.ata_queued_cmd* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  br label %183

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %132, %120, %116
  %134 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %135 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %134, i32 0, i32 3
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @ATA_DFLAG_SLEEPING, align 4
  %140 = and i32 %138, %139
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %133
  %144 = load i32, i32* @ATA_EH_RESET, align 4
  %145 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %146 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %144
  store i32 %149, i32* %147, align 4
  %150 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %151 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %150, i32 0, i32 2
  %152 = call i32 @ata_ehi_push_desc(%struct.TYPE_8__* %151, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %153 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %154 = call i32 @ata_link_abort(%struct.ata_link* %153)
  br label %192

155:                                              ; preds = %133
  %156 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %157 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %156, i32 0, i32 2
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_queued_cmd*)** %159, align 8
  %161 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %162 = call i32 %160(%struct.ata_queued_cmd* %161)
  %163 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %164 = call i32 @trace_ata_qc_issue(%struct.ata_queued_cmd* %163)
  %165 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %166 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %165, i32 0, i32 2
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_queued_cmd*)** %168, align 8
  %170 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %171 = call i32 %169(%struct.ata_queued_cmd* %170)
  %172 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %173 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  %176 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %177 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i64 @unlikely(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %155
  br label %189

182:                                              ; preds = %155
  br label %192

183:                                              ; preds = %131, %111
  %184 = load i32, i32* @AC_ERR_SYSTEM, align 4
  %185 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %186 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %183, %181
  %190 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %191 = call i32 @ata_qc_complete(%struct.ata_queued_cmd* %190)
  br label %192

192:                                              ; preds = %189, %182, %143
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @ata_tag_valid(i64) #1

declare dso_local i64 @ata_is_ncq(i32) #1

declare dso_local i64 @ata_is_data(i32) #1

declare dso_local i64 @ata_is_dma(i32) #1

declare dso_local i64 @ata_is_pio(i32) #1

declare dso_local i64 @ata_sg_setup(%struct.ata_queued_cmd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @ata_link_abort(%struct.ata_link*) #1

declare dso_local i32 @trace_ata_qc_issue(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_qc_complete(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

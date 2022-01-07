; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i64, i32, i32, %struct.mtip_work*, i32, i32, %struct.mtip_port* }
%struct.mtip_work = type { i32, i32, i32 }
%struct.mtip_port = type { i64*, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@HOST_IRQ_STAT = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PORT_IRQ_STAT = common dso_local global i64 0, align 8
@PORT_IRQ_SDB_FIS = common dso_local global i32 0, align 4
@MTIP_MAX_SLOT_GROUPS = common dso_local global i32 0, align 4
@PORT_IRQ_ERR = common dso_local global i32 0, align 4
@MTIP_DDF_REMOVE_PENDING_BIT = common dso_local global i32 0, align 4
@PORT_IRQ_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @mtip_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_handle_irq(%struct.driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca %struct.driver_data*, align 8
  %5 = alloca %struct.mtip_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtip_work*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  %13 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  store %struct.driver_data* %13, %struct.driver_data** %4, align 8
  %14 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %15 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %14, i32 0, i32 6
  %16 = load %struct.mtip_port*, %struct.mtip_port** %15, align 8
  store %struct.mtip_port* %16, %struct.mtip_port** %5, align 8
  %17 = load i32, i32* @IRQ_NONE, align 4
  store i32 %17, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %18 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %19 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HOST_IRQ_STAT, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i8* @readl(i64 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %200

27:                                               ; preds = %1
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %30 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PORT_IRQ_STAT, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i8* @readl(i64 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, -1
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %27
  %42 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %43 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mtip_check_surprise_removal(i32 %44)
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %46, i32* %2, align 4
  br label %214

47:                                               ; preds = %27
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %50 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PORT_IRQ_STAT, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @PORT_IRQ_SDB_FIS, align 4
  %57 = and i32 %55, %56
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %158

60:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  %61 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %62 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %61, i32 0, i32 5
  %63 = call i64 @atomic_read(i32* %62)
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @WARN_ON_ONCE(i32 %65)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %97, %60
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @MTIP_MAX_SLOT_GROUPS, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %67
  %72 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %73 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %72, i32 0, i32 3
  %74 = load %struct.mtip_work*, %struct.mtip_work** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.mtip_work, %struct.mtip_work* %74, i64 %76
  store %struct.mtip_work* %77, %struct.mtip_work** %12, align 8
  %78 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %79 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = call i8* @readl(i64 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.mtip_work*, %struct.mtip_work** %12, align 8
  %88 = getelementptr inbounds %struct.mtip_work, %struct.mtip_work* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.mtip_work*, %struct.mtip_work** %12, align 8
  %90 = getelementptr inbounds %struct.mtip_work, %struct.mtip_work* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %71
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %93, %71
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %67

100:                                              ; preds = %67
  %101 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %102 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %101, i32 0, i32 5
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @atomic_set(i32* %102, i32 %103)
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %156

107:                                              ; preds = %100
  store i32 1, i32* %10, align 4
  br label %108

108:                                              ; preds = %134, %107
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @MTIP_MAX_SLOT_GROUPS, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %137

112:                                              ; preds = %108
  %113 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %114 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %113, i32 0, i32 3
  %115 = load %struct.mtip_work*, %struct.mtip_work** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.mtip_work, %struct.mtip_work* %115, i64 %117
  store %struct.mtip_work* %118, %struct.mtip_work** %12, align 8
  %119 = load %struct.mtip_work*, %struct.mtip_work** %12, align 8
  %120 = getelementptr inbounds %struct.mtip_work, %struct.mtip_work* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %112
  %124 = load %struct.mtip_work*, %struct.mtip_work** %12, align 8
  %125 = getelementptr inbounds %struct.mtip_work, %struct.mtip_work* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %128 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.mtip_work*, %struct.mtip_work** %12, align 8
  %131 = getelementptr inbounds %struct.mtip_work, %struct.mtip_work* %130, i32 0, i32 1
  %132 = call i32 @queue_work_on(i32 %126, i32 %129, i32* %131)
  br label %133

133:                                              ; preds = %123, %112
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %108

137:                                              ; preds = %108
  %138 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %139 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %138, i32 0, i32 3
  %140 = load %struct.mtip_work*, %struct.mtip_work** %139, align 8
  %141 = getelementptr inbounds %struct.mtip_work, %struct.mtip_work* %140, i64 0
  %142 = getelementptr inbounds %struct.mtip_work, %struct.mtip_work* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @likely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %137
  %147 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %148 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %149 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %148, i32 0, i32 3
  %150 = load %struct.mtip_work*, %struct.mtip_work** %149, align 8
  %151 = getelementptr inbounds %struct.mtip_work, %struct.mtip_work* %150, i64 0
  %152 = getelementptr inbounds %struct.mtip_work, %struct.mtip_work* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @mtip_workq_sdbfx(%struct.mtip_port* %147, i32 0, i32 %153)
  br label %155

155:                                              ; preds = %146, %137
  br label %157

156:                                              ; preds = %100
  store i32 1, i32* %9, align 4
  br label %157

157:                                              ; preds = %156, %155
  br label %158

158:                                              ; preds = %157, %47
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @PORT_IRQ_ERR, align 4
  %161 = and i32 %159, %160
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %187

164:                                              ; preds = %158
  %165 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %166 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @mtip_check_surprise_removal(i32 %167)
  %169 = call i64 @unlikely(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %164
  %172 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %172, i32* %2, align 4
  br label %214

173:                                              ; preds = %164
  %174 = load i32, i32* @MTIP_DDF_REMOVE_PENDING_BIT, align 4
  %175 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %176 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %175, i32 0, i32 1
  %177 = call i64 @test_bit(i32 %174, i32* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %2, align 4
  br label %214

181:                                              ; preds = %173
  %182 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @PORT_IRQ_ERR, align 4
  %185 = and i32 %183, %184
  %186 = call i32 @mtip_process_errors(%struct.driver_data* %182, i32 %185)
  br label %187

187:                                              ; preds = %181, %158
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @PORT_IRQ_LEGACY, align 4
  %190 = and i32 %188, %189
  %191 = call i64 @unlikely(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %187
  %194 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* @PORT_IRQ_LEGACY, align 4
  %197 = and i32 %195, %196
  %198 = call i32 @mtip_process_legacy(%struct.driver_data* %194, i32 %197)
  br label %199

199:                                              ; preds = %193, %187
  br label %200

200:                                              ; preds = %199, %1
  %201 = load i32, i32* %9, align 4
  %202 = call i64 @unlikely(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %200
  %205 = load i32, i32* %6, align 4
  %206 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %207 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @HOST_IRQ_STAT, align 8
  %210 = add nsw i64 %208, %209
  %211 = call i32 @writel(i32 %205, i64 %210)
  br label %212

212:                                              ; preds = %204, %200
  %213 = load i32, i32* %8, align 4
  store i32 %213, i32* %2, align 4
  br label %214

214:                                              ; preds = %212, %179, %171, %41
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local i8* @readl(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mtip_check_surprise_removal(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @queue_work_on(i32, i32, i32*) #1

declare dso_local i32 @mtip_workq_sdbfx(%struct.mtip_port*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mtip_process_errors(%struct.driver_data*, i32) #1

declare dso_local i32 @mtip_process_legacy(%struct.driver_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

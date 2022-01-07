; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c_bts_config_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_bts.c_bts_config_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bts_buffer = type { i64, i64, i32, i32, %struct.bts_phys* }
%struct.bts_phys = type { i64, i64, i64, %struct.page* }
%struct.page = type { i32 }
%struct.debug_store = type { i64, i64, i64, i64 }
%struct.TYPE_2__ = type { %struct.debug_store* }

@cpu_hw_events = common dso_local global i32 0, align 4
@BTS_SAFETY_MARGIN = common dso_local global i64 0, align 8
@BTS_RECORD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bts_buffer*)* @bts_config_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bts_config_buffer(%struct.bts_buffer* %0) #0 {
  %2 = alloca %struct.bts_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.debug_store*, align 8
  %5 = alloca %struct.TYPE_2__, align 8
  %6 = alloca %struct.bts_phys*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  store %struct.bts_buffer* %0, %struct.bts_buffer** %2, align 8
  %11 = call i32 (...) @raw_smp_processor_id()
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @cpu_hw_events, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.debug_store* @per_cpu(i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.debug_store* %14, %struct.debug_store** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %17 = load %struct.debug_store*, %struct.debug_store** %16, align 8
  store %struct.debug_store* %17, %struct.debug_store** %4, align 8
  %18 = load %struct.bts_buffer*, %struct.bts_buffer** %2, align 8
  %19 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %18, i32 0, i32 4
  %20 = load %struct.bts_phys*, %struct.bts_phys** %19, align 8
  %21 = load %struct.bts_buffer*, %struct.bts_buffer** %2, align 8
  %22 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %20, i64 %23
  store %struct.bts_phys* %24, %struct.bts_phys** %6, align 8
  store i64 0, i64* %8, align 8
  %25 = load %struct.bts_phys*, %struct.bts_phys** %6, align 8
  %26 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load %struct.bts_phys*, %struct.bts_phys** %6, align 8
  %29 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %28, i32 0, i32 3
  %30 = load %struct.page*, %struct.page** %29, align 8
  store %struct.page* %30, %struct.page** %10, align 8
  %31 = load %struct.bts_buffer*, %struct.bts_buffer** %2, align 8
  %32 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %31, i32 0, i32 3
  %33 = call i64 @local_read(i32* %32)
  store i64 %33, i64* %7, align 8
  %34 = load %struct.bts_buffer*, %struct.bts_buffer** %2, align 8
  %35 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %94, label %38

38:                                               ; preds = %1
  %39 = load %struct.bts_buffer*, %struct.bts_buffer** %2, align 8
  %40 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.bts_phys*, %struct.bts_phys** %6, align 8
  %43 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.page*, %struct.page** %10, align 8
  %46 = call i64 @buf_size(%struct.page* %45)
  %47 = add nsw i64 %44, %46
  %48 = icmp slt i64 %41, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %38
  %50 = load %struct.bts_buffer*, %struct.bts_buffer** %2, align 8
  %51 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.bts_phys*, %struct.bts_phys** %6, align 8
  %54 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = load %struct.bts_phys*, %struct.bts_phys** %6, align 8
  %58 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = sub i64 %56, %59
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %49, %38
  %62 = load %struct.bts_phys*, %struct.bts_phys** %6, align 8
  %63 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.bts_phys*, %struct.bts_phys** %6, align 8
  %66 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %64, %67
  %69 = load i64, i64* %7, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %7, align 8
  %73 = sub i64 %71, %72
  %74 = load i64, i64* @BTS_SAFETY_MARGIN, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %61
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @BTS_SAFETY_MARGIN, align 8
  %79 = sub i64 %77, %78
  store i64 %79, i64* %8, align 8
  br label %93

80:                                               ; preds = %61
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %7, align 8
  %83 = sub i64 %81, %82
  %84 = load i64, i64* @BTS_RECORD_SIZE, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* @BTS_RECORD_SIZE, align 8
  %89 = sub i64 %87, %88
  store i64 %89, i64* %8, align 8
  br label %92

90:                                               ; preds = %80
  %91 = load i64, i64* %9, align 8
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %90, %86
  br label %93

93:                                               ; preds = %92, %76
  br label %94

94:                                               ; preds = %93, %1
  %95 = load %struct.page*, %struct.page** %10, align 8
  %96 = call i64 @page_address(%struct.page* %95)
  %97 = load %struct.bts_phys*, %struct.bts_phys** %6, align 8
  %98 = getelementptr inbounds %struct.bts_phys, %struct.bts_phys* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %96, %99
  %101 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %102 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %104 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = add i64 %105, %106
  %108 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %109 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %111 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = add i64 %112, %113
  %115 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %116 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  %117 = load %struct.bts_buffer*, %struct.bts_buffer** %2, align 8
  %118 = getelementptr inbounds %struct.bts_buffer, %struct.bts_buffer* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %94
  %122 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %123 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = add i64 %124, %125
  br label %133

127:                                              ; preds = %94
  %128 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %129 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @BTS_RECORD_SIZE, align 8
  %132 = add i64 %130, %131
  br label %133

133:                                              ; preds = %127, %121
  %134 = phi i64 [ %126, %121 ], [ %132, %127 ]
  %135 = load %struct.debug_store*, %struct.debug_store** %4, align 8
  %136 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %135, i32 0, i32 3
  store i64 %134, i64* %136, align 8
  ret void
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local %struct.debug_store* @per_cpu(i32, i32) #1

declare dso_local i64 @local_read(i32*) #1

declare dso_local i64 @buf_size(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

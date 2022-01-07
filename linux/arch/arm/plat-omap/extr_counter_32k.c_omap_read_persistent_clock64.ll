; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_counter_32k.c_omap_read_persistent_clock64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_counter_32k.c_omap_read_persistent_clock64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i32 }

@cycles = common dso_local global i64 0, align 8
@sync32k_cnt_reg = common dso_local global i64 0, align 8
@persistent_mult = common dso_local global i32 0, align 4
@persistent_shift = common dso_local global i32 0, align 4
@persistent_ts = common dso_local global %struct.timespec64 zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timespec64*)* @omap_read_persistent_clock64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_read_persistent_clock64(%struct.timespec64* %0) #0 {
  %2 = alloca %struct.timespec64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.timespec64* %0, %struct.timespec64** %2, align 8
  %5 = load i64, i64* @cycles, align 8
  store i64 %5, i64* %4, align 8
  %6 = load i64, i64* @sync32k_cnt_reg, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* @sync32k_cnt_reg, align 8
  %10 = call i64 @readl_relaxed(i64 %9)
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi i64 [ %10, %8 ], [ 0, %11 ]
  store i64 %13, i64* @cycles, align 8
  %14 = load i64, i64* @cycles, align 8
  %15 = load i64, i64* %4, align 8
  %16 = sub nsw i64 %14, %15
  %17 = load i32, i32* @persistent_mult, align 4
  %18 = load i32, i32* @persistent_shift, align 4
  %19 = call i64 @clocksource_cyc2ns(i64 %16, i32 %17, i32 %18)
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @timespec64_add_ns(%struct.timespec64* @persistent_ts, i64 %20)
  %22 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %23 = bitcast %struct.timespec64* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.timespec64* @persistent_ts to i8*), i64 4, i1 false)
  ret void
}

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i64 @clocksource_cyc2ns(i64, i32, i32) #1

declare dso_local i32 @timespec64_add_ns(%struct.timespec64*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

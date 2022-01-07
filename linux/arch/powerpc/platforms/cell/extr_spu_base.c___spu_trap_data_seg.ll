; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_spu_base.c___spu_trap_data_seg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_spu_base.c___spu_trap_data_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.copro_slb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu*, i64)* @__spu_trap_data_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__spu_trap_data_seg(%struct.spu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.copro_slb, align 4
  %7 = alloca i32, align 4
  store %struct.spu* %0, %struct.spu** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.spu*, %struct.spu** %4, align 8
  %9 = getelementptr inbounds %struct.spu, %struct.spu* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @copro_calculate_slb(i32 %10, i64 %11, %struct.copro_slb* %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %42

17:                                               ; preds = %2
  %18 = load %struct.spu*, %struct.spu** %4, align 8
  %19 = load %struct.spu*, %struct.spu** %4, align 8
  %20 = getelementptr inbounds %struct.spu, %struct.spu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @spu_load_slb(%struct.spu* %18, i32 %21, %struct.copro_slb* %6)
  %23 = load %struct.spu*, %struct.spu** %4, align 8
  %24 = getelementptr inbounds %struct.spu, %struct.spu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.spu*, %struct.spu** %4, align 8
  %28 = getelementptr inbounds %struct.spu, %struct.spu* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 8
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load %struct.spu*, %struct.spu** %4, align 8
  %33 = getelementptr inbounds %struct.spu, %struct.spu* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %17
  %35 = load %struct.spu*, %struct.spu** %4, align 8
  %36 = call i32 @spu_restart_dma(%struct.spu* %35)
  %37 = load %struct.spu*, %struct.spu** %4, align 8
  %38 = getelementptr inbounds %struct.spu, %struct.spu* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %34, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @copro_calculate_slb(i32, i64, %struct.copro_slb*) #1

declare dso_local i32 @spu_load_slb(%struct.spu*, i32, %struct.copro_slb*) #1

declare dso_local i32 @spu_restart_dma(%struct.spu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

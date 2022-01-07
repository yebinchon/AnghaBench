; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cppc_cpufreq.c_cppc_find_dmi_mhz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cppc_cpufreq.c_cppc_find_dmi_mhz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_header = type { i64, i64 }

@DMI_ENTRY_PROCESSOR = common dso_local global i64 0, align 8
@DMI_ENTRY_PROCESSOR_MIN_LENGTH = common dso_local global i64 0, align 8
@DMI_PROCESSOR_MAX_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmi_header*, i8*)* @cppc_find_dmi_mhz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cppc_find_dmi_mhz(%struct.dmi_header* %0, i8* %1) #0 {
  %3 = alloca %struct.dmi_header*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.dmi_header* %0, %struct.dmi_header** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.dmi_header*, %struct.dmi_header** %3, align 8
  %9 = bitcast %struct.dmi_header* %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i64*
  store i64* %11, i64** %6, align 8
  %12 = load %struct.dmi_header*, %struct.dmi_header** %3, align 8
  %13 = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DMI_ENTRY_PROCESSOR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %2
  %18 = load %struct.dmi_header*, %struct.dmi_header** %3, align 8
  %19 = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DMI_ENTRY_PROCESSOR_MIN_LENGTH, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @DMI_PROCESSOR_MAX_SPEED, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = bitcast i32* %27 to i64*
  %29 = call i32 @get_unaligned(i64* %28)
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64*, i64** %6, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i64, i64* %7, align 8
  br label %40

37:                                               ; preds = %23
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %38, align 8
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi i64 [ %36, %35 ], [ %39, %37 ]
  %42 = load i64*, i64** %6, align 8
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %17, %2
  ret void
}

declare dso_local i32 @get_unaligned(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

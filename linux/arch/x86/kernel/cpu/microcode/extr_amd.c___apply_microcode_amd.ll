; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_amd.c___apply_microcode_amd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_amd.c___apply_microcode_amd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.microcode_amd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@MSR_AMD64_PATCH_LOADER = common dso_local global i32 0, align 4
@MSR_AMD64_PATCH_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.microcode_amd*)* @__apply_microcode_amd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__apply_microcode_amd(%struct.microcode_amd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.microcode_amd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.microcode_amd* %0, %struct.microcode_amd** %3, align 8
  %6 = load i32, i32* @MSR_AMD64_PATCH_LOADER, align 4
  %7 = load %struct.microcode_amd*, %struct.microcode_amd** %3, align 8
  %8 = getelementptr inbounds %struct.microcode_amd, %struct.microcode_amd* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = ptrtoint i32* %9 to i64
  %11 = trunc i64 %10 to i32
  %12 = call i32 @native_wrmsrl(i32 %6, i32 %11)
  %13 = load i32, i32* @MSR_AMD64_PATCH_LEVEL, align 4
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @native_rdmsr(i32 %13, i64 %14, i64 %15)
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.microcode_amd*, %struct.microcode_amd** %3, align 8
  %19 = getelementptr inbounds %struct.microcode_amd, %struct.microcode_amd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @native_wrmsrl(i32, i32) #1

declare dso_local i32 @native_rdmsr(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

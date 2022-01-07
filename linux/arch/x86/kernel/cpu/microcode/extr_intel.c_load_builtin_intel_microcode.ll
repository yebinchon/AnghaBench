; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_load_builtin_intel_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_load_builtin_intel_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpio_data = type { i32 }

@CONFIG_X86_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"intel-ucode/%02x-%02x-%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpio_data*)* @load_builtin_intel_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_builtin_intel_microcode(%struct.cpio_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpio_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [30 x i8], align 16
  store %struct.cpio_data* %0, %struct.cpio_data** %3, align 8
  store i32 1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @CONFIG_X86_32, align 4
  %10 = call i64 @IS_ENABLED(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

13:                                               ; preds = %1
  %14 = call i32 @native_cpuid(i32* %4, i32* %5, i32* %6, i32* %7)
  %15 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 0
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @x86_family(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @x86_model(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @x86_stepping(i32 %20)
  %22 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19, i32 %21)
  %23 = load %struct.cpio_data*, %struct.cpio_data** %3, align 8
  %24 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 0
  %25 = call i32 @get_builtin_firmware(%struct.cpio_data* %23, i8* %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %13, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @native_cpuid(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @x86_family(i32) #1

declare dso_local i32 @x86_model(i32) #1

declare dso_local i32 @x86_stepping(i32) #1

declare dso_local i32 @get_builtin_firmware(%struct.cpio_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

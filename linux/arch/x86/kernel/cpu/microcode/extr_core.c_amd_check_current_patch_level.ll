; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_core.c_amd_check_current_patch_level.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_core.c_amd_check_current_patch_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_AMD64_PATCH_LEVEL = common dso_local global i32 0, align 4
@CONFIG_X86_32 = common dso_local global i32 0, align 4
@final_levels = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @amd_check_current_patch_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_check_current_patch_level() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = load i32, i32* @MSR_AMD64_PATCH_LEVEL, align 4
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @native_rdmsr(i32 %6, i64 %7, i64 %8)
  %10 = load i32, i32* @CONFIG_X86_32, align 4
  %11 = call i64 @IS_ENABLED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = call i64 @__pa_nodebug(i64** @final_levels)
  %15 = inttoptr i64 %14 to i64*
  store i64* %15, i64** %5, align 8
  br label %18

16:                                               ; preds = %0
  %17 = load i64*, i64** @final_levels, align 8
  store i64* %17, i64** %5, align 8
  br label %18

18:                                               ; preds = %16, %13
  store i64 0, i64* %4, align 8
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i64*, i64** %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load i64, i64* %2, align 8
  %27 = load i64*, i64** %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 1, i32* %1, align 4
  br label %38

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %4, align 8
  br label %19

37:                                               ; preds = %19
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @native_rdmsr(i32, i64, i64) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @__pa_nodebug(i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

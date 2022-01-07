; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c_choose_random_location.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c_choose_random_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"nokaslr\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"KASLR disabled: 'nokaslr' on cmdline.\00", align 1
@KASLR_FLAG = common dso_local global i32 0, align 4
@boot_params = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"Physical KASLR disabled: no suitable memory region!\00", align 1
@CONFIG_X86_64 = common dso_local global i32 0, align 4
@LOAD_PHYSICAL_ADDR = common dso_local global i32 0, align 4
@X86_CR4_LA57 = common dso_local global i32 0, align 4
@__pgtable_l5_enabled = common dso_local global i32 0, align 4
@pgdir_shift = common dso_local global i32 0, align 4
@ptrs_per_p4d = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @choose_random_location(i64 %0, i64 %1, i64* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  %13 = call i64 @cmdline_find_option_bool(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = call i32 @warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %64

17:                                               ; preds = %5
  %18 = load i32, i32* @KASLR_FLAG, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @boot_params, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %18
  store i32 %23, i32* %21, align 4
  %24 = call i32 (...) @initialize_identity_maps()
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64*, i64** %8, align 8
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @mem_avoid_init(i64 %25, i64 %26, i64 %28)
  %30 = load i64*, i64** %8, align 8
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @min(i64 %31, i64 536870912)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @find_random_phys_addr(i64 %33, i64 %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %17
  %39 = call i32 @warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %53

40:                                               ; preds = %17
  %41 = load i64*, i64** %8, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @add_identity_map(i64 %46, i64 %47)
  %49 = load i64, i64* %11, align 8
  %50 = load i64*, i64** %8, align 8
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = call i32 (...) @finalize_identity_maps()
  br label %53

53:                                               ; preds = %51, %38
  %54 = load i32, i32* @CONFIG_X86_64, align 4
  %55 = call i64 @IS_ENABLED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @LOAD_PHYSICAL_ADDR, align 4
  %59 = load i64, i64* %9, align 8
  %60 = call i64 @find_random_virt_addr(i32 %58, i64 %59)
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i64, i64* %11, align 8
  %63 = load i64*, i64** %10, align 8
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %61, %15
  ret void
}

declare dso_local i64 @cmdline_find_option_bool(i8*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @initialize_identity_maps(...) #1

declare dso_local i32 @mem_avoid_init(i64, i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @find_random_phys_addr(i64, i64) #1

declare dso_local i32 @add_identity_map(i64, i64) #1

declare dso_local i32 @finalize_identity_maps(...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @find_random_virt_addr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_amd.c___verify_patch_section.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_amd.c___verify_patch_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECTION_HDR_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Truncated patch section.\0A\00", align 1
@UCODE_UCODE_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"Invalid type field (0x%x) in container file section header.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Patch of size %u too short.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64*, i32)* @__verify_patch_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__verify_patch_section(i32* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @SECTION_HDR_SIZE, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  store i32 0, i32* %5, align 4
  br label %54

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = bitcast i32* %23 to i64*
  store i64* %24, i64** %12, align 8
  %25 = load i64*, i64** %12, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load i64*, i64** %12, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @UCODE_UCODE_TYPE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %22
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %10, align 8
  %39 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %37, %34
  store i32 0, i32* %5, align 4
  br label %54

41:                                               ; preds = %22
  %42 = load i64, i64* %11, align 8
  %43 = icmp ult i64 %42, 4
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %11, align 8
  %49 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %47, %44
  store i32 0, i32* %5, align 4
  br label %54

51:                                               ; preds = %41
  %52 = load i64, i64* %11, align 8
  %53 = load i64*, i64** %8, align 8
  store i64 %52, i64* %53, align 8
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %50, %40, %21
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

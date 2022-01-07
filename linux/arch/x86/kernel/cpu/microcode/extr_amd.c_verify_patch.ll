; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_amd.c_verify_patch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_amd.c_verify_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.microcode_header_amd = type { i32, i32, i64, i64 }

@SECTION_HDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Patch of size %u truncated.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Per-family patch size mismatch.\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Patch-ID 0x%08x: chipset-specific code unsupported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64, i64*, i32)* @verify_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_patch(i32 %0, i32* %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.microcode_header_amd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @__verify_patch_section(i32* %17, i64 %18, i64* %14, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %89

23:                                               ; preds = %5
  %24 = load i32, i32* @SECTION_HDR_SIZE, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %9, align 8
  %27 = sub i64 %26, %25
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %14, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %14, align 8
  %36 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %34, %31
  store i32 -1, i32* %6, align 4
  br label %89

38:                                               ; preds = %23
  %39 = load i32, i32* %7, align 4
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @__verify_patch_size(i32 %39, i64 %40, i64 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45
  store i32 -1, i32* %6, align 4
  br label %89

51:                                               ; preds = %38
  %52 = load i64, i64* %14, align 8
  %53 = load i64*, i64** %10, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* @SECTION_HDR_SIZE, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = bitcast i32* %57 to %struct.microcode_header_amd*
  store %struct.microcode_header_amd* %58, %struct.microcode_header_amd** %12, align 8
  %59 = load %struct.microcode_header_amd*, %struct.microcode_header_amd** %12, align 8
  %60 = getelementptr inbounds %struct.microcode_header_amd, %struct.microcode_header_amd* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %51
  %64 = load %struct.microcode_header_amd*, %struct.microcode_header_amd** %12, align 8
  %65 = getelementptr inbounds %struct.microcode_header_amd, %struct.microcode_header_amd* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63, %51
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load %struct.microcode_header_amd*, %struct.microcode_header_amd** %12, align 8
  %73 = getelementptr inbounds %struct.microcode_header_amd, %struct.microcode_header_amd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %71, %68
  store i32 -1, i32* %6, align 4
  br label %89

77:                                               ; preds = %63
  %78 = load %struct.microcode_header_amd*, %struct.microcode_header_amd** %12, align 8
  %79 = getelementptr inbounds %struct.microcode_header_amd, %struct.microcode_header_amd* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = ashr i32 %81, 12
  %83 = add nsw i32 15, %82
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  store i32 1, i32* %6, align 4
  br label %89

88:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %87, %76, %50, %37, %22
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @__verify_patch_section(i32*, i64, i64*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @__verify_patch_size(i32, i64, i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

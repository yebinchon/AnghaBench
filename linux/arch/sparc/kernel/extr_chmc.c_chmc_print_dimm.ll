; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_chmc.c_chmc_print_dimm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_chmc.c_chmc_print_dimm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmc_bank_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.chmc_obp_mem_layout }
%struct.chmc_obp_mem_layout = type { i8** }

@SYNDROME_MIN = common dso_local global i32 0, align 4
@SYNDROME_MAX = common dso_local global i32 0, align 4
@CHMCTRL_NBANKS = common dso_local global i32 0, align 4
@CHMCTRL_NDGRPS = common dso_local global i32 0, align 4
@CHMCTRL_NDIMMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s, pin %3d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*, i32)* @chmc_print_dimm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chmc_print_dimm(i32 %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.chmc_bank_info*, align 8
  %11 = alloca %struct.chmc_obp_mem_layout*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call %struct.chmc_bank_info* @chmc_find_bank(i64 %17)
  store %struct.chmc_bank_info* %18, %struct.chmc_bank_info** %10, align 8
  %19 = load %struct.chmc_bank_info*, %struct.chmc_bank_info** %10, align 8
  %20 = icmp eq %struct.chmc_bank_info* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SYNDROME_MIN, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SYNDROME_MAX, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25, %21, %4
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 63, i8* %31, align 1
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 63, i8* %33, align 1
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  store i8 63, i8* %35, align 1
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  store i8 0, i8* %37, align 1
  store i32 0, i32* %5, align 4
  br label %96

38:                                               ; preds = %25
  %39 = load %struct.chmc_bank_info*, %struct.chmc_bank_info** %10, align 8
  %40 = getelementptr inbounds %struct.chmc_bank_info, %struct.chmc_bank_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store %struct.chmc_obp_mem_layout* %42, %struct.chmc_obp_mem_layout** %11, align 8
  %43 = load %struct.chmc_bank_info*, %struct.chmc_bank_info** %10, align 8
  %44 = getelementptr inbounds %struct.chmc_bank_info, %struct.chmc_bank_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CHMCTRL_NBANKS, align 4
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %45, %47
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @CHMCTRL_NDGRPS, align 4
  %51 = sub nsw i32 %50, 1
  %52 = and i32 %49, %51
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* @CHMCTRL_NDIMMS, align 4
  %54 = load i32, i32* %13, align 4
  %55 = mul nsw i32 %54, %53
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @SYNDROME_MIN, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %38
  %60 = load i32, i32* %6, align 4
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.chmc_obp_mem_layout*, %struct.chmc_obp_mem_layout** %11, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @get_pin_and_dimm_str(i32 %60, i64 %61, i32* %15, i8** %14, %struct.chmc_obp_mem_layout* %62, i32 %63)
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = load i32, i32* %15, align 4
  %68 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %66, i32 %67)
  br label %95

69:                                               ; preds = %38
  store i32 0, i32* %16, align 4
  br label %70

70:                                               ; preds = %91, %69
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* @CHMCTRL_NDIMMS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %70
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.chmc_obp_mem_layout*, %struct.chmc_obp_mem_layout** %11, align 8
  %77 = getelementptr inbounds %struct.chmc_obp_mem_layout, %struct.chmc_obp_mem_layout* %76, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %78, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = load i8*, i8** %8, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %8, align 8
  br label %91

91:                                               ; preds = %74
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %16, align 4
  br label %70

94:                                               ; preds = %70
  br label %95

95:                                               ; preds = %94, %59
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %29
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.chmc_bank_info* @chmc_find_bank(i64) #1

declare dso_local i32 @get_pin_and_dimm_str(i32, i64, i32*, i8**, %struct.chmc_obp_mem_layout*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

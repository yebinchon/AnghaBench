; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_check_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_check_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { i64*, i32, i32 }

@SYSC_MAX_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"register outside module range\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"overlapping registers: (%i/%i)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*)* @sysc_check_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_check_registers(%struct.sysc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %84, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SYSC_MAX_REGS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %87

12:                                               ; preds = %8
  %13 = load %struct.sysc*, %struct.sysc** %3, align 8
  %14 = getelementptr inbounds %struct.sysc, %struct.sysc* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %84

22:                                               ; preds = %12
  %23 = load %struct.sysc*, %struct.sysc** %3, align 8
  %24 = getelementptr inbounds %struct.sysc, %struct.sysc* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sysc*, %struct.sysc** %3, align 8
  %31 = getelementptr inbounds %struct.sysc, %struct.sysc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = icmp sgt i64 %29, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %22
  %37 = load %struct.sysc*, %struct.sysc** %3, align 8
  %38 = getelementptr inbounds %struct.sysc, %struct.sysc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @dev_err(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %101

43:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %78, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SYSC_MAX_REGS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %81

48:                                               ; preds = %44
  %49 = load %struct.sysc*, %struct.sysc** %3, align 8
  %50 = getelementptr inbounds %struct.sysc, %struct.sysc* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %78

58:                                               ; preds = %48
  %59 = load %struct.sysc*, %struct.sysc** %3, align 8
  %60 = getelementptr inbounds %struct.sysc, %struct.sysc* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.sysc*, %struct.sysc** %3, align 8
  %67 = getelementptr inbounds %struct.sysc, %struct.sysc* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %65, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %58
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %74, %58
  br label %78

78:                                               ; preds = %77, %57
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %44

81:                                               ; preds = %44
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %81, %21
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %8

87:                                               ; preds = %8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load %struct.sysc*, %struct.sysc** %3, align 8
  %93 = getelementptr inbounds %struct.sysc, %struct.sysc* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (i32, i8*, ...) @dev_err(i32 %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %101

100:                                              ; preds = %87
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %91, %36
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/h8300/kernel/extr_ptrace_h.c_decode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/h8300/kernel/extr_ptrace_h.c_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.optable = type { i32, i32 }

@PT_USP = common dso_local global i32 0, align 4
@PT_ER0 = common dso_local global i32 0, align 4
@PT_ER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16* (%struct.task_struct*, %struct.optable*, i8*, i16*, i8)* @decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i16* @decode(%struct.task_struct* %0, %struct.optable* %1, i8* %2, i16* %3, i8 zeroext %4) #0 {
  %6 = alloca i16*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.optable*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %7, align 8
  store %struct.optable* %1, %struct.optable** %8, align 8
  store i8* %2, i8** %9, align 8
  store i16* %3, i16** %10, align 8
  store i8 %4, i8* %11, align 1
  %15 = load %struct.optable*, %struct.optable** %8, align 8
  %16 = getelementptr inbounds %struct.optable, %struct.optable* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %123 [
    i32 132, label %18
    i32 133, label %25
    i32 134, label %32
    i32 128, label %42
    i32 131, label %52
    i32 130, label %74
    i32 129, label %97
  ]

18:                                               ; preds = %5
  %19 = load i16*, i16** %10, align 8
  %20 = load %struct.optable*, %struct.optable** %8, align 8
  %21 = getelementptr inbounds %struct.optable, %struct.optable* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %19, i64 %23
  store i16* %24, i16** %6, align 8
  br label %124

25:                                               ; preds = %5
  %26 = load i16*, i16** %10, align 8
  %27 = bitcast i16* %26 to i64*
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = and i64 %29, 16777215
  %31 = inttoptr i64 %30 to i16*
  store i16* %31, i16** %6, align 8
  br label %124

32:                                               ; preds = %5
  %33 = load i16*, i16** %10, align 8
  %34 = load i16, i16* %33, align 2
  %35 = zext i16 %34 to i32
  %36 = and i32 %35, 255
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = inttoptr i64 %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i16*
  store i16* %41, i16** %6, align 8
  br label %124

42:                                               ; preds = %5
  %43 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %44 = load i32, i32* @PT_USP, align 4
  %45 = call i64 @h8300_get_reg(%struct.task_struct* %43, i32 %44)
  %46 = inttoptr i64 %45 to i64*
  store i64* %46, i64** %13, align 8
  %47 = load i64*, i64** %13, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  %49 = load i64, i64* %48, align 8
  %50 = and i64 %49, 16777215
  %51 = inttoptr i64 %50 to i16*
  store i16* %51, i16** %6, align 8
  br label %124

52:                                               ; preds = %5
  %53 = load i16*, i16** %10, align 8
  %54 = load i16, i16* %53, align 2
  %55 = zext i16 %54 to i32
  %56 = ashr i32 %55, 4
  %57 = and i32 %56, 7
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %62 = load i32, i32* @PT_ER0, align 4
  %63 = call i64 @h8300_get_reg(%struct.task_struct* %61, i32 %62)
  store i64 %63, i64* %12, align 8
  br label %71

64:                                               ; preds = %52
  %65 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* @PT_ER1, align 4
  %69 = add nsw i32 %67, %68
  %70 = call i64 @h8300_get_reg(%struct.task_struct* %65, i32 %69)
  store i64 %70, i64* %12, align 8
  br label %71

71:                                               ; preds = %64, %60
  %72 = load i64, i64* %12, align 8
  %73 = inttoptr i64 %72 to i16*
  store i16* %73, i16** %6, align 8
  br label %124

74:                                               ; preds = %5
  %75 = load i8, i8* %11, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 85
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %80 = load i8, i8* %11, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %81, 15
  %83 = trunc i32 %82 to i8
  %84 = call i32 @isbranch(%struct.task_struct* %79, i8 signext %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %78, %74
  %87 = load i16*, i16** %10, align 8
  %88 = ptrtoint i16* %87 to i64
  %89 = load i8*, i8** %9, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i64
  %92 = add i64 %88, %91
  %93 = inttoptr i64 %92 to i16*
  store i16* %93, i16** %10, align 8
  br label %94

94:                                               ; preds = %86, %78
  %95 = load i16*, i16** %10, align 8
  %96 = getelementptr inbounds i16, i16* %95, i64 1
  store i16* %96, i16** %6, align 8
  br label %124

97:                                               ; preds = %5
  %98 = load i8, i8* %11, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %99, 92
  br i1 %100, label %111, label %101

101:                                              ; preds = %97
  %102 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = and i32 %105, 240
  %107 = ashr i32 %106, 4
  %108 = trunc i32 %107 to i8
  %109 = call i32 @isbranch(%struct.task_struct* %102, i8 signext %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %101, %97
  %112 = load i16*, i16** %10, align 8
  %113 = ptrtoint i16* %112 to i64
  %114 = load i16*, i16** %10, align 8
  %115 = getelementptr inbounds i16, i16* %114, i64 1
  %116 = load i16, i16* %115, align 2
  %117 = sext i16 %116 to i64
  %118 = add i64 %113, %117
  %119 = inttoptr i64 %118 to i16*
  store i16* %119, i16** %10, align 8
  br label %120

120:                                              ; preds = %111, %101
  %121 = load i16*, i16** %10, align 8
  %122 = getelementptr inbounds i16, i16* %121, i64 2
  store i16* %122, i16** %6, align 8
  br label %124

123:                                              ; preds = %5
  store i16* null, i16** %6, align 8
  br label %124

124:                                              ; preds = %123, %120, %94, %71, %42, %32, %25, %18
  %125 = load i16*, i16** %6, align 8
  ret i16* %125
}

declare dso_local i64 @h8300_get_reg(%struct.task_struct*, i32) #1

declare dso_local i32 @isbranch(%struct.task_struct*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

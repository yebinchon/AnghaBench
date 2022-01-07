; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_opt_diff_filter.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_opt_diff_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.diff_options* }
%struct.diff_options = type { i32 }

@diff_status_letters = common dso_local global i32 0, align 4
@filter_bit = common dso_local global i32* null, align 8
@DIFF_STATUS_FILTER_AON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"unknown change class '%c' in --diff-filter=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @diff_opt_diff_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_opt_diff_filter(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.diff_options*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.option*, %struct.option** %5, align 8
  %14 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  %15 = load %struct.diff_options*, %struct.diff_options** %14, align 8
  store %struct.diff_options* %15, %struct.diff_options** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @BUG_ON_OPT_NEG(i32 %16)
  %18 = call i32 (...) @prepare_filter_bits()
  %19 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %20 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %60, label %23

23:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %56, %23
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 97
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 122, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32
  br label %56

39:                                               ; preds = %35
  %40 = load i32, i32* @diff_status_letters, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = sub nsw i32 %41, 1
  %43 = shl i32 1, %42
  %44 = sub nsw i32 %43, 1
  %45 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %46 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** @filter_bit, align 8
  %48 = load i64, i64* @DIFF_STATUS_FILTER_AON, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %53 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %59

56:                                               ; preds = %38
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %24

59:                                               ; preds = %39, %24
  br label %60

60:                                               ; preds = %59, %3
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %122, %60
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  store i32 %67, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %125

69:                                               ; preds = %61
  %70 = load i32, i32* %10, align 4
  %71 = icmp sle i32 97, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  %74 = icmp sle i32 %73, 122
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  store i32 1, i32* %12, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @toupper(i32 %76) #3
  store i32 %77, i32* %10, align 4
  br label %79

78:                                               ; preds = %72, %69
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i32, i32* %10, align 4
  %81 = icmp sle i32 0, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = icmp sle i32 %83, 90
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32*, i32** @filter_bit, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  br label %92

91:                                               ; preds = %82, %79
  br label %92

92:                                               ; preds = %91, %85
  %93 = phi i32 [ %90, %85 ], [ 0, %91 ]
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %92
  %97 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %98 = load i8*, i8** %6, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @error(i32 %97, i8 signext %102, i8* %103)
  store i32 %104, i32* %4, align 4
  br label %126

105:                                              ; preds = %92
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load i32, i32* %11, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %112 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %121

115:                                              ; preds = %105
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %118 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %115, %108
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %61

125:                                              ; preds = %61
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %96
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i32 @prepare_filter_bits(...) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #2

declare dso_local i32 @error(i32, i8 signext, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

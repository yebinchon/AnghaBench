; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xprepare.c_xdl_clean_mmatch.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xprepare.c_xdl_clean_mmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XDL_SIMSCAN_WINDOW = common dso_local global i64 0, align 8
@XDL_KPDIS_RUN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i64)* @xdl_clean_mmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdl_clean_mmatch(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = sub nsw i64 %15, %16
  %18 = load i64, i64* @XDL_SIMSCAN_WINDOW, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @XDL_SIMSCAN_WINDOW, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %20, %4
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub nsw i64 %25, %26
  %28 = load i64, i64* @XDL_SIMSCAN_WINDOW, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @XDL_SIMSCAN_WINDOW, align 8
  %33 = add nsw i64 %31, %32
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %30, %24
  store i64 1, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 1, i64* %12, align 8
  br label %35

35:                                               ; preds = %67, %34
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = sub nsw i64 %36, %37
  %39 = load i64, i64* %8, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %10, align 8
  %45 = sub nsw i64 %43, %44
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load i64, i64* %11, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %11, align 8
  br label %66

52:                                               ; preds = %41
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %10, align 8
  %56 = sub nsw i64 %54, %55
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i64, i64* %12, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %12, align 8
  br label %65

64:                                               ; preds = %52
  br label %70

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65, %49
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %10, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %10, align 8
  br label %35

70:                                               ; preds = %64, %35
  %71 = load i64, i64* %11, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %129

74:                                               ; preds = %70
  store i64 1, i64* %10, align 8
  store i64 0, i64* %13, align 8
  store i64 1, i64* %14, align 8
  br label %75

75:                                               ; preds = %107, %74
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %10, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i64, i64* %9, align 8
  %80 = icmp sle i64 %78, %79
  br i1 %80, label %81, label %110

81:                                               ; preds = %75
  %82 = load i8*, i8** %6, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add nsw i64 %83, %84
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %81
  %90 = load i64, i64* %13, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %13, align 8
  br label %106

92:                                               ; preds = %81
  %93 = load i8*, i8** %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* %10, align 8
  %96 = add nsw i64 %94, %95
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load i64, i64* %14, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %14, align 8
  br label %105

104:                                              ; preds = %92
  br label %110

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105, %89
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %10, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %10, align 8
  br label %75

110:                                              ; preds = %104, %75
  %111 = load i64, i64* %13, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 0, i32* %5, align 4
  br label %129

114:                                              ; preds = %110
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* %13, align 8
  %117 = add nsw i64 %116, %115
  store i64 %117, i64* %13, align 8
  %118 = load i64, i64* %12, align 8
  %119 = load i64, i64* %14, align 8
  %120 = add nsw i64 %119, %118
  store i64 %120, i64* %14, align 8
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* @XDL_KPDIS_RUN, align 8
  %123 = mul nsw i64 %121, %122
  %124 = load i64, i64* %14, align 8
  %125 = load i64, i64* %13, align 8
  %126 = add nsw i64 %124, %125
  %127 = icmp slt i64 %123, %126
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %114, %113, %73
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

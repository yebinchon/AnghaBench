; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_debug.c_debug_areas_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_debug.c_debug_areas_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32*************************** (i32, i32)* @debug_areas_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32*************************** @debug_areas_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca i32***************************, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32***************************, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kmalloc_array(i32 %9, i32 8, i32 %10)
  %12 = bitcast i8* %11 to i32***************************
  store i32*************************** %12, i32**************************** %6, align 8
  %13 = load i32***************************, i32**************************** %6, align 8
  %14 = icmp ne i32*************************** %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %144

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %99, %16
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %102

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kmalloc_array(i32 %22, i32 8, i32 %23)
  %25 = bitcast i8* %24 to i32**************************
  %26 = load i32***************************, i32**************************** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32**************************, i32*************************** %26, i64 %28
  store i32************************** %25, i32*************************** %29, align 8
  %30 = load i32***************************, i32**************************** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32**************************, i32*************************** %30, i64 %32
  %34 = load i32**************************, i32*************************** %33, align 8
  %35 = icmp ne i32************************** %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %21
  br label %104

37:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %95, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %98

42:                                               ; preds = %38
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32************************************* @kzalloc(i32 %43, i32 %44)
  %46 = bitcast i32************************************* %45 to i32*************************
  %47 = load i32***************************, i32**************************** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32**************************, i32*************************** %47, i64 %49
  %51 = load i32**************************, i32*************************** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*************************, i32************************** %51, i64 %53
  store i32************************* %46, i32************************** %54, align 8
  %55 = load i32***************************, i32**************************** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32**************************, i32*************************** %55, i64 %57
  %59 = load i32**************************, i32*************************** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*************************, i32************************** %59, i64 %61
  %63 = load i32*************************, i32************************** %62, align 8
  %64 = icmp ne i32************************* %63, null
  br i1 %64, label %94, label %65

65:                                               ; preds = %42
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %83, %65
  %69 = load i32, i32* %8, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load i32***************************, i32**************************** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32**************************, i32*************************** %72, i64 %74
  %76 = load i32**************************, i32*************************** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*************************, i32************************** %76, i64 %78
  %80 = load i32*************************, i32************************** %79, align 8
  %81 = bitcast i32************************* %80 to i32***************************
  %82 = call i32 @kfree(i32*************************** %81)
  br label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %8, align 4
  br label %68

86:                                               ; preds = %68
  %87 = load i32***************************, i32**************************** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32**************************, i32*************************** %87, i64 %89
  %91 = load i32**************************, i32*************************** %90, align 8
  %92 = bitcast i32************************** %91 to i32***************************
  %93 = call i32 @kfree(i32*************************** %92)
  br label %104

94:                                               ; preds = %42
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %38

98:                                               ; preds = %38
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %17

102:                                              ; preds = %17
  %103 = load i32***************************, i32**************************** %6, align 8
  store i32*************************** %103, i32**************************** %3, align 8
  br label %145

104:                                              ; preds = %86, %36
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %138, %104
  %108 = load i32, i32* %7, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %141

110:                                              ; preds = %107
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %127, %110
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %111
  %116 = load i32***************************, i32**************************** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32**************************, i32*************************** %116, i64 %118
  %120 = load i32**************************, i32*************************** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*************************, i32************************** %120, i64 %122
  %124 = load i32*************************, i32************************** %123, align 8
  %125 = bitcast i32************************* %124 to i32***************************
  %126 = call i32 @kfree(i32*************************** %125)
  br label %127

127:                                              ; preds = %115
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %111

130:                                              ; preds = %111
  %131 = load i32***************************, i32**************************** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32**************************, i32*************************** %131, i64 %133
  %135 = load i32**************************, i32*************************** %134, align 8
  %136 = bitcast i32************************** %135 to i32***************************
  %137 = call i32 @kfree(i32*************************** %136)
  br label %138

138:                                              ; preds = %130
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %7, align 4
  br label %107

141:                                              ; preds = %107
  %142 = load i32***************************, i32**************************** %6, align 8
  %143 = call i32 @kfree(i32*************************** %142)
  br label %144

144:                                              ; preds = %141, %15
  store i32*************************** null, i32**************************** %3, align 8
  br label %145

145:                                              ; preds = %144, %102
  %146 = load i32***************************, i32**************************** %3, align 8
  ret i32*************************** %146
}

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32************************************* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i32***************************) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

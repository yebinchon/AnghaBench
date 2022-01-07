; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-rename.c_estimate_similarity.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-rename.c_estimate_similarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.diff_filespec = type { i64, i32, i32 }

@CHECK_SIZE_ONLY = common dso_local global i32 0, align 4
@MAX_SCORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.diff_filespec*, %struct.diff_filespec*, i32)* @estimate_similarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimate_similarity(%struct.repository* %0, %struct.diff_filespec* %1, %struct.diff_filespec* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.diff_filespec*, align 8
  %8 = alloca %struct.diff_filespec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.diff_filespec* %1, %struct.diff_filespec** %7, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %17 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @S_ISREG(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %23 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @S_ISREG(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %4
  store i32 0, i32* %5, align 4
  br label %151

28:                                               ; preds = %21
  %29 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %30 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load %struct.repository*, %struct.repository** %6, align 8
  %35 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %36 = load i32, i32* @CHECK_SIZE_ONLY, align 4
  %37 = call i64 @diff_populate_filespec(%struct.repository* %34, %struct.diff_filespec* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %151

40:                                               ; preds = %33, %28
  %41 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %42 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load %struct.repository*, %struct.repository** %6, align 8
  %47 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %48 = load i32, i32* @CHECK_SIZE_ONLY, align 4
  %49 = call i64 @diff_populate_filespec(%struct.repository* %46, %struct.diff_filespec* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %151

52:                                               ; preds = %45, %40
  %53 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %54 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %57 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ugt i64 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %62 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  br label %68

64:                                               ; preds = %52
  %65 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %66 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i64 [ %63, %60 ], [ %67, %64 ]
  store i64 %69, i64* %10, align 8
  %70 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %71 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %74 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %79 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  br label %85

81:                                               ; preds = %68
  %82 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %83 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i64 [ %80, %77 ], [ %84, %81 ]
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %12, align 8
  %89 = sub i64 %87, %88
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i32, i32* @MAX_SCORE, align 4
  %92 = load i32, i32* %9, align 4
  %93 = sub nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = mul i64 %90, %94
  %96 = load i64, i64* %11, align 8
  %97 = load i32, i32* @MAX_SCORE, align 4
  %98 = sext i32 %97 to i64
  %99 = mul i64 %96, %98
  %100 = icmp ult i64 %95, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %85
  store i32 0, i32* %5, align 4
  br label %151

102:                                              ; preds = %85
  %103 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %104 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  %108 = load %struct.repository*, %struct.repository** %6, align 8
  %109 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %110 = call i64 @diff_populate_filespec(%struct.repository* %108, %struct.diff_filespec* %109, i32 0)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  br label %151

113:                                              ; preds = %107, %102
  %114 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %115 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %113
  %119 = load %struct.repository*, %struct.repository** %6, align 8
  %120 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %121 = call i64 @diff_populate_filespec(%struct.repository* %119, %struct.diff_filespec* %120, i32 0)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %151

124:                                              ; preds = %118, %113
  %125 = load %struct.repository*, %struct.repository** %6, align 8
  %126 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %127 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %128 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %129 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %128, i32 0, i32 1
  %130 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %131 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %130, i32 0, i32 1
  %132 = call i64 @diffcore_count_changes(%struct.repository* %125, %struct.diff_filespec* %126, %struct.diff_filespec* %127, i32* %129, i32* %131, i64* %13, i64* %14)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  br label %151

135:                                              ; preds = %124
  %136 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %137 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %135
  store i32 0, i32* %15, align 4
  br label %149

141:                                              ; preds = %135
  %142 = load i64, i64* %13, align 8
  %143 = load i32, i32* @MAX_SCORE, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 %142, %144
  %146 = load i64, i64* %10, align 8
  %147 = udiv i64 %145, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %15, align 4
  br label %149

149:                                              ; preds = %141, %140
  %150 = load i32, i32* %15, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %149, %134, %123, %112, %101, %51, %39, %27
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @diff_populate_filespec(%struct.repository*, %struct.diff_filespec*, i32) #1

declare dso_local i64 @diffcore_count_changes(%struct.repository*, %struct.diff_filespec*, %struct.diff_filespec*, i32*, i32*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

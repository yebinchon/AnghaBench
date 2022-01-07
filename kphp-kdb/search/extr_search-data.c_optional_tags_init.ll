; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_optional_tags_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_optional_tags_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double }

@Q_optional_tags = common dso_local global i64 0, align 8
@Q_words = common dso_local global i32 0, align 4
@QT = common dso_local global i64* null, align 8
@MAX_OPTIONAL_TAGS = common dso_local global i64 0, align 8
@IHT = common dso_local global i64 0, align 8
@QW = common dso_local global i32* null, align 8
@QOTW = common dso_local global i64* null, align 8
@Q_K_Opt_Tag = common dso_local global i32 0, align 4
@optional_tags_mult_coeff = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [33 x i8] c"Q_words = %d, optinal_tags = %d\0A\00", align 1
@MAX_PRIORITY = common dso_local global i32 0, align 4
@QRP = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @optional_tags_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optional_tags_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i64 0, i64* @Q_optional_tags, align 8
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %19, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @Q_words, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load i64*, i64** @QT, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %22

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %6

22:                                               ; preds = %17, %6
  %23 = load i32, i32* %1, align 4
  store i32 %23, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @Q_words, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %81

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %79, %27
  %29 = load i32, i32* @Q_words, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i64, i64* @Q_optional_tags, align 8
  %33 = load i64, i64* @MAX_OPTIONAL_TAGS, align 8
  %34 = icmp slt i64 %32, %33
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %80

37:                                               ; preds = %35
  %38 = load i64*, i64** @QT, align 8
  %39 = load i32, i32* @Q_words, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %78

45:                                               ; preds = %37
  %46 = load i32, i32* @Q_words, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* @Q_words, align 4
  %48 = load i64, i64* @IHT, align 8
  %49 = load i64, i64* @Q_optional_tags, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32*, i32** @QW, align 8
  %52 = load i32, i32* @Q_words, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i64*, i64** @QOTW, align 8
  %57 = load i32, i32* @Q_words, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @ihe_init(i64 %50, i32 %55, i32 1, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %45
  %64 = load i64, i64* @Q_optional_tags, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* @Q_optional_tags, align 8
  %66 = load i64*, i64** @QOTW, align 8
  %67 = load i32, i32* @Q_words, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %63, %45
  %76 = load i32, i32* %2, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %2, align 4
  br label %79

78:                                               ; preds = %37
  br label %80

79:                                               ; preds = %75
  br label %28

80:                                               ; preds = %78, %35
  br label %81

81:                                               ; preds = %80, %22
  %82 = load i32, i32* @Q_K_Opt_Tag, align 4
  %83 = load i32, i32* %4, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sitofp i32 %84 to double
  %86 = fadd double 1.000000e+00, %85
  %87 = fdiv double 1.000000e+00, %86
  store double %87, double* @optional_tags_mult_coeff, align 8
  %88 = load i32, i32* @Q_words, align 4
  %89 = load i64, i64* @Q_optional_tags, align 8
  %90 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %88, i64 %89)
  %91 = load i32, i32* @Q_words, align 4
  %92 = load i32, i32* %3, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @MAX_PRIORITY, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %81
  %98 = load i32, i32* @MAX_PRIORITY, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %97, %81
  %100 = load i32, i32* %5, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32, i32* %5, align 4
  %104 = sitofp i32 %103 to double
  %105 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @QRP, i32 0, i32 0), align 8
  %106 = fdiv double %105, %104
  store double %106, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @QRP, i32 0, i32 0), align 8
  br label %107

107:                                              ; preds = %102, %99
  ret void
}

declare dso_local i64 @ihe_init(i64, i32, i32, i64) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

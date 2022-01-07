; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_parse_privacy.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_parse_privacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PL = common dso_local global i64 0, align 8
@PL_M_USER = common dso_local global i32 0, align 4
@PL_M_ALLOW = common dso_local global i32 0, align 4
@PL_M_CAT = common dso_local global i32 0, align 4
@PL_M_DENY = common dso_local global i32 0, align 4
@CAT_FR_ALL = common dso_local global i32 0, align 4
@CAT_FR_FR = common dso_local global i32 0, align 4
@PL_M_MASK = common dso_local global i32 0, align 4
@P = common dso_local global i32* null, align 8
@MAX_PRIVACY_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @parse_privacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_privacy(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  store i8* %12, i8** %6, align 8
  store i64 0, i64* @PL, align 8
  br label %13

13:                                               ; preds = %132, %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %17, label %133

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %37 [
    i32 43, label %21
    i32 42, label %25
    i32 45, label %29
    i32 47, label %33
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* @PL_M_USER, align 4
  %23 = load i32, i32* @PL_M_ALLOW, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %7, align 4
  br label %38

25:                                               ; preds = %17
  %26 = load i32, i32* @PL_M_CAT, align 4
  %27 = load i32, i32* @PL_M_ALLOW, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %7, align 4
  br label %38

29:                                               ; preds = %17
  %30 = load i32, i32* @PL_M_USER, align 4
  %31 = load i32, i32* @PL_M_DENY, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %7, align 4
  br label %38

33:                                               ; preds = %17
  %34 = load i32, i32* @PL_M_CAT, align 4
  %35 = load i32, i32* @PL_M_DENY, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %7, align 4
  br label %38

37:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %139

38:                                               ; preds = %33, %29, %25, %21
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %4, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp uge i8* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %139

44:                                               ; preds = %38
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sgt i32 %47, 57
  br i1 %48, label %49, label %68

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @PL_M_CAT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load i8*, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  switch i32 %57, label %62 [
    i32 65, label %58
    i32 71, label %60
  ]

58:                                               ; preds = %54
  %59 = load i32, i32* @CAT_FR_ALL, align 4
  store i32 %59, i32* %8, align 4
  br label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @CAT_FR_FR, align 4
  store i32 %61, i32* %8, align 4
  br label %63

62:                                               ; preds = %54
  store i32 -1, i32* %3, align 4
  br label %139

63:                                               ; preds = %60, %58
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %4, align 8
  br label %67

66:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %139

67:                                               ; preds = %63
  br label %120

68:                                               ; preds = %44
  %69 = load i8*, i8** %4, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp slt i32 %71, 48
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 -1, i32* %3, align 4
  br label %139

74:                                               ; preds = %68
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %97, %74
  %76 = load i8*, i8** %4, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = icmp ult i8* %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load i8*, i8** %4, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp sge i32 %82, 48
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i8*, i8** %4, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp sle i32 %87, 57
  br label %89

89:                                               ; preds = %84, %79, %75
  %90 = phi i1 [ false, %79 ], [ false, %75 ], [ %88, %84 ]
  br i1 %90, label %91, label %106

91:                                               ; preds = %89
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @PL_M_MASK, align 4
  %94 = sdiv i32 %93, 10
  %95 = icmp sgt i32 %92, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i32 -1, i32* %3, align 4
  br label %139

97:                                               ; preds = %91
  %98 = load i32, i32* %8, align 4
  %99 = mul nsw i32 %98, 10
  %100 = load i8*, i8** %4, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %4, align 8
  %102 = load i8, i8* %100, align 1
  %103 = sext i8 %102 to i32
  %104 = sub nsw i32 %103, 48
  %105 = add nsw i32 %99, %104
  store i32 %105, i32* %8, align 4
  br label %75

106:                                              ; preds = %89
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @PL_M_MASK, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %118, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @PL_M_CAT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32, i32* %8, align 4
  %117 = icmp sgt i32 %116, 30
  br i1 %117, label %118, label %119

118:                                              ; preds = %115, %106
  store i32 -1, i32* %3, align 4
  br label %139

119:                                              ; preds = %115, %110
  br label %120

120:                                              ; preds = %119, %67
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %121, %122
  %124 = load i32*, i32** @P, align 8
  %125 = load i64, i64* @PL, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* @PL, align 8
  %127 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32 %123, i32* %127, align 4
  %128 = load i64, i64* @PL, align 8
  %129 = load i64, i64* @MAX_PRIVACY_LEN, align 8
  %130 = icmp uge i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  store i32 -1, i32* %3, align 4
  br label %139

132:                                              ; preds = %120
  br label %13

133:                                              ; preds = %13
  %134 = load i32*, i32** @P, align 8
  %135 = load i64, i64* @PL, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32 -1, i32* %136, align 4
  %137 = load i64, i64* @PL, align 8
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %133, %131, %118, %96, %73, %66, %62, %43, %37
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

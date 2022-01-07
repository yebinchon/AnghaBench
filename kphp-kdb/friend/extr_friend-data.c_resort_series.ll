; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_resort_series.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_resort_series.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P = common dso_local global i32* null, align 8
@PL_M_CAT = common dso_local global i32 0, align 4
@PL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @resort_series to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resort_series() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %38, %0
  %4 = load i32*, i32** @P, align 8
  %5 = load i32, i32* %1, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %4, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %43

10:                                               ; preds = %3
  %11 = load i32, i32* %1, align 4
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %19, %10
  %13 = load i32*, i32** @P, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %12

22:                                               ; preds = %12
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %1, align 4
  %25 = sub nsw i32 %24, 1
  %26 = call i32 @privacy_resort(i32 %23, i32 %25, i32 1610612736)
  %27 = load i32, i32* %1, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %35, %22
  %29 = load i32*, i32** @P, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %28

38:                                               ; preds = %28
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %1, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @privacy_resort(i32 %39, i32 %41, i32 1610612736)
  br label %3

43:                                               ; preds = %3
  br label %44

44:                                               ; preds = %43, %156
  br label %45

45:                                               ; preds = %58, %44
  %46 = load i32, i32* %1, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32*, i32** @P, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 0
  br label %56

56:                                               ; preds = %48, %45
  %57 = phi i1 [ false, %45 ], [ %55, %48 ]
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = load i32, i32* %1, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %1, align 4
  br label %45

61:                                               ; preds = %56
  %62 = load i32*, i32** @P, align 8
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 -1, i32* %65, align 4
  br label %66

66:                                               ; preds = %82, %61
  %67 = load i32, i32* %1, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load i32*, i32** @P, align 8
  %71 = load i32, i32* %1, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @PL_M_CAT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br label %80

80:                                               ; preds = %69, %66
  %81 = phi i1 [ false, %66 ], [ %79, %69 ]
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = load i32, i32* %1, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %1, align 4
  br label %66

85:                                               ; preds = %80
  %86 = load i32, i32* %1, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %112, %85
  %88 = load i32*, i32** @P, align 8
  %89 = load i32, i32* %1, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %115

94:                                               ; preds = %87
  %95 = load i32*, i32** @P, align 8
  %96 = load i32, i32* %1, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %94
  %102 = load i32*, i32** @P, align 8
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** @P, align 8
  %108 = load i32, i32* %2, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %2, align 4
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  store i32 %106, i32* %111, align 4
  br label %112

112:                                              ; preds = %101, %94
  %113 = load i32, i32* %1, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %1, align 4
  br label %87

115:                                              ; preds = %87
  %116 = load i32*, i32** @P, align 8
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 -1, i32* %119, align 4
  %120 = load i32, i32* %2, align 4
  store i32 %120, i32* %1, align 4
  %121 = load i32, i32* %1, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %115
  br label %157

124:                                              ; preds = %115
  %125 = load i32*, i32** @P, align 8
  %126 = load i32, i32* %1, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %156

132:                                              ; preds = %124
  %133 = load i32, i32* %1, align 4
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %148, %132
  %136 = load i32, i32* %2, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load i32*, i32** @P, align 8
  %140 = load i32, i32* %2, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = icmp sge i32 %144, 0
  br label %146

146:                                              ; preds = %138, %135
  %147 = phi i1 [ false, %135 ], [ %145, %138 ]
  br i1 %147, label %148, label %151

148:                                              ; preds = %146
  %149 = load i32, i32* %2, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %2, align 4
  br label %135

151:                                              ; preds = %146
  %152 = load i32, i32* %2, align 4
  %153 = load i32, i32* %1, align 4
  %154 = sub nsw i32 %153, 1
  %155 = call i32 @privacy_resort(i32 %152, i32 %154, i32 1610612736)
  br label %157

156:                                              ; preds = %124
  br label %44

157:                                              ; preds = %151, %123
  %158 = load i32, i32* %1, align 4
  store i32 %158, i32* @PL, align 4
  %159 = load i32, i32* %1, align 4
  ret i32 %159
}

declare dso_local i32 @privacy_resort(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

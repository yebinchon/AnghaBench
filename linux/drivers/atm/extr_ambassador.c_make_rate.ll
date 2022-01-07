; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_make_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_make_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBG_FLOW = common dso_local global i32 0, align 4
@DBG_QOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"make_rate %u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"rate: man=%u, exp=%hu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32*)* @make_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_rate(i32 %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8 -1, i8* %10, align 1
  store i32 -1, i32* %11, align 4
  %12 = load i32, i32* @DBG_FLOW, align 4
  %13 = load i32, i32* @DBG_QOS, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i32, i8*, i32, ...) @PRINTD(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ugt i32 %17, -4194304
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %155

25:                                               ; preds = %19
  store i8 31, i8* %10, align 1
  store i32 511, i32* %11, align 4
  br label %26

26:                                               ; preds = %25
  br label %102

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %93

30:                                               ; preds = %27
  store i8 31, i8* %10, align 1
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %37, %30
  %33 = load i32, i32* %11, align 4
  %34 = and i32 %33, -2147483648
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i8, i8* %10, align 1
  %39 = zext i8 %38 to i32
  %40 = sub nsw i32 %39, 1
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %10, align 1
  %42 = load i32, i32* %11, align 4
  %43 = shl i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %32

44:                                               ; preds = %32
  %45 = load i32, i32* %11, align 4
  %46 = shl i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %7, align 4
  switch i32 %48, label %92 [
    i32 130, label %49
    i32 128, label %52
    i32 129, label %72
  ]

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  %51 = lshr i32 %50, 23
  store i32 %51, i32* %11, align 4
  br label %92

52:                                               ; preds = %44
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, 8388607
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = lshr i32 %57, 23
  %59 = add i32 %58, 1
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 512
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  %63 = load i8, i8* %10, align 1
  %64 = zext i8 %63 to i32
  %65 = add nsw i32 %64, 1
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %10, align 1
  br label %67

67:                                               ; preds = %62, %56
  br label %71

68:                                               ; preds = %52
  %69 = load i32, i32* %11, align 4
  %70 = lshr i32 %69, 23
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %68, %67
  br label %92

72:                                               ; preds = %44
  %73 = load i32, i32* %11, align 4
  %74 = and i32 %73, 4194304
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i32, i32* %11, align 4
  %78 = lshr i32 %77, 23
  %79 = add i32 %78, 1
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 512
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  store i32 0, i32* %11, align 4
  %83 = load i8, i8* %10, align 1
  %84 = zext i8 %83 to i32
  %85 = add nsw i32 %84, 1
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %10, align 1
  br label %87

87:                                               ; preds = %82, %76
  br label %91

88:                                               ; preds = %72
  %89 = load i32, i32* %11, align 4
  %90 = lshr i32 %89, 23
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %88, %87
  br label %92

92:                                               ; preds = %44, %91, %71, %49
  br label %101

93:                                               ; preds = %27
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %94, 130
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %155

99:                                               ; preds = %93
  store i8 0, i8* %10, align 1
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100, %92
  br label %102

102:                                              ; preds = %101, %26
  %103 = load i32, i32* @DBG_QOS, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i8, i8* %10, align 1
  %106 = zext i8 %105 to i32
  %107 = call i32 (i32, i8*, i32, ...) @PRINTD(i32 %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %106)
  %108 = load i8*, i8** %8, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %102
  %111 = load i8, i8* %10, align 1
  %112 = zext i8 %111 to i32
  %113 = shl i32 %112, 9
  %114 = load i32, i32* %11, align 4
  %115 = or i32 %113, %114
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %8, align 8
  store i8 %116, i8* %117, align 1
  br label %118

118:                                              ; preds = %110, %102
  %119 = load i32*, i32** %9, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %154

121:                                              ; preds = %118
  %122 = load i8, i8* %10, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp sge i32 %123, 9
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = load i8, i8* %10, align 1
  %127 = zext i8 %126 to i32
  %128 = shl i32 1, %127
  %129 = load i32, i32* %11, align 4
  %130 = load i8, i8* %10, align 1
  %131 = zext i8 %130 to i32
  %132 = sub nsw i32 %131, 9
  %133 = shl i32 %129, %132
  %134 = add i32 %128, %133
  br label %151

135:                                              ; preds = %121
  %136 = load i8, i8* %10, align 1
  %137 = zext i8 %136 to i32
  %138 = shl i32 1, %137
  %139 = load i32, i32* %11, align 4
  %140 = load i8, i8* %10, align 1
  %141 = zext i8 %140 to i32
  %142 = sub nsw i32 9, %141
  %143 = sub nsw i32 %142, 1
  %144 = shl i32 1, %143
  %145 = add i32 %139, %144
  %146 = load i8, i8* %10, align 1
  %147 = zext i8 %146 to i32
  %148 = sub nsw i32 9, %147
  %149 = lshr i32 %145, %148
  %150 = add i32 %138, %149
  br label %151

151:                                              ; preds = %135, %125
  %152 = phi i32 [ %134, %125 ], [ %150, %135 ]
  %153 = load i32*, i32** %9, align 8
  store i32 %152, i32* %153, align 4
  br label %154

154:                                              ; preds = %151, %118
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %154, %96, %22
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @PRINTD(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

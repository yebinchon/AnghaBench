; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_cmdlib.c_COM_Parse.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_cmdlib.c_COM_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@com_token = common dso_local global i32* null, align 8
@qtrue = common dso_local global i32 0, align 4
@com_eof = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @COM_Parse(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** @com_token, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %155

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %51, %11
  br label %13

13:                                               ; preds = %23, %12
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = icmp sle i32 %16, 32
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @qtrue, align 4
  store i32 %22, i32* @com_eof, align 4
  store i8* null, i8** %2, align 8
  br label %155

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  br label %13

26:                                               ; preds = %13
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 47
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 47
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %48, %35
  %37 = load i8*, i8** %3, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i8*, i8** %3, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 10
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i1 [ false, %36 ], [ %45, %41 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %3, align 8
  br label %36

51:                                               ; preds = %46
  br label %12

52:                                               ; preds = %29, %26
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 34
  br i1 %54, label %55, label %81

55:                                               ; preds = %52
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %3, align 8
  br label %58

58:                                               ; preds = %79, %55
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %3, align 8
  %61 = load i8, i8* %59, align 1
  %62 = sext i8 %61 to i32
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 34
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i32*, i32** @com_token, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 0, i32* %69, align 4
  %70 = load i8*, i8** %3, align 8
  store i8* %70, i8** %2, align 8
  br label %155

71:                                               ; preds = %58
  %72 = load i32, i32* %4, align 4
  %73 = load i32*, i32** @com_token, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %71
  br i1 true, label %58, label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80, %52
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %82, 123
  br i1 %83, label %99, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 125
  br i1 %86, label %99, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  %89 = icmp eq i32 %88, 41
  br i1 %89, label %99, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %4, align 4
  %92 = icmp eq i32 %91, 40
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %4, align 4
  %95 = icmp eq i32 %94, 39
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %4, align 4
  %98 = icmp eq i32 %97, 58
  br i1 %98, label %99, label %113

99:                                               ; preds = %96, %93, %90, %87, %84, %81
  %100 = load i32, i32* %4, align 4
  %101 = load i32*, i32** @com_token, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  %107 = load i32*, i32** @com_token, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 0, i32* %110, align 4
  %111 = load i8*, i8** %3, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8* %112, i8** %2, align 8
  br label %155

113:                                              ; preds = %96
  br label %114

114:                                              ; preds = %146, %113
  %115 = load i32, i32* %4, align 4
  %116 = load i32*, i32** @com_token, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %115, i32* %119, align 4
  %120 = load i8*, i8** %3, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %3, align 8
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  %124 = load i8*, i8** %3, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp eq i32 %127, 123
  br i1 %128, label %144, label %129

129:                                              ; preds = %114
  %130 = load i32, i32* %4, align 4
  %131 = icmp eq i32 %130, 125
  br i1 %131, label %144, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %4, align 4
  %134 = icmp eq i32 %133, 41
  br i1 %134, label %144, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %4, align 4
  %137 = icmp eq i32 %136, 40
  br i1 %137, label %144, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %4, align 4
  %140 = icmp eq i32 %139, 39
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %4, align 4
  %143 = icmp eq i32 %142, 58
  br i1 %143, label %144, label %145

144:                                              ; preds = %141, %138, %135, %132, %129, %114
  br label %149

145:                                              ; preds = %141
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %4, align 4
  %148 = icmp sgt i32 %147, 32
  br i1 %148, label %114, label %149

149:                                              ; preds = %146, %144
  %150 = load i32*, i32** @com_token, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 0, i32* %153, align 4
  %154 = load i8*, i8** %3, align 8
  store i8* %154, i8** %2, align 8
  br label %155

155:                                              ; preds = %149, %99, %65, %21, %10
  %156 = load i8*, i8** %2, align 8
  ret i8* %156
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

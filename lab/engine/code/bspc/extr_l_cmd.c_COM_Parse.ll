; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_cmd.c_COM_Parse.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_cmd.c_COM_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@com_token = common dso_local global i32* null, align 8
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
  br label %154

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %50, %11
  br label %13

13:                                               ; preds = %22, %12
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = icmp sle i32 %16, 32
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 1, i32* @com_eof, align 4
  store i8* null, i8** %2, align 8
  br label %154

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %3, align 8
  br label %13

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 47
  br i1 %27, label %28, label %51

28:                                               ; preds = %25
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 47
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %47, %34
  %36 = load i8*, i8** %3, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i8*, i8** %3, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 10
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i1 [ false, %35 ], [ %44, %40 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %3, align 8
  br label %35

50:                                               ; preds = %45
  br label %12

51:                                               ; preds = %28, %25
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 34
  br i1 %53, label %54, label %80

54:                                               ; preds = %51
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %3, align 8
  br label %57

57:                                               ; preds = %78, %54
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %3, align 8
  %60 = load i8, i8* %58, align 1
  %61 = sext i8 %60 to i32
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 34
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32*, i32** @com_token, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 0, i32* %68, align 4
  %69 = load i8*, i8** %3, align 8
  store i8* %69, i8** %2, align 8
  br label %154

70:                                               ; preds = %57
  %71 = load i32, i32* %4, align 4
  %72 = load i32*, i32** @com_token, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %70
  br i1 true, label %57, label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %51
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, 123
  br i1 %82, label %98, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %84, 125
  br i1 %85, label %98, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %87, 41
  br i1 %88, label %98, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %4, align 4
  %91 = icmp eq i32 %90, 40
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = icmp eq i32 %93, 39
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %4, align 4
  %97 = icmp eq i32 %96, 58
  br i1 %97, label %98, label %112

98:                                               ; preds = %95, %92, %89, %86, %83, %80
  %99 = load i32, i32* %4, align 4
  %100 = load i32*, i32** @com_token, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %99, i32* %103, align 4
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  %106 = load i32*, i32** @com_token, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 0, i32* %109, align 4
  %110 = load i8*, i8** %3, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  store i8* %111, i8** %2, align 8
  br label %154

112:                                              ; preds = %95
  br label %113

113:                                              ; preds = %145, %112
  %114 = load i32, i32* %4, align 4
  %115 = load i32*, i32** @com_token, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  %119 = load i8*, i8** %3, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %3, align 8
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  %123 = load i8*, i8** %3, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp eq i32 %126, 123
  br i1 %127, label %143, label %128

128:                                              ; preds = %113
  %129 = load i32, i32* %4, align 4
  %130 = icmp eq i32 %129, 125
  br i1 %130, label %143, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %4, align 4
  %133 = icmp eq i32 %132, 41
  br i1 %133, label %143, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %4, align 4
  %136 = icmp eq i32 %135, 40
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %4, align 4
  %139 = icmp eq i32 %138, 39
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %4, align 4
  %142 = icmp eq i32 %141, 58
  br i1 %142, label %143, label %144

143:                                              ; preds = %140, %137, %134, %131, %128, %113
  br label %148

144:                                              ; preds = %140
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %4, align 4
  %147 = icmp sgt i32 %146, 32
  br i1 %147, label %113, label %148

148:                                              ; preds = %145, %143
  %149 = load i32*, i32** @com_token, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 0, i32* %152, align 4
  %153 = load i8*, i8** %3, align 8
  store i8* %153, i8** %2, align 8
  br label %154

154:                                              ; preds = %148, %98, %64, %21, %10
  %155 = load i8*, i8** %2, align 8
  ret i8* %155
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

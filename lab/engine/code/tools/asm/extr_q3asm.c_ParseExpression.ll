; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_ParseExpression.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_ParseExpression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LINE_LENGTH = common dso_local global i32 0, align 4
@token = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ParseExpression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseExpression() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i8*, i8** @token, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 45
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %47, %0
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = load i8*, i8** @token, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 43
  br i1 %28, label %45, label %29

29:                                               ; preds = %21
  %30 = load i8*, i8** @token, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 45
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load i8*, i8** @token, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37, %29, %21
  br label %50

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %17

50:                                               ; preds = %45, %17
  %51 = load i8*, i8** @token, align 8
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @memcpy(i8* %9, i8* %51, i32 %52)
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %9, i64 %55
  store i8 0, i8* %56, align 1
  %57 = load i8, i8* %9, align 16
  %58 = sext i8 %57 to i32
  switch i32 %58, label %61 [
    i32 45, label %59
    i32 48, label %59
    i32 49, label %59
    i32 50, label %59
    i32 51, label %59
    i32 52, label %59
    i32 53, label %59
    i32 54, label %59
    i32 55, label %59
    i32 56, label %59
    i32 57, label %59
  ]

59:                                               ; preds = %50, %50, %50, %50, %50, %50, %50, %50, %50, %50, %50
  %60 = call i32 @atoiNoCap(i8* %9)
  store i32 %60, i32* %5, align 4
  br label %63

61:                                               ; preds = %50
  %62 = call i32 @LookupSymbol(i8* %9)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %59
  br label %64

64:                                               ; preds = %139, %63
  %65 = load i8*, i8** @token, align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %141

72:                                               ; preds = %64
  %73 = load i32, i32* %1, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %105, %72
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %75
  %80 = load i8*, i8** @token, align 8
  %81 = load i32, i32* %2, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 43
  br i1 %86, label %103, label %87

87:                                               ; preds = %79
  %88 = load i8*, i8** @token, align 8
  %89 = load i32, i32* %2, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 45
  br i1 %94, label %103, label %95

95:                                               ; preds = %87
  %96 = load i8*, i8** @token, align 8
  %97 = load i32, i32* %2, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95, %87, %79
  br label %108

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %2, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %2, align 4
  br label %75

108:                                              ; preds = %103, %75
  %109 = load i8*, i8** @token, align 8
  %110 = load i32, i32* %1, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i32, i32* %2, align 4
  %115 = load i32, i32* %1, align 4
  %116 = sub nsw i32 %114, %115
  %117 = sub nsw i32 %116, 1
  %118 = call i32 @memcpy(i8* %9, i8* %113, i32 %117)
  %119 = load i32, i32* %2, align 4
  %120 = load i32, i32* %1, align 4
  %121 = sub nsw i32 %119, %120
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %9, i64 %123
  store i8 0, i8* %124, align 1
  %125 = load i8*, i8** @token, align 8
  %126 = load i32, i32* %1, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  switch i32 %130, label %139 [
    i32 43, label %131
    i32 45, label %135
  ]

131:                                              ; preds = %108
  %132 = call i32 @atoiNoCap(i8* %9)
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %5, align 4
  br label %139

135:                                              ; preds = %108
  %136 = call i32 @atoiNoCap(i8* %9)
  %137 = load i32, i32* %5, align 4
  %138 = sub nsw i32 %137, %136
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %108, %135, %131
  %140 = load i32, i32* %2, align 4
  store i32 %140, i32* %1, align 4
  br label %64

141:                                              ; preds = %64
  %142 = load i32, i32* %5, align 4
  %143 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %143)
  ret i32 %142
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @atoiNoCap(i8*) #2

declare dso_local i32 @LookupSymbol(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

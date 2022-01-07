; ModuleID = '/home/carl/AnghaBench/libui/common/extr_utf.c_uiprivUTF8DecodeRune.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_utf.c_uiprivUTF8DecodeRune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@badrune = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @uiprivUTF8DecodeRune(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 128
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %4, align 8
  br label %150

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 194
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 244
  br i1 %31, label %32, label %38

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @badrune, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %5, align 8
  store i8* %37, i8** %4, align 8
  br label %150

38:                                               ; preds = %29
  store i32 128, i32* %10, align 4
  store i32 191, i32* %11, align 4
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %44 [
    i32 224, label %40
    i32 237, label %41
    i32 240, label %42
    i32 244, label %43
  ]

40:                                               ; preds = %38
  store i32 160, i32* %10, align 4
  br label %44

41:                                               ; preds = %38
  store i32 159, i32* %11, align 4
  br label %44

42:                                               ; preds = %38
  store i32 144, i32* %10, align 4
  br label %44

43:                                               ; preds = %38
  store i32 143, i32* %11, align 4
  br label %44

44:                                               ; preds = %38, %43, %42, %41, %40
  store i64 1, i64* %13, align 8
  %45 = load i32, i32* %8, align 4
  %46 = icmp sge i32 %45, 224
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i64, i64* %13, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %13, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %8, align 4
  %52 = icmp sge i32 %51, 240
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i64, i64* %13, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %13, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load i64, i64* %6, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %13, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load i32, i32* @badrune, align 4
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  %70 = load i8*, i8** %5, align 8
  store i8* %70, i8** %4, align 8
  br label %150

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71, %56
  store i32 0, i32* %14, align 4
  store i64 0, i64* %12, align 8
  br label %73

73:                                               ; preds = %93, %72
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %13, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %73
  %78 = load i8*, i8** %5, align 8
  %79 = load i64, i64* %12, align 8
  %80 = add i64 1, %79
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87, %77
  store i32 1, i32* %14, align 4
  br label %96

92:                                               ; preds = %87
  store i32 128, i32* %10, align 4
  store i32 191, i32* %11, align 4
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %12, align 8
  br label %73

96:                                               ; preds = %91, %73
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* @badrune, align 4
  %101 = load i32*, i32** %7, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %5, align 8
  %104 = load i8*, i8** %5, align 8
  store i8* %104, i8** %4, align 8
  br label %150

105:                                              ; preds = %96
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 224
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, 31
  %111 = load i32*, i32** %7, align 8
  store i32 %110, i32* %111, align 4
  br label %124

112:                                              ; preds = %105
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 240
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* %8, align 4
  %117 = and i32 %116, 15
  %118 = load i32*, i32** %7, align 8
  store i32 %117, i32* %118, align 4
  br label %123

119:                                              ; preds = %112
  %120 = load i32, i32* %8, align 4
  %121 = and i32 %120, 7
  %122 = load i32*, i32** %7, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %119, %115
  br label %124

124:                                              ; preds = %123, %108
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %5, align 8
  br label %127

127:                                              ; preds = %145, %124
  %128 = load i64, i64* %13, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %127
  %131 = load i8*, i8** %5, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  store i32 %133, i32* %9, align 4
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %5, align 8
  %136 = load i32, i32* %9, align 4
  %137 = and i32 %136, 63
  store i32 %137, i32* %9, align 4
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 6
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %141
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %130
  %146 = load i64, i64* %13, align 8
  %147 = add i64 %146, -1
  store i64 %147, i64* %13, align 8
  br label %127

148:                                              ; preds = %127
  %149 = load i8*, i8** %5, align 8
  store i8* %149, i8** %4, align 8
  br label %150

150:                                              ; preds = %148, %99, %65, %32, %20
  %151 = load i8*, i8** %4, align 8
  ret i8* %151
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

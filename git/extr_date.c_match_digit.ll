; ModuleID = '/home/carl/AnghaBench/git/extr_date.c_match_digit.c'
source_filename = "/home/carl/AnghaBench/git/extr_date.c_match_digit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.tm*, i32*, i32*)* @match_digit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_digit(i8* %0, %struct.tm* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.tm* %1, %struct.tm** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @parse_timestamp(i8* %17, i8** %11, i32 10)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp sge i32 %19, 100000000
  br i1 %20, label %21, label %39

21:                                               ; preds = %4
  %22 = load %struct.tm*, %struct.tm** %7, align 8
  %23 = call i64 @nodate(%struct.tm* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.tm*, %struct.tm** %7, align 8
  %28 = call i64 @gmtime_r(i32* %13, %struct.tm* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32*, i32** %9, align 8
  store i32 1, i32* %31, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %5, align 4
  br label %179

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %21, %4
  %40 = load i8*, i8** %11, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  switch i32 %42, label %63 [
    i32 58, label %43
    i32 46, label %43
    i32 47, label %43
    i32 45, label %43
  ]

43:                                               ; preds = %39, %39, %39, %39
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @isdigit(i8 signext %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load i32, i32* %12, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = load i8, i8* %51, align 1
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load %struct.tm*, %struct.tm** %7, align 8
  %56 = call i32 @match_multi_number(i32 %50, i8 signext %52, i8* %53, i8* %54, %struct.tm* %55, i32 0)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %5, align 4
  br label %179

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %43
  br label %63

63:                                               ; preds = %62, %39
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %67, %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = call i64 @isdigit(i8 signext %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %64, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 4
  br i1 %77, label %78, label %109

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = icmp sle i32 %79, 1400
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load i32, i32* %12, align 4
  %87 = srem i32 %86, 100
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sdiv i32 %88, 100
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = mul i32 %90, 60
  %92 = load i32, i32* %15, align 4
  %93 = add i32 %91, %92
  %94 = load i32*, i32** %8, align 8
  store i32 %93, i32* %94, align 4
  br label %107

95:                                               ; preds = %81, %78
  %96 = load i32, i32* %12, align 4
  %97 = icmp sgt i32 %96, 1900
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %99, 2100
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* %12, align 4
  %103 = sub nsw i32 %102, 1900
  %104 = load %struct.tm*, %struct.tm** %7, align 8
  %105 = getelementptr inbounds %struct.tm, %struct.tm* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %98, %95
  br label %107

107:                                              ; preds = %106, %85
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %5, align 4
  br label %179

109:                                              ; preds = %75
  %110 = load i32, i32* %10, align 4
  %111 = icmp sgt i32 %110, 2
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %5, align 4
  br label %179

114:                                              ; preds = %109
  %115 = load i32, i32* %12, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %114
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %118, 32
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load %struct.tm*, %struct.tm** %7, align 8
  %122 = getelementptr inbounds %struct.tm, %struct.tm* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.tm*, %struct.tm** %7, align 8
  %128 = getelementptr inbounds %struct.tm, %struct.tm* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %5, align 4
  br label %179

130:                                              ; preds = %120, %117, %114
  %131 = load i32, i32* %10, align 4
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %133, label %161

133:                                              ; preds = %130
  %134 = load %struct.tm*, %struct.tm** %7, align 8
  %135 = getelementptr inbounds %struct.tm, %struct.tm* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %161

138:                                              ; preds = %133
  %139 = load i32, i32* %12, align 4
  %140 = icmp slt i32 %139, 10
  br i1 %140, label %141, label %152

141:                                              ; preds = %138
  %142 = load %struct.tm*, %struct.tm** %7, align 8
  %143 = getelementptr inbounds %struct.tm, %struct.tm* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp sge i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, 100
  %149 = load %struct.tm*, %struct.tm** %7, align 8
  %150 = getelementptr inbounds %struct.tm, %struct.tm* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %5, align 4
  br label %179

152:                                              ; preds = %141, %138
  %153 = load i32, i32* %12, align 4
  %154 = icmp sge i32 %153, 70
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load i32, i32* %12, align 4
  %157 = load %struct.tm*, %struct.tm** %7, align 8
  %158 = getelementptr inbounds %struct.tm, %struct.tm* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %5, align 4
  br label %179

160:                                              ; preds = %152
  br label %161

161:                                              ; preds = %160, %133, %130
  %162 = load i32, i32* %12, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %161
  %165 = load i32, i32* %12, align 4
  %166 = icmp slt i32 %165, 13
  br i1 %166, label %167, label %177

167:                                              ; preds = %164
  %168 = load %struct.tm*, %struct.tm** %7, align 8
  %169 = getelementptr inbounds %struct.tm, %struct.tm* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load i32, i32* %12, align 4
  %174 = sub nsw i32 %173, 1
  %175 = load %struct.tm*, %struct.tm** %7, align 8
  %176 = getelementptr inbounds %struct.tm, %struct.tm* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %172, %167, %164, %161
  %178 = load i32, i32* %10, align 4
  store i32 %178, i32* %5, align 4
  br label %179

179:                                              ; preds = %177, %155, %146, %125, %112, %107, %59, %30
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @parse_timestamp(i8*, i8**, i32) #1

declare dso_local i64 @nodate(%struct.tm*) #1

declare dso_local i64 @gmtime_r(i32*, %struct.tm*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @match_multi_number(i32, i8 signext, i8*, i8*, %struct.tm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_date.c_match_digit.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_date.c_match_digit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.tm*, i32*, i32*)* @match_digit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @match_digit(i8* %0, %struct.tm* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.tm* %1, %struct.tm** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strtoul(i8* %17, i8** %11, i32 10)
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = icmp uge i64 %19, 100000000
  br i1 %20, label %21, label %38

21:                                               ; preds = %4
  %22 = load %struct.tm*, %struct.tm** %7, align 8
  %23 = call i64 @nodate(%struct.tm* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load i64, i64* %12, align 8
  store i64 %26, i64* %13, align 8
  %27 = load %struct.tm*, %struct.tm** %7, align 8
  %28 = call i64 @p_gmtime_r(i64* %13, %struct.tm* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32*, i32** %9, align 8
  store i32 1, i32* %31, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  store i64 %36, i64* %5, align 8
  br label %179

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %21, %4
  %39 = load i8*, i8** %11, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %62 [
    i32 58, label %42
    i32 46, label %42
    i32 47, label %42
    i32 45, label %42
  ]

42:                                               ; preds = %38, %38, %38, %38
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @isdigit(i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load i64, i64* %12, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load %struct.tm*, %struct.tm** %7, align 8
  %55 = call i64 @match_multi_number(i64 %49, i8 signext %51, i8* %52, i8* %53, %struct.tm* %54)
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* %14, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i64, i64* %14, align 8
  store i64 %59, i64* %5, align 8
  br label %179

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %42
  br label %62

62:                                               ; preds = %61, %38
  store i64 0, i64* %10, align 8
  br label %63

63:                                               ; preds = %66, %62
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %10, align 8
  br label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @isdigit(i8 signext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %63, label %73

73:                                               ; preds = %66
  %74 = load i64, i64* %10, align 8
  %75 = icmp eq i64 %74, 4
  br i1 %75, label %76, label %109

76:                                               ; preds = %73
  %77 = load i64, i64* %12, align 8
  %78 = icmp ule i64 %77, 1400
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = load i64, i64* %12, align 8
  %85 = urem i64 %84, 100
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %15, align 4
  %87 = load i64, i64* %12, align 8
  %88 = udiv i64 %87, 100
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = mul i32 %90, 60
  %92 = load i32, i32* %15, align 4
  %93 = add i32 %91, %92
  %94 = load i32*, i32** %8, align 8
  store i32 %93, i32* %94, align 4
  br label %107

95:                                               ; preds = %79, %76
  %96 = load i64, i64* %12, align 8
  %97 = icmp ugt i64 %96, 1900
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i64, i64* %12, align 8
  %100 = icmp ult i64 %99, 2100
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i64, i64* %12, align 8
  %103 = sub i64 %102, 1900
  %104 = load %struct.tm*, %struct.tm** %7, align 8
  %105 = getelementptr inbounds %struct.tm, %struct.tm* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %101, %98, %95
  br label %107

107:                                              ; preds = %106, %83
  %108 = load i64, i64* %10, align 8
  store i64 %108, i64* %5, align 8
  br label %179

109:                                              ; preds = %73
  %110 = load i64, i64* %10, align 8
  %111 = icmp ugt i64 %110, 2
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i64, i64* %10, align 8
  store i64 %113, i64* %5, align 8
  br label %179

114:                                              ; preds = %109
  %115 = load i64, i64* %12, align 8
  %116 = icmp ugt i64 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %114
  %118 = load i64, i64* %12, align 8
  %119 = icmp ult i64 %118, 32
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load %struct.tm*, %struct.tm** %7, align 8
  %122 = getelementptr inbounds %struct.tm, %struct.tm* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ult i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load i64, i64* %12, align 8
  %127 = load %struct.tm*, %struct.tm** %7, align 8
  %128 = getelementptr inbounds %struct.tm, %struct.tm* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load i64, i64* %10, align 8
  store i64 %129, i64* %5, align 8
  br label %179

130:                                              ; preds = %120, %117, %114
  %131 = load i64, i64* %10, align 8
  %132 = icmp eq i64 %131, 2
  br i1 %132, label %133, label %161

133:                                              ; preds = %130
  %134 = load %struct.tm*, %struct.tm** %7, align 8
  %135 = getelementptr inbounds %struct.tm, %struct.tm* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ult i64 %136, 0
  br i1 %137, label %138, label %161

138:                                              ; preds = %133
  %139 = load i64, i64* %12, align 8
  %140 = icmp ult i64 %139, 10
  br i1 %140, label %141, label %152

141:                                              ; preds = %138
  %142 = load %struct.tm*, %struct.tm** %7, align 8
  %143 = getelementptr inbounds %struct.tm, %struct.tm* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp uge i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i64, i64* %12, align 8
  %148 = add i64 %147, 100
  %149 = load %struct.tm*, %struct.tm** %7, align 8
  %150 = getelementptr inbounds %struct.tm, %struct.tm* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load i64, i64* %10, align 8
  store i64 %151, i64* %5, align 8
  br label %179

152:                                              ; preds = %141, %138
  %153 = load i64, i64* %12, align 8
  %154 = icmp uge i64 %153, 70
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load i64, i64* %12, align 8
  %157 = load %struct.tm*, %struct.tm** %7, align 8
  %158 = getelementptr inbounds %struct.tm, %struct.tm* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = load i64, i64* %10, align 8
  store i64 %159, i64* %5, align 8
  br label %179

160:                                              ; preds = %152
  br label %161

161:                                              ; preds = %160, %133, %130
  %162 = load i64, i64* %12, align 8
  %163 = icmp ugt i64 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %161
  %165 = load i64, i64* %12, align 8
  %166 = icmp ult i64 %165, 13
  br i1 %166, label %167, label %177

167:                                              ; preds = %164
  %168 = load %struct.tm*, %struct.tm** %7, align 8
  %169 = getelementptr inbounds %struct.tm, %struct.tm* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp ult i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load i64, i64* %12, align 8
  %174 = sub i64 %173, 1
  %175 = load %struct.tm*, %struct.tm** %7, align 8
  %176 = getelementptr inbounds %struct.tm, %struct.tm* %175, i32 0, i32 2
  store i64 %174, i64* %176, align 8
  br label %177

177:                                              ; preds = %172, %167, %164, %161
  %178 = load i64, i64* %10, align 8
  store i64 %178, i64* %5, align 8
  br label %179

179:                                              ; preds = %177, %155, %146, %125, %112, %107, %58, %30
  %180 = load i64, i64* %5, align 8
  ret i64 %180
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @nodate(%struct.tm*) #1

declare dso_local i64 @p_gmtime_r(i64*, %struct.tm*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @match_multi_number(i64, i8 signext, i8*, i8*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

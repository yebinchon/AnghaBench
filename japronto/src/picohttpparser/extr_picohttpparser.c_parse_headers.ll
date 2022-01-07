; ModuleID = '/home/carl/AnghaBench/japronto/src/picohttpparser/extr_picohttpparser.c_parse_headers.c'
source_filename = "/home/carl/AnghaBench/japronto/src/picohttpparser/extr_picohttpparser.c_parse_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phr_header = type { i8*, i32, i32, i32 }

@parse_headers.ranges1 = internal constant [17 x i8] c"\00 \22\22(),,//:@[]{\FF\00", align 16
@token_char_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, %struct.phr_header*, i64*, i64, i32*)* @parse_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_headers(i8* %0, i8* %1, %struct.phr_header* %2, i64* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.phr_header*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.phr_header* %2, %struct.phr_header** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  br label %15

15:                                               ; preds = %160, %6
  %16 = call i32 (...) @CHECK_EOF()
  %17 = load i8*, i8** %8, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 13
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %8, align 8
  %24 = call i32 @EXPECT_CHAR(i8 signext 10)
  br label %164

25:                                               ; preds = %15
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  br label %164

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33
  %35 = load i64*, i64** %11, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32*, i32** %13, align 8
  store i32 -1, i32* %40, align 4
  store i8* null, i8** %7, align 8
  br label %166

41:                                               ; preds = %34
  %42 = load i64*, i64** %11, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %131, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 9
  br i1 %54, label %131, label %55

55:                                               ; preds = %50, %41
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.phr_header*, %struct.phr_header** %10, align 8
  %58 = load i64*, i64** %11, align 8
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %57, i64 %59
  %61 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %60, i32 0, i32 0
  store i8* %56, i8** %61, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i8* @findchar_fast(i8* %62, i8* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @parse_headers.ranges1, i64 0, i64 0), i32 16, i32* %14)
  store i8* %64, i8** %8, align 8
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %55
  %68 = call i32 (...) @CHECK_EOF()
  br label %69

69:                                               ; preds = %67, %55
  br label %70

70:                                               ; preds = %69, %87
  %71 = load i8*, i8** %8, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 58
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %91

76:                                               ; preds = %70
  %77 = load i32*, i32** @token_char_map, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %76
  %85 = load i32*, i32** %13, align 8
  store i32 -1, i32* %85, align 4
  store i8* null, i8** %7, align 8
  br label %166

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %8, align 8
  %90 = call i32 (...) @CHECK_EOF()
  br label %70

91:                                               ; preds = %75
  %92 = load i8*, i8** %8, align 8
  %93 = load %struct.phr_header*, %struct.phr_header** %10, align 8
  %94 = load i64*, i64** %11, align 8
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %93, i64 %95
  %97 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = ptrtoint i8* %92 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = load %struct.phr_header*, %struct.phr_header** %10, align 8
  %104 = load i64*, i64** %11, align 8
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %103, i64 %105
  %107 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %106, i32 0, i32 1
  store i32 %102, i32* %107, align 8
  %108 = icmp eq i32 %102, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %91
  %110 = load i32*, i32** %13, align 8
  store i32 -1, i32* %110, align 4
  store i8* null, i8** %7, align 8
  br label %166

111:                                              ; preds = %91
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %8, align 8
  br label %114

114:                                              ; preds = %127, %111
  %115 = call i32 (...) @CHECK_EOF()
  %116 = load i8*, i8** %8, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 32
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load i8*, i8** %8, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 9
  br i1 %124, label %126, label %125

125:                                              ; preds = %120
  br label %130

126:                                              ; preds = %120, %114
  br label %127

127:                                              ; preds = %126
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %8, align 8
  br label %114

130:                                              ; preds = %125
  br label %142

131:                                              ; preds = %50, %45
  %132 = load %struct.phr_header*, %struct.phr_header** %10, align 8
  %133 = load i64*, i64** %11, align 8
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %132, i64 %134
  %136 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %135, i32 0, i32 0
  store i8* null, i8** %136, align 8
  %137 = load %struct.phr_header*, %struct.phr_header** %10, align 8
  %138 = load i64*, i64** %11, align 8
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %137, i64 %139
  %141 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %140, i32 0, i32 1
  store i32 0, i32* %141, align 8
  br label %142

142:                                              ; preds = %131, %130
  %143 = load i8*, i8** %8, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = load %struct.phr_header*, %struct.phr_header** %10, align 8
  %146 = load i64*, i64** %11, align 8
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %145, i64 %147
  %149 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %148, i32 0, i32 3
  %150 = load %struct.phr_header*, %struct.phr_header** %10, align 8
  %151 = load i64*, i64** %11, align 8
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %150, i64 %152
  %154 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %153, i32 0, i32 2
  %155 = load i32*, i32** %13, align 8
  %156 = call i8* @get_token_to_eol(i8* %143, i8* %144, i32* %149, i32* %154, i32* %155)
  store i8* %156, i8** %8, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %142
  store i8* null, i8** %7, align 8
  br label %166

159:                                              ; preds = %142
  br label %160

160:                                              ; preds = %159
  %161 = load i64*, i64** %11, align 8
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %161, align 8
  br label %15

164:                                              ; preds = %30, %21
  %165 = load i8*, i8** %8, align 8
  store i8* %165, i8** %7, align 8
  br label %166

166:                                              ; preds = %164, %158, %109, %84, %39
  %167 = load i8*, i8** %7, align 8
  ret i8* %167
}

declare dso_local i32 @CHECK_EOF(...) #1

declare dso_local i32 @EXPECT_CHAR(i8 signext) #1

declare dso_local i8* @findchar_fast(i8*, i8*, i8*, i32, i32*) #1

declare dso_local i8* @get_token_to_eol(i8*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

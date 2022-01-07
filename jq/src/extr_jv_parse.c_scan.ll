; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_parse.c_scan.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_parse.c_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jv_parser = type { i64, i32, i64, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Potentially truncated top-level numeric value\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Truncated value\00", align 1
@JV_PARSER_NORMAL = common dso_local global i64 0, align 8
@OK = common dso_local global i8* null, align 8
@JV_PARSER_STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Invalid character\00", align 1
@JV_PARSER_STRING_ESCAPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.jv_parser*, i8, i32*)* @scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scan(%struct.jv_parser* %0, i8 signext %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.jv_parser*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.jv_parser* %0, %struct.jv_parser** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32* %2, i32** %7, align 8
  %10 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %11 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* %11, align 8
  %14 = load i8, i8* %6, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %19 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %23 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %17, %3
  %25 = load i8, i8* %6, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 30
  br i1 %27, label %28, label %74

28:                                               ; preds = %24
  %29 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %30 = call i64 @check_truncation(%struct.jv_parser* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %34 = call i64 @check_literal(%struct.jv_parser* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %38 = call i64 @is_top_num(%struct.jv_parser* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %178

41:                                               ; preds = %36, %32
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %178

42:                                               ; preds = %28
  %43 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %44 = call i64 @check_literal(%struct.jv_parser* %43)
  %45 = call i32 @TRY(i64 %44)
  %46 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %47 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @JV_PARSER_NORMAL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i64 @check_done(%struct.jv_parser* %52, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i8*, i8** @OK, align 8
  store i8* %57, i8** %4, align 8
  br label %178

58:                                               ; preds = %51, %42
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @jv_is_valid(i32 %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %67 = call i32 @parser_reset(%struct.jv_parser* %66)
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @jv_free(i32 %69)
  %71 = call i32 (...) @jv_invalid()
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i8*, i8** @OK, align 8
  store i8* %73, i8** %4, align 8
  br label %178

74:                                               ; preds = %24
  store i8* null, i8** %8, align 8
  %75 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %76 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %75, i32 0, i32 1
  store i32 0, i32* %76, align 8
  %77 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %78 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @JV_PARSER_NORMAL, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %129

82:                                               ; preds = %74
  %83 = load i8, i8* %6, align 1
  %84 = call i32 @classify(i8 signext %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 128
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %89 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %88, i32 0, i32 1
  store i32 1, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 131
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %95 = call i64 @check_literal(%struct.jv_parser* %94)
  %96 = call i32 @TRY(i64 %95)
  %97 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = call i64 @check_done(%struct.jv_parser* %97, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i8*, i8** @OK, align 8
  store i8* %102, i8** %8, align 8
  br label %103

103:                                              ; preds = %101, %93
  br label %104

104:                                              ; preds = %103, %90
  %105 = load i32, i32* %9, align 4
  switch i32 %105, label %121 [
    i32 131, label %106
    i32 128, label %110
    i32 130, label %111
    i32 129, label %115
    i32 132, label %120
  ]

106:                                              ; preds = %104
  %107 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %108 = load i8, i8* %6, align 1
  %109 = call i32 @tokenadd(%struct.jv_parser* %107, i8 signext %108)
  br label %121

110:                                              ; preds = %104
  br label %121

111:                                              ; preds = %104
  %112 = load i64, i64* @JV_PARSER_STRING, align 8
  %113 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %114 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  br label %121

115:                                              ; preds = %104
  %116 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %117 = load i8, i8* %6, align 1
  %118 = call i64 @token(%struct.jv_parser* %116, i8 signext %117)
  %119 = call i32 @TRY(i64 %118)
  br label %121

120:                                              ; preds = %104
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %178

121:                                              ; preds = %104, %115, %111, %110, %106
  %122 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = call i64 @check_done(%struct.jv_parser* %122, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i8*, i8** @OK, align 8
  store i8* %127, i8** %8, align 8
  br label %128

128:                                              ; preds = %126, %121
  br label %176

129:                                              ; preds = %74
  %130 = load i8, i8* %6, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 34
  br i1 %132, label %133, label %153

133:                                              ; preds = %129
  %134 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %135 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @JV_PARSER_STRING, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %133
  %140 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %141 = call i64 @found_string(%struct.jv_parser* %140)
  %142 = call i32 @TRY(i64 %141)
  %143 = load i64, i64* @JV_PARSER_NORMAL, align 8
  %144 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %145 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = call i64 @check_done(%struct.jv_parser* %146, i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %139
  %151 = load i8*, i8** @OK, align 8
  store i8* %151, i8** %8, align 8
  br label %152

152:                                              ; preds = %150, %139
  br label %175

153:                                              ; preds = %133, %129
  %154 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %155 = load i8, i8* %6, align 1
  %156 = call i32 @tokenadd(%struct.jv_parser* %154, i8 signext %155)
  %157 = load i8, i8* %6, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 92
  br i1 %159, label %160, label %170

160:                                              ; preds = %153
  %161 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %162 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @JV_PARSER_STRING, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %160
  %167 = load i64, i64* @JV_PARSER_STRING_ESCAPE, align 8
  %168 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %169 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  br label %174

170:                                              ; preds = %160, %153
  %171 = load i64, i64* @JV_PARSER_STRING, align 8
  %172 = load %struct.jv_parser*, %struct.jv_parser** %5, align 8
  %173 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  br label %174

174:                                              ; preds = %170, %166
  br label %175

175:                                              ; preds = %174, %152
  br label %176

176:                                              ; preds = %175, %128
  %177 = load i8*, i8** %8, align 8
  store i8* %177, i8** %4, align 8
  br label %178

178:                                              ; preds = %176, %120, %58, %56, %41, %40
  %179 = load i8*, i8** %4, align 8
  ret i8* %179
}

declare dso_local i64 @check_truncation(%struct.jv_parser*) #1

declare dso_local i64 @check_literal(%struct.jv_parser*) #1

declare dso_local i64 @is_top_num(%struct.jv_parser*) #1

declare dso_local i32 @TRY(i64) #1

declare dso_local i64 @check_done(%struct.jv_parser*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @jv_is_valid(i32) #1

declare dso_local i32 @parser_reset(%struct.jv_parser*) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_invalid(...) #1

declare dso_local i32 @classify(i8 signext) #1

declare dso_local i32 @tokenadd(%struct.jv_parser*, i8 signext) #1

declare dso_local i64 @token(%struct.jv_parser*, i8 signext) #1

declare dso_local i64 @found_string(%struct.jv_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

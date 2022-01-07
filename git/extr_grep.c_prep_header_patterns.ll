; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_prep_header_patterns.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_prep_header_patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_expr = type { i32 }
%struct.grep_opt = type { %struct.grep_pat* }
%struct.grep_pat = type { i64, i32, %struct.grep_pat* }

@GREP_HEADER_FIELD_MAX = common dso_local global i32 0, align 4
@GREP_PATTERN_HEAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"a non-header pattern in grep header list.\00", align 1
@GREP_HEADER_FIELD_MIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unknown header field %d\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"malformed header expr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grep_expr* (%struct.grep_opt*)* @prep_header_patterns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grep_expr* @prep_header_patterns(%struct.grep_opt* %0) #0 {
  %2 = alloca %struct.grep_expr*, align 8
  %3 = alloca %struct.grep_opt*, align 8
  %4 = alloca %struct.grep_pat*, align 8
  %5 = alloca %struct.grep_expr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.grep_expr*, align 8
  %11 = alloca %struct.grep_pat*, align 8
  store %struct.grep_opt* %0, %struct.grep_opt** %3, align 8
  %12 = load i32, i32* @GREP_HEADER_FIELD_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca %struct.grep_expr*, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %17 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %16, i32 0, i32 0
  %18 = load %struct.grep_pat*, %struct.grep_pat** %17, align 8
  %19 = icmp ne %struct.grep_pat* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store %struct.grep_expr* null, %struct.grep_expr** %2, align 8
  store i32 1, i32* %9, align 4
  br label %155

21:                                               ; preds = %1
  %22 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %23 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %22, i32 0, i32 0
  %24 = load %struct.grep_pat*, %struct.grep_pat** %23, align 8
  store %struct.grep_pat* %24, %struct.grep_pat** %4, align 8
  br label %25

25:                                               ; preds = %57, %21
  %26 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %27 = icmp ne %struct.grep_pat* %26, null
  br i1 %27, label %28, label %61

28:                                               ; preds = %25
  %29 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %30 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GREP_PATTERN_HEAD, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 (i8*, ...) @BUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %28
  %37 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %38 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @GREP_HEADER_FIELD_MIN, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @GREP_HEADER_FIELD_MAX, align 4
  %44 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %45 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp sle i32 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42, %36
  %49 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %50 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, ...) @BUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %48, %42
  %54 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %55 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %56 = call i32 @compile_regexp(%struct.grep_pat* %54, %struct.grep_opt* %55)
  br label %57

57:                                               ; preds = %53
  %58 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %59 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %58, i32 0, i32 2
  %60 = load %struct.grep_pat*, %struct.grep_pat** %59, align 8
  store %struct.grep_pat* %60, %struct.grep_pat** %4, align 8
  br label %25

61:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %70, %61
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @GREP_HEADER_FIELD_MAX, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.grep_expr*, %struct.grep_expr** %15, i64 %68
  store %struct.grep_expr* null, %struct.grep_expr** %69, align 8
  br label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %62

73:                                               ; preds = %62
  %74 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %75 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %74, i32 0, i32 0
  %76 = load %struct.grep_pat*, %struct.grep_pat** %75, align 8
  store %struct.grep_pat* %76, %struct.grep_pat** %4, align 8
  br label %77

77:                                               ; preds = %122, %73
  %78 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %79 = icmp ne %struct.grep_pat* %78, null
  br i1 %79, label %80, label %126

80:                                               ; preds = %77
  %81 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  store %struct.grep_pat* %81, %struct.grep_pat** %11, align 8
  %82 = call %struct.grep_expr* @compile_pattern_atom(%struct.grep_pat** %11)
  store %struct.grep_expr* %82, %struct.grep_expr** %10, align 8
  %83 = load %struct.grep_expr*, %struct.grep_expr** %10, align 8
  %84 = icmp ne %struct.grep_expr* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.grep_pat*, %struct.grep_pat** %11, align 8
  %87 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %88 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %87, i32 0, i32 2
  %89 = load %struct.grep_pat*, %struct.grep_pat** %88, align 8
  %90 = icmp ne %struct.grep_pat* %86, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85, %80
  %92 = call i32 (i8*, ...) @BUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %85
  %94 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %95 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.grep_expr*, %struct.grep_expr** %15, i64 %97
  %99 = load %struct.grep_expr*, %struct.grep_expr** %98, align 8
  %100 = icmp ne %struct.grep_expr* %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %93
  %102 = load %struct.grep_expr*, %struct.grep_expr** %10, align 8
  %103 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %104 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.grep_expr*, %struct.grep_expr** %15, i64 %106
  store %struct.grep_expr* %102, %struct.grep_expr** %107, align 8
  br label %122

108:                                              ; preds = %93
  %109 = load %struct.grep_expr*, %struct.grep_expr** %10, align 8
  %110 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %111 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.grep_expr*, %struct.grep_expr** %15, i64 %113
  %115 = load %struct.grep_expr*, %struct.grep_expr** %114, align 8
  %116 = call %struct.grep_expr* @grep_or_expr(%struct.grep_expr* %109, %struct.grep_expr* %115)
  %117 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %118 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.grep_expr*, %struct.grep_expr** %15, i64 %120
  store %struct.grep_expr* %116, %struct.grep_expr** %121, align 8
  br label %122

122:                                              ; preds = %108, %101
  %123 = load %struct.grep_pat*, %struct.grep_pat** %4, align 8
  %124 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %123, i32 0, i32 2
  %125 = load %struct.grep_pat*, %struct.grep_pat** %124, align 8
  store %struct.grep_pat* %125, %struct.grep_pat** %4, align 8
  br label %77

126:                                              ; preds = %77
  store %struct.grep_expr* null, %struct.grep_expr** %5, align 8
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %150, %126
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @GREP_HEADER_FIELD_MAX, align 4
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %131, label %153

131:                                              ; preds = %127
  %132 = load i32, i32* %8, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.grep_expr*, %struct.grep_expr** %15, i64 %133
  %135 = load %struct.grep_expr*, %struct.grep_expr** %134, align 8
  %136 = icmp ne %struct.grep_expr* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %131
  br label %150

138:                                              ; preds = %131
  %139 = load %struct.grep_expr*, %struct.grep_expr** %5, align 8
  %140 = icmp ne %struct.grep_expr* %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %138
  %142 = call %struct.grep_expr* (...) @grep_true_expr()
  store %struct.grep_expr* %142, %struct.grep_expr** %5, align 8
  br label %143

143:                                              ; preds = %141, %138
  %144 = load i32, i32* %8, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.grep_expr*, %struct.grep_expr** %15, i64 %145
  %147 = load %struct.grep_expr*, %struct.grep_expr** %146, align 8
  %148 = load %struct.grep_expr*, %struct.grep_expr** %5, align 8
  %149 = call %struct.grep_expr* @grep_or_expr(%struct.grep_expr* %147, %struct.grep_expr* %148)
  store %struct.grep_expr* %149, %struct.grep_expr** %5, align 8
  br label %150

150:                                              ; preds = %143, %137
  %151 = load i32, i32* %8, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %8, align 4
  br label %127

153:                                              ; preds = %127
  %154 = load %struct.grep_expr*, %struct.grep_expr** %5, align 8
  store %struct.grep_expr* %154, %struct.grep_expr** %2, align 8
  store i32 1, i32* %9, align 4
  br label %155

155:                                              ; preds = %153, %20
  %156 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load %struct.grep_expr*, %struct.grep_expr** %2, align 8
  ret %struct.grep_expr* %157
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG(i8*, ...) #2

declare dso_local i32 @compile_regexp(%struct.grep_pat*, %struct.grep_opt*) #2

declare dso_local %struct.grep_expr* @compile_pattern_atom(%struct.grep_pat**) #2

declare dso_local %struct.grep_expr* @grep_or_expr(%struct.grep_expr*, %struct.grep_expr*) #2

declare dso_local %struct.grep_expr* @grep_true_expr(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

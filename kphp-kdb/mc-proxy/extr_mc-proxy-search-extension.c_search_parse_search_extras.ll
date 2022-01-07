; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_search_parse_search_extras.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_search_parse_search_extras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q_raw = common dso_local global i32 0, align 4
@Q_order = common dso_local global i32 0, align 4
@Q_limit = common dso_local global i64 0, align 8
@Q_slice_limit = common dso_local global i64 0, align 8
@Q_limit_end = common dso_local global i8* null, align 8
@Q_limit_ptr = common dso_local global i8* null, align 8
@MAX_RES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @search_parse_search_extras to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @search_parse_search_extras(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* @Q_raw, align 4
  store i32 0, i32* @Q_order, align 4
  store i64 0, i64* @Q_limit, align 8
  store i64 0, i64* @Q_slice_limit, align 8
  store i8* null, i8** @Q_limit_end, align 8
  store i8* null, i8** @Q_limit_ptr, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 35
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %2, align 8
  br label %160

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %3, align 8
  br label %14

14:                                               ; preds = %155, %11
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 40
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 91
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ false, %14 ], [ %23, %19 ]
  br i1 %25, label %26, label %158

26:                                               ; preds = %24
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* @Q_raw, align 4
  br label %155

32:                                               ; preds = %26
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 88
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %154

38:                                               ; preds = %32
  %39 = load i8*, i8** %3, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 105
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @Q_order, align 4
  %45 = and i32 %44, -5
  store i32 %45, i32* @Q_order, align 4
  br label %153

46:                                               ; preds = %38
  %47 = load i8*, i8** %3, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 73
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @Q_order, align 4
  %53 = or i32 %52, 4
  store i32 %53, i32* @Q_order, align 4
  br label %152

54:                                               ; preds = %46
  %55 = load i8*, i8** %3, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 80
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %3, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 84
  br i1 %63, label %64, label %67

64:                                               ; preds = %59, %54
  %65 = load i32, i32* @Q_order, align 4
  %66 = or i32 %65, 8
  store i32 %66, i32* @Q_order, align 4
  br label %151

67:                                               ; preds = %59
  %68 = load i8*, i8** %3, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 85
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @Q_order, align 4
  %74 = or i32 %73, 2
  store i32 %74, i32* @Q_order, align 4
  br label %150

75:                                               ; preds = %67
  %76 = load i8*, i8** %3, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 86
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %149

81:                                               ; preds = %75
  %82 = load i8*, i8** %3, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp sle i32 65, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load i8*, i8** %3, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sle i32 %89, 90
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i32, i32* @Q_order, align 4
  %93 = or i32 %92, 4
  store i32 %93, i32* @Q_order, align 4
  %94 = load i32, i32* @Q_order, align 4
  %95 = or i32 %94, 8
  store i32 %95, i32* @Q_order, align 4
  br label %148

96:                                               ; preds = %86, %81
  %97 = load i8*, i8** %3, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp sle i32 97, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i8*, i8** %3, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp sle i32 %104, 122
  br i1 %105, label %111, label %106

106:                                              ; preds = %101, %96
  %107 = load i8*, i8** %3, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 63
  br i1 %110, label %111, label %116

111:                                              ; preds = %106, %101
  %112 = load i32, i32* @Q_order, align 4
  %113 = and i32 %112, -5
  store i32 %113, i32* @Q_order, align 4
  %114 = load i32, i32* @Q_order, align 4
  %115 = or i32 %114, 8
  store i32 %115, i32* @Q_order, align 4
  br label %147

116:                                              ; preds = %106
  %117 = load i8*, i8** %3, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp sle i32 48, %119
  br i1 %120, label %121, label %144

121:                                              ; preds = %116
  %122 = load i8*, i8** %3, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp sle i32 %124, 57
  br i1 %125, label %126, label %144

126:                                              ; preds = %121
  %127 = load i8*, i8** %3, align 8
  store i8* %127, i8** @Q_limit_ptr, align 8
  %128 = load i8*, i8** %3, align 8
  %129 = call i64 @strtol(i8* %128, i8** %4, i32 10)
  store i64 %129, i64* @Q_limit, align 8
  %130 = load i8*, i8** %4, align 8
  store i8* %130, i8** %3, align 8
  %131 = load i8*, i8** %3, align 8
  store i8* %131, i8** @Q_limit_end, align 8
  %132 = load i64, i64* @Q_limit, align 8
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  store i64 0, i64* @Q_limit, align 8
  br label %135

135:                                              ; preds = %134, %126
  %136 = load i64, i64* @Q_limit, align 8
  %137 = load i64, i64* @MAX_RES, align 8
  %138 = icmp sgt i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i64, i64* @MAX_RES, align 8
  store i64 %140, i64* @Q_limit, align 8
  br label %141

141:                                              ; preds = %139, %135
  %142 = load i8*, i8** %3, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 -1
  store i8* %143, i8** %3, align 8
  br label %146

144:                                              ; preds = %121, %116
  %145 = load i8*, i8** %3, align 8
  store i8* %145, i8** %2, align 8
  br label %160

146:                                              ; preds = %141
  br label %147

147:                                              ; preds = %146, %111
  br label %148

148:                                              ; preds = %147, %91
  br label %149

149:                                              ; preds = %148, %80
  br label %150

150:                                              ; preds = %149, %72
  br label %151

151:                                              ; preds = %150, %64
  br label %152

152:                                              ; preds = %151, %51
  br label %153

153:                                              ; preds = %152, %43
  br label %154

154:                                              ; preds = %153, %37
  br label %155

155:                                              ; preds = %154, %31
  %156 = load i8*, i8** %3, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %3, align 8
  br label %14

158:                                              ; preds = %24
  %159 = load i8*, i8** %3, align 8
  store i8* %159, i8** %2, align 8
  br label %160

160:                                              ; preds = %158, %144, %9
  %161 = load i8*, i8** %2, align 8
  ret i8* %161
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

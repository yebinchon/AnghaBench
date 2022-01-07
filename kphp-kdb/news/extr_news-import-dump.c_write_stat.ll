; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_write_stat.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_write_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXUSERS = common dso_local global i32 0, align 4
@b = common dso_local global i32* null, align 8
@a = common dso_local global i64* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"mean bookmarks number is %lf\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"maximal bookmarks number is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"total users number is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"number of users with %d bookmarks is %d (with more %d)\0A\00", align 1
@log_split_mod = common dso_local global i32 0, align 4
@c = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"max items in file %d (file %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"min items in file %d (file %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"mean items in file %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_stat() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %39, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @MAXUSERS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load i32*, i32** @b, align 8
  %15 = load i64*, i64** @a, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %14, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load i64*, i64** @a, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %13
  %32 = load i64*, i64** @a, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %31, %13
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %9

42:                                               ; preds = %9
  store double 0.000000e+00, double* %3, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %1, align 4
  br label %43

43:                                               ; preds = %65, %42
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = load i32, i32* %1, align 4
  %49 = load i32*, i32** @b, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %48, %53
  %55 = sitofp i32 %54 to double
  %56 = load double, double* %3, align 8
  %57 = fadd double %56, %55
  store double %57, double* %3, align 8
  %58 = load i32*, i32** @b, align 8
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %47
  %66 = load i32, i32* %1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  br label %43

68:                                               ; preds = %43
  %69 = load i32, i32* %4, align 4
  %70 = sitofp i32 %69 to double
  %71 = load double, double* %3, align 8
  %72 = fdiv double %71, %70
  store double %72, double* %3, align 8
  %73 = load i32, i32* @stderr, align 4
  %74 = load double, double* %3, align 8
  %75 = fptosi double %74 to i32
  %76 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @stderr, align 4
  %78 = load i32, i32* %2, align 4
  %79 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @stderr, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %1, align 4
  br label %83

83:                                               ; preds = %105, %68
  %84 = load i32, i32* %1, align 4
  %85 = icmp sle i32 %84, 100
  br i1 %85, label %86, label %108

86:                                               ; preds = %83
  %87 = load i32*, i32** @b, align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* @stderr, align 4
  %95 = load i32, i32* %1, align 4
  %96 = load i32*, i32** @b, align 8
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %5, align 4
  %103 = sub nsw i32 %101, %102
  %104 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %95, i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %86
  %106 = load i32, i32* %1, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %1, align 4
  br label %83

108:                                              ; preds = %83
  store i32 1000000000, i32* %6, align 4
  store i32 0, i32* %2, align 4
  store double 0.000000e+00, double* %3, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %1, align 4
  br label %109

109:                                              ; preds = %152, %108
  %110 = load i32, i32* %1, align 4
  %111 = load i32, i32* @log_split_mod, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %155

113:                                              ; preds = %109
  %114 = load i32, i32* %2, align 4
  %115 = load i32*, i32** @c, align 8
  %116 = load i32, i32* %1, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %114, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %113
  %122 = load i32*, i32** @c, align 8
  %123 = load i32, i32* %1, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %2, align 4
  %127 = load i32, i32* %1, align 4
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %121, %113
  %129 = load i32, i32* %6, align 4
  %130 = load i32*, i32** @c, align 8
  %131 = load i32, i32* %1, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp sgt i32 %129, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %128
  %137 = load i32*, i32** @c, align 8
  %138 = load i32, i32* %1, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %1, align 4
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %136, %128
  %144 = load i32*, i32** @c, align 8
  %145 = load i32, i32* %1, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = sitofp i32 %148 to double
  %150 = load double, double* %3, align 8
  %151 = fadd double %150, %149
  store double %151, double* %3, align 8
  br label %152

152:                                              ; preds = %143
  %153 = load i32, i32* %1, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %1, align 4
  br label %109

155:                                              ; preds = %109
  %156 = load i32, i32* @log_split_mod, align 4
  %157 = sitofp i32 %156 to double
  %158 = load double, double* %3, align 8
  %159 = fdiv double %158, %157
  store double %159, double* %3, align 8
  %160 = load i32, i32* @stderr, align 4
  %161 = load i32, i32* %2, align 4
  %162 = load i32, i32* %7, align 4
  %163 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %160, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %161, i32 %162)
  %164 = load i32, i32* @stderr, align 4
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %8, align 4
  %167 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %164, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %165, i32 %166)
  %168 = load i32, i32* @stderr, align 4
  %169 = load double, double* %3, align 8
  %170 = fptosi double %169 to i32
  %171 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %168, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %170)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

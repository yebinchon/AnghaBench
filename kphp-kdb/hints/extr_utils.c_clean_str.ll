; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_utils.c_clean_str.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_utils.c_clean_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_NAME_SIZE = common dso_local global i64 0, align 8
@prep_buf = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"amp+\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"gt+\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"lt+\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"quot+\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ft+\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"feat+\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"092+\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"33+\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"34+\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"36+\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"39+\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"60+\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"62+\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"8232+\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"8233+\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @clean_str(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* %6)
  %8 = load i64, i64* @MAX_NAME_SIZE, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %2, align 8
  br label %157

12:                                               ; preds = %1
  %13 = load i8*, i8** @prep_buf, align 8
  store i8* %13, i8** %4, align 8
  br label %14

14:                                               ; preds = %153, %12
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %154

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %134

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %134

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %134

31:                                               ; preds = %27
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %134

35:                                               ; preds = %31
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %134

39:                                               ; preds = %35
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @strncmp(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %134

43:                                               ; preds = %39
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 49
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 57
  br i1 %54, label %67, label %55

55:                                               ; preds = %49, %43
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 50
  br i1 %60, label %61, label %97

61:                                               ; preds = %55
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 48
  br i1 %66, label %67, label %97

67:                                               ; preds = %61, %49
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sle i32 48, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %67
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp sle i32 %77, 57
  br i1 %78, label %79, label %97

79:                                               ; preds = %73
  %80 = load i8*, i8** %3, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp sle i32 48, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 3
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sle i32 %89, 57
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 4
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 43
  br i1 %96, label %134, label %97

97:                                               ; preds = %91, %85, %79, %73, %67, %61, %55
  %98 = load i8*, i8** %3, align 8
  %99 = call i32 @strncmp(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %134

101:                                              ; preds = %97
  %102 = load i8*, i8** %3, align 8
  %103 = call i32 @strncmp(i8* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %134

105:                                              ; preds = %101
  %106 = load i8*, i8** %3, align 8
  %107 = call i32 @strncmp(i8* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %134

109:                                              ; preds = %105
  %110 = load i8*, i8** %3, align 8
  %111 = call i32 @strncmp(i8* %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 3)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %109
  %114 = load i8*, i8** %3, align 8
  %115 = call i32 @strncmp(i8* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 3)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %113
  %118 = load i8*, i8** %3, align 8
  %119 = call i32 @strncmp(i8* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 3)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %117
  %122 = load i8*, i8** %3, align 8
  %123 = call i32 @strncmp(i8* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 3)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %121
  %126 = load i8*, i8** %3, align 8
  %127 = call i32 @strncmp(i8* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 5)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i8*, i8** %3, align 8
  %131 = call i32 @strncmp(i8* %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 5)
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  br label %134

134:                                              ; preds = %129, %125, %121, %117, %113, %109, %105, %101, %97, %91, %39, %35, %31, %27, %23, %19
  %135 = phi i1 [ true, %125 ], [ true, %121 ], [ true, %117 ], [ true, %113 ], [ true, %109 ], [ true, %105 ], [ true, %101 ], [ true, %97 ], [ true, %91 ], [ true, %39 ], [ true, %35 ], [ true, %31 ], [ true, %27 ], [ true, %23 ], [ true, %19 ], [ %133, %129 ]
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %147, %134
  %138 = load i8*, i8** %3, align 8
  %139 = load i8, i8* %138, align 1
  %140 = load i8*, i8** %4, align 8
  store i8 %139, i8* %140, align 1
  %141 = load i32, i32* %5, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %137
  %144 = load i8*, i8** %4, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %4, align 8
  br label %146

146:                                              ; preds = %143, %137
  br label %147

147:                                              ; preds = %146
  %148 = load i8*, i8** %3, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %3, align 8
  %150 = load i8, i8* %148, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 43
  br i1 %152, label %137, label %153

153:                                              ; preds = %147
  br label %14

154:                                              ; preds = %14
  %155 = load i8*, i8** %4, align 8
  store i8 0, i8* %155, align 1
  %156 = load i8*, i8** @prep_buf, align 8
  store i8* %156, i8** %2, align 8
  br label %157

157:                                              ; preds = %154, %10
  %158 = load i8*, i8** %2, align 8
  ret i8* %158
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

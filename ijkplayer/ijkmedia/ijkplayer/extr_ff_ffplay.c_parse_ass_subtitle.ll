; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_parse_ass_subtitle.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_parse_ass_subtitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\\N\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*)* @parse_ass_subtitle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_ass_subtitle(i8* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 58)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8* %18, i8** %6, align 8
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 44)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8* %26, i8** %6, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i8*, i8** %6, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 44)
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i8*, i8** %6, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 44)
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8* %42, i8** %6, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i8*, i8** %6, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 44)
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %6, align 8
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i8*, i8** %6, align 8
  %53 = call i8* @strchr(i8* %52, i8 signext 44)
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %6, align 8
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i8*, i8** %6, align 8
  %61 = call i8* @strchr(i8* %60, i8 signext 44)
  store i8* %61, i8** %6, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8* %66, i8** %6, align 8
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i8*, i8** %6, align 8
  %69 = call i8* @strchr(i8* %68, i8 signext 44)
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8* %74, i8** %6, align 8
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i8*, i8** %6, align 8
  %77 = call i8* @strchr(i8* %76, i8 signext 44)
  store i8* %77, i8** %6, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  store i8* %82, i8** %6, align 8
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i8*, i8** %6, align 8
  %85 = call i8* @strchr(i8* %84, i8 signext 44)
  store i8* %85, i8** %6, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  store i8* %90, i8** %6, align 8
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i8*, i8** %6, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %162

94:                                               ; preds = %91
  %95 = load i8*, i8** %6, align 8
  store i8* %95, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %96

96:                                               ; preds = %156, %94
  %97 = load i8*, i8** %7, align 8
  %98 = call i8* @strstr(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %98, i8** %9, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %122

101:                                              ; preds = %96
  %102 = load i8*, i8** %9, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  store i64 %106, i64* %10, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = load i64, i64* %8, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = load i8*, i8** %7, align 8
  %111 = load i64, i64* %10, align 8
  %112 = call i32 @memcpy(i8* %109, i8* %110, i64 %111)
  %113 = load i8*, i8** %5, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* %10, align 8
  %116 = add i64 %114, %115
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  store i8 10, i8* %117, align 1
  %118 = load i64, i64* %10, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %8, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 2
  store i8* %121, i8** %7, align 8
  br label %155

122:                                              ; preds = %96
  %123 = load i8*, i8** %7, align 8
  %124 = call i32 @strlen(i8* %123)
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %11, align 8
  %126 = load i8*, i8** %5, align 8
  %127 = load i64, i64* %8, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = load i8*, i8** %7, align 8
  %130 = load i64, i64* %11, align 8
  %131 = call i32 @memcpy(i8* %128, i8* %129, i64 %130)
  %132 = load i8*, i8** %5, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* %11, align 8
  %135 = add i64 %133, %134
  %136 = sub i64 %135, 1
  %137 = getelementptr inbounds i8, i8* %132, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 10
  br i1 %140, label %141, label %148

141:                                              ; preds = %122
  %142 = load i8*, i8** %5, align 8
  %143 = load i64, i64* %8, align 8
  %144 = load i64, i64* %11, align 8
  %145 = add i64 %143, %144
  %146 = sub i64 %145, 1
  %147 = getelementptr inbounds i8, i8* %142, i64 %146
  store i8 0, i8* %147, align 1
  br label %154

148:                                              ; preds = %122
  %149 = load i8*, i8** %5, align 8
  %150 = load i64, i64* %8, align 8
  %151 = load i64, i64* %11, align 8
  %152 = add i64 %150, %151
  %153 = getelementptr inbounds i8, i8* %149, i64 %152
  store i8 0, i8* %153, align 1
  br label %154

154:                                              ; preds = %148, %141
  br label %157

155:                                              ; preds = %101
  br label %156

156:                                              ; preds = %155
  br i1 true, label %96, label %157

157:                                              ; preds = %156, %154
  %158 = load i8*, i8** %5, align 8
  %159 = call i32 @strlen(i8* %158)
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  store i64 %161, i64* %3, align 8
  br label %163

162:                                              ; preds = %91
  store i64 0, i64* %3, align 8
  br label %163

163:                                              ; preds = %162, %157
  %164 = load i64, i64* %3, align 8
  ret i64 %164
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

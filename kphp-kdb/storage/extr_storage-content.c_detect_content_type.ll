; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-content.c_detect_content_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-content.c_detect_content_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ct_mov = common dso_local global i32 0, align 4
@ct_mp4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"PDF\00", align 1
@ct_pdf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"D3\00", align 1
@ct_mp3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"IF\00", align 1
@ct_gif = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"IFF\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"WEBP\00", align 1
@ct_webp = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"PNG\00", align 1
@ct_png = common dso_local global i32 0, align 4
@ct_jpeg = common dso_local global i32 0, align 4
@ct_unknown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @detect_content_type(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  switch i32 %12, label %142 [
    i32 0, label %13
    i32 37, label %54
    i32 73, label %65
    i32 71, label %76
    i32 82, label %87
    i32 137, label %108
    i32 255, label %119
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp sge i32 %14, 12
  br i1 %15, label %16, label %53

16:                                               ; preds = %13
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 335544320
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1887007846
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 538997873
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @ct_mov, align 4
  store i32 %32, i32* %3, align 4
  br label %144

33:                                               ; preds = %26, %21, %16
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 16777215
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %33
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1887007846
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 16777215
  %49 = icmp eq i32 %48, 3436653
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @ct_mp4, align 4
  store i32 %51, i32* %3, align 4
  br label %144

52:                                               ; preds = %44, %39, %33
  br label %53

53:                                               ; preds = %52, %13
  br label %142

54:                                               ; preds = %2
  %55 = load i32, i32* %5, align 4
  %56 = icmp sge i32 %55, 4
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = call i32 @memcmp(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @ct_pdf, align 4
  store i32 %63, i32* %3, align 4
  br label %144

64:                                               ; preds = %57, %54
  br label %142

65:                                               ; preds = %2
  %66 = load i32, i32* %5, align 4
  %67 = icmp sge i32 %66, 3
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = call i32 @memcmp(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @ct_mp3, align 4
  store i32 %74, i32* %3, align 4
  br label %144

75:                                               ; preds = %68, %65
  br label %142

76:                                               ; preds = %2
  %77 = load i32, i32* %5, align 4
  %78 = icmp sge i32 %77, 5
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = call i32 @memcmp(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @ct_gif, align 4
  store i32 %85, i32* %3, align 4
  br label %144

86:                                               ; preds = %79, %76
  br label %142

87:                                               ; preds = %2
  %88 = load i32, i32* %5, align 4
  %89 = icmp sge i32 %88, 4
  br i1 %89, label %90, label %107

90:                                               ; preds = %87
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = call i32 @memcmp(i8* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %5, align 4
  %97 = icmp sge i32 %96, 12
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 8
  %101 = call i32 @memcmp(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @ct_webp, align 4
  store i32 %104, i32* %3, align 4
  br label %144

105:                                              ; preds = %98, %95
  %106 = load i32, i32* @ct_mp3, align 4
  store i32 %106, i32* %3, align 4
  br label %144

107:                                              ; preds = %90, %87
  br label %142

108:                                              ; preds = %2
  %109 = load i32, i32* %5, align 4
  %110 = icmp sge i32 %109, 4
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = call i32 @memcmp(i8* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* @ct_png, align 4
  store i32 %117, i32* %3, align 4
  br label %144

118:                                              ; preds = %111, %108
  br label %142

119:                                              ; preds = %2
  %120 = load i32, i32* %5, align 4
  %121 = icmp sge i32 %120, 2
  br i1 %121, label %122, label %130

122:                                              ; preds = %119
  %123 = load i8*, i8** %4, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 216
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* @ct_jpeg, align 4
  store i32 %129, i32* %3, align 4
  br label %144

130:                                              ; preds = %122, %119
  %131 = load i32, i32* %5, align 4
  %132 = icmp sge i32 %131, 2
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp sge i32 %137, 224
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i32, i32* @ct_mp3, align 4
  store i32 %140, i32* %3, align 4
  br label %144

141:                                              ; preds = %133, %130
  br label %142

142:                                              ; preds = %2, %141, %118, %107, %86, %75, %64, %53
  %143 = load i32, i32* @ct_unknown, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %139, %128, %116, %105, %103, %84, %73, %62, %50, %31
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

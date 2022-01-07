; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_opesys.c_get_real_android.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_opesys.c_get_real_android.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Pie 9\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"8.1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Oreo 8.1\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"8.0\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Oreo 8.0\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"7.1\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Nougat 7.1\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"7.0\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Nougat 7.0\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"6.0.1\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Marshmallow 6.0.1\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"6.0\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Marshmallow 6.0\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"5.1\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Lollipop 5.1\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"5.0\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Lollipop 5.0\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"4.4\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"KitKat 4.4\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"4.3\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Jelly Bean 4.3\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"4.2\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Jelly Bean 4.2\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"4.1\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Jelly Bean 4.1\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"4.0\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"Ice Cream Sandwich 4.0\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"3.\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"Honeycomb 3\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"Gingerbread 2.3\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"2.2\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"Froyo 2.2\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"2.1\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"Eclair 2\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"1.6\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"Donut 1.6\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"Cupcake 1.5\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_real_android to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_real_android(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strstr(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i8* @alloc_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %8, i8** %2, align 8
  br label %149

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strstr(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i8* @alloc_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  br label %149

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strstr(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i8* @alloc_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i8* %20, i8** %2, align 8
  br label %149

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strstr(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i8* @alloc_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  store i8* %26, i8** %2, align 8
  br label %149

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strstr(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i8* @alloc_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  store i8* %32, i8** %2, align 8
  br label %149

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @strstr(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i8* @alloc_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  store i8* %38, i8** %2, align 8
  br label %149

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @strstr(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i8* @alloc_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  store i8* %44, i8** %2, align 8
  br label %149

45:                                               ; preds = %39
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @strstr(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i8* @alloc_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  store i8* %50, i8** %2, align 8
  br label %149

51:                                               ; preds = %45
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @strstr(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i8* @alloc_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  store i8* %56, i8** %2, align 8
  br label %149

57:                                               ; preds = %51
  %58 = load i8*, i8** %3, align 8
  %59 = call i64 @strstr(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i8* @alloc_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store i8* %62, i8** %2, align 8
  br label %149

63:                                               ; preds = %57
  %64 = load i8*, i8** %3, align 8
  %65 = call i64 @strstr(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = call i8* @alloc_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  store i8* %68, i8** %2, align 8
  br label %149

69:                                               ; preds = %63
  %70 = load i8*, i8** %3, align 8
  %71 = call i64 @strstr(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i8* @alloc_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  store i8* %74, i8** %2, align 8
  br label %149

75:                                               ; preds = %69
  %76 = load i8*, i8** %3, align 8
  %77 = call i64 @strstr(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i8* @alloc_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0))
  store i8* %80, i8** %2, align 8
  br label %149

81:                                               ; preds = %75
  %82 = load i8*, i8** %3, align 8
  %83 = call i64 @strstr(i8* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i8* @alloc_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0))
  store i8* %86, i8** %2, align 8
  br label %149

87:                                               ; preds = %81
  %88 = load i8*, i8** %3, align 8
  %89 = call i64 @strstr(i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = call i8* @alloc_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0))
  store i8* %92, i8** %2, align 8
  br label %149

93:                                               ; preds = %87
  %94 = load i8*, i8** %3, align 8
  %95 = call i64 @strstr(i8* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = call i8* @alloc_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  store i8* %98, i8** %2, align 8
  br label %149

99:                                               ; preds = %93
  %100 = load i8*, i8** %3, align 8
  %101 = call i64 @strstr(i8* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = call i8* @alloc_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0))
  store i8* %104, i8** %2, align 8
  br label %149

105:                                              ; preds = %99
  %106 = load i8*, i8** %3, align 8
  %107 = call i64 @strstr(i8* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i8*, i8** %3, align 8
  %111 = call i64 @strstr(i8* %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109, %105
  %114 = call i8* @alloc_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0))
  store i8* %114, i8** %2, align 8
  br label %149

115:                                              ; preds = %109
  %116 = load i8*, i8** %3, align 8
  %117 = call i64 @strstr(i8* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0))
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = call i8* @alloc_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0))
  store i8* %120, i8** %2, align 8
  br label %149

121:                                              ; preds = %115
  %122 = load i8*, i8** %3, align 8
  %123 = call i64 @strstr(i8* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0))
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = call i8* @alloc_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0))
  store i8* %126, i8** %2, align 8
  br label %149

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137
  br label %139

139:                                              ; preds = %138
  br label %140

140:                                              ; preds = %139
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145
  %147 = load i8*, i8** %3, align 8
  %148 = call i8* @alloc_string(i8* %147)
  store i8* %148, i8** %2, align 8
  br label %149

149:                                              ; preds = %146, %125, %119, %113, %103, %97, %91, %85, %79, %73, %67, %61, %55, %49, %43, %37, %31, %25, %19, %13, %7
  %150 = load i8*, i8** %2, align 8
  ret i8* %150
}

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i8* @alloc_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

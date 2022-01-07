; ModuleID = '/home/carl/AnghaBench/http-parser/extr_http_parser.c_parse_url_char.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_http_parser.c_parse_url_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_dead = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8)* @parse_url_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_url_char(i32 %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 32
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i8, i8* %5, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 13
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i8, i8* %5, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %9, %2
  %18 = load i32, i32* @s_dead, align 4
  store i32 %18, i32* %3, align 4
  br label %146

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %143 [
    i32 128, label %21
    i32 134, label %36
    i32 133, label %48
    i32 132, label %54
    i32 129, label %60
    i32 130, label %67
    i32 131, label %67
    i32 137, label %96
    i32 135, label %108
    i32 136, label %108
    i32 138, label %119
    i32 139, label %131
  ]

21:                                               ; preds = %19
  %22 = load i8, i8* %5, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 47
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i8, i8* %5, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 42
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  store i32 137, i32* %3, align 4
  br label %146

30:                                               ; preds = %25
  %31 = load i8, i8* %5, align 1
  %32 = call i32 @IS_ALPHA(i8 signext %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 134, i32* %3, align 4
  br label %146

35:                                               ; preds = %30
  br label %144

36:                                               ; preds = %19
  %37 = load i8, i8* %5, align 1
  %38 = call i32 @IS_ALPHA(i8 signext %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %3, align 4
  br label %146

42:                                               ; preds = %36
  %43 = load i8, i8* %5, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 58
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 133, i32* %3, align 4
  br label %146

47:                                               ; preds = %42
  br label %144

48:                                               ; preds = %19
  %49 = load i8, i8* %5, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 47
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 132, i32* %3, align 4
  br label %146

53:                                               ; preds = %48
  br label %144

54:                                               ; preds = %19
  %55 = load i8, i8* %5, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 47
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 130, i32* %3, align 4
  br label %146

59:                                               ; preds = %54
  br label %144

60:                                               ; preds = %19
  %61 = load i8, i8* %5, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 64
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @s_dead, align 4
  store i32 %65, i32* %3, align 4
  br label %146

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %19, %19, %66
  %68 = load i8, i8* %5, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 47
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 137, i32* %3, align 4
  br label %146

72:                                               ; preds = %67
  %73 = load i8, i8* %5, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 63
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 135, i32* %3, align 4
  br label %146

77:                                               ; preds = %72
  %78 = load i8, i8* %5, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 64
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 129, i32* %3, align 4
  br label %146

82:                                               ; preds = %77
  %83 = load i8, i8* %5, align 1
  %84 = call i32 @IS_USERINFO_CHAR(i8 signext %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = load i8, i8* %5, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 91
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i8, i8* %5, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 93
  br i1 %93, label %94, label %95

94:                                               ; preds = %90, %86, %82
  store i32 131, i32* %3, align 4
  br label %146

95:                                               ; preds = %90
  br label %144

96:                                               ; preds = %19
  %97 = load i8, i8* %5, align 1
  %98 = call i32 @IS_URL_CHAR(i8 signext %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %3, align 4
  br label %146

102:                                              ; preds = %96
  %103 = load i8, i8* %5, align 1
  %104 = sext i8 %103 to i32
  switch i32 %104, label %107 [
    i32 63, label %105
    i32 35, label %106
  ]

105:                                              ; preds = %102
  store i32 135, i32* %3, align 4
  br label %146

106:                                              ; preds = %102
  store i32 138, i32* %3, align 4
  br label %146

107:                                              ; preds = %102
  br label %144

108:                                              ; preds = %19, %19
  %109 = load i8, i8* %5, align 1
  %110 = call i32 @IS_URL_CHAR(i8 signext %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 136, i32* %3, align 4
  br label %146

113:                                              ; preds = %108
  %114 = load i8, i8* %5, align 1
  %115 = sext i8 %114 to i32
  switch i32 %115, label %118 [
    i32 63, label %116
    i32 35, label %117
  ]

116:                                              ; preds = %113
  store i32 136, i32* %3, align 4
  br label %146

117:                                              ; preds = %113
  store i32 138, i32* %3, align 4
  br label %146

118:                                              ; preds = %113
  br label %144

119:                                              ; preds = %19
  %120 = load i8, i8* %5, align 1
  %121 = call i32 @IS_URL_CHAR(i8 signext %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i32 139, i32* %3, align 4
  br label %146

124:                                              ; preds = %119
  %125 = load i8, i8* %5, align 1
  %126 = sext i8 %125 to i32
  switch i32 %126, label %130 [
    i32 63, label %127
    i32 35, label %128
  ]

127:                                              ; preds = %124
  store i32 139, i32* %3, align 4
  br label %146

128:                                              ; preds = %124
  %129 = load i32, i32* %4, align 4
  store i32 %129, i32* %3, align 4
  br label %146

130:                                              ; preds = %124
  br label %144

131:                                              ; preds = %19
  %132 = load i8, i8* %5, align 1
  %133 = call i32 @IS_URL_CHAR(i8 signext %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* %4, align 4
  store i32 %136, i32* %3, align 4
  br label %146

137:                                              ; preds = %131
  %138 = load i8, i8* %5, align 1
  %139 = sext i8 %138 to i32
  switch i32 %139, label %142 [
    i32 63, label %140
    i32 35, label %140
  ]

140:                                              ; preds = %137, %137
  %141 = load i32, i32* %4, align 4
  store i32 %141, i32* %3, align 4
  br label %146

142:                                              ; preds = %137
  br label %144

143:                                              ; preds = %19
  br label %144

144:                                              ; preds = %143, %142, %130, %118, %107, %95, %59, %53, %47, %35
  %145 = load i32, i32* @s_dead, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %140, %135, %128, %127, %123, %117, %116, %112, %106, %105, %100, %94, %81, %76, %71, %64, %58, %52, %46, %40, %34, %29, %17
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @IS_ALPHA(i8 signext) #1

declare dso_local i32 @IS_USERINFO_CHAR(i8 signext) #1

declare dso_local i32 @IS_URL_CHAR(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

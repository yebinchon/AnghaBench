; ModuleID = '/home/carl/AnghaBench/libgit2/deps/http-parser/extr_http_parser.c_parse_url_char.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/http-parser/extr_http_parser.c_parse_url_char.c"
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
  br label %158

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %155 [
    i32 128, label %21
    i32 134, label %36
    i32 133, label %60
    i32 132, label %66
    i32 129, label %72
    i32 130, label %79
    i32 131, label %79
    i32 137, label %108
    i32 135, label %120
    i32 136, label %120
    i32 138, label %131
    i32 139, label %143
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
  br label %158

30:                                               ; preds = %25
  %31 = load i8, i8* %5, align 1
  %32 = call i32 @IS_ALPHA(i8 signext %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 134, i32* %3, align 4
  br label %158

35:                                               ; preds = %30
  br label %156

36:                                               ; preds = %19
  %37 = load i8, i8* %5, align 1
  %38 = call i32 @IS_ALPHANUM(i8 signext %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = load i8, i8* %5, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 43
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i8, i8* %5, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 45
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i8, i8* %5, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 46
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %44, %40, %36
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %3, align 4
  br label %158

54:                                               ; preds = %48
  %55 = load i8, i8* %5, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 58
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 133, i32* %3, align 4
  br label %158

59:                                               ; preds = %54
  br label %156

60:                                               ; preds = %19
  %61 = load i8, i8* %5, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 47
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 132, i32* %3, align 4
  br label %158

65:                                               ; preds = %60
  br label %156

66:                                               ; preds = %19
  %67 = load i8, i8* %5, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 47
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 130, i32* %3, align 4
  br label %158

71:                                               ; preds = %66
  br label %156

72:                                               ; preds = %19
  %73 = load i8, i8* %5, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 64
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @s_dead, align 4
  store i32 %77, i32* %3, align 4
  br label %158

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %19, %19, %78
  %80 = load i8, i8* %5, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 47
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 137, i32* %3, align 4
  br label %158

84:                                               ; preds = %79
  %85 = load i8, i8* %5, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 63
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 135, i32* %3, align 4
  br label %158

89:                                               ; preds = %84
  %90 = load i8, i8* %5, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 64
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 129, i32* %3, align 4
  br label %158

94:                                               ; preds = %89
  %95 = load i8, i8* %5, align 1
  %96 = call i32 @IS_USERINFO_CHAR(i8 signext %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  %99 = load i8, i8* %5, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 91
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i8, i8* %5, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 93
  br i1 %105, label %106, label %107

106:                                              ; preds = %102, %98, %94
  store i32 131, i32* %3, align 4
  br label %158

107:                                              ; preds = %102
  br label %156

108:                                              ; preds = %19
  %109 = load i8, i8* %5, align 1
  %110 = call i32 @IS_URL_CHAR(i8 signext %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* %4, align 4
  store i32 %113, i32* %3, align 4
  br label %158

114:                                              ; preds = %108
  %115 = load i8, i8* %5, align 1
  %116 = sext i8 %115 to i32
  switch i32 %116, label %119 [
    i32 63, label %117
    i32 35, label %118
  ]

117:                                              ; preds = %114
  store i32 135, i32* %3, align 4
  br label %158

118:                                              ; preds = %114
  store i32 138, i32* %3, align 4
  br label %158

119:                                              ; preds = %114
  br label %156

120:                                              ; preds = %19, %19
  %121 = load i8, i8* %5, align 1
  %122 = call i32 @IS_URL_CHAR(i8 signext %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 136, i32* %3, align 4
  br label %158

125:                                              ; preds = %120
  %126 = load i8, i8* %5, align 1
  %127 = sext i8 %126 to i32
  switch i32 %127, label %130 [
    i32 63, label %128
    i32 35, label %129
  ]

128:                                              ; preds = %125
  store i32 136, i32* %3, align 4
  br label %158

129:                                              ; preds = %125
  store i32 138, i32* %3, align 4
  br label %158

130:                                              ; preds = %125
  br label %156

131:                                              ; preds = %19
  %132 = load i8, i8* %5, align 1
  %133 = call i32 @IS_URL_CHAR(i8 signext %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 139, i32* %3, align 4
  br label %158

136:                                              ; preds = %131
  %137 = load i8, i8* %5, align 1
  %138 = sext i8 %137 to i32
  switch i32 %138, label %142 [
    i32 63, label %139
    i32 35, label %140
  ]

139:                                              ; preds = %136
  store i32 139, i32* %3, align 4
  br label %158

140:                                              ; preds = %136
  %141 = load i32, i32* %4, align 4
  store i32 %141, i32* %3, align 4
  br label %158

142:                                              ; preds = %136
  br label %156

143:                                              ; preds = %19
  %144 = load i8, i8* %5, align 1
  %145 = call i32 @IS_URL_CHAR(i8 signext %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i32, i32* %4, align 4
  store i32 %148, i32* %3, align 4
  br label %158

149:                                              ; preds = %143
  %150 = load i8, i8* %5, align 1
  %151 = sext i8 %150 to i32
  switch i32 %151, label %154 [
    i32 63, label %152
    i32 35, label %152
  ]

152:                                              ; preds = %149, %149
  %153 = load i32, i32* %4, align 4
  store i32 %153, i32* %3, align 4
  br label %158

154:                                              ; preds = %149
  br label %156

155:                                              ; preds = %19
  br label %156

156:                                              ; preds = %155, %154, %142, %130, %119, %107, %71, %65, %59, %35
  %157 = load i32, i32* @s_dead, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %152, %147, %140, %139, %135, %129, %128, %124, %118, %117, %112, %106, %93, %88, %83, %76, %70, %64, %58, %52, %34, %29, %17
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @IS_ALPHA(i8 signext) #1

declare dso_local i32 @IS_ALPHANUM(i8 signext) #1

declare dso_local i32 @IS_USERINFO_CHAR(i8 signext) #1

declare dso_local i32 @IS_URL_CHAR(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

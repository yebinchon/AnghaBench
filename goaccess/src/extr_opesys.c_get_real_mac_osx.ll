; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_opesys.c_get_real_mac_osx.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_opesys.c_get_real_mac_osx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"10.14\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"macOS 10.14 Mojave\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"10.13\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"macOS 10.13 High Sierra\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"10.12\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"macOS 10.12 Sierra\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"10.11\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"OS X 10.11 El Capitan\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"10.10\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"OS X 10.10 Yosemite\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"10.9\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"OS X 10.9 Mavericks\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"10.8\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"OS X 10.8 Mountain Lion\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"10.7\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"OS X 10.7 Lion\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"10.6\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"OS X 10.6 Snow Leopard\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"10.5\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"OS X 10.5 Leopard\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"10.4\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"OS X 10.4 Tiger\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"10.3\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"OS X 10.3 Panther\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"10.2\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"OS X 10.2 Jaguar\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"10.1\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"OS X 10.1 Puma\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"10.0\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"OS X 10.0 Cheetah\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_real_mac_osx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_real_mac_osx(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strstr(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i8* @alloc_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i8* %8, i8** %2, align 8
  br label %110

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strstr(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i8* @alloc_string(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  br label %110

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strstr(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i8* @alloc_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i8* %20, i8** %2, align 8
  br label %110

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strstr(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i8* @alloc_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  store i8* %26, i8** %2, align 8
  br label %110

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strstr(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i8* @alloc_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  store i8* %32, i8** %2, align 8
  br label %110

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @strstr(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i8* @alloc_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  store i8* %38, i8** %2, align 8
  br label %110

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @strstr(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i8* @alloc_string(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  store i8* %44, i8** %2, align 8
  br label %110

45:                                               ; preds = %39
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @strstr(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i8* @alloc_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  store i8* %50, i8** %2, align 8
  br label %110

51:                                               ; preds = %45
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @strstr(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i8* @alloc_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  store i8* %56, i8** %2, align 8
  br label %110

57:                                               ; preds = %51
  %58 = load i8*, i8** %3, align 8
  %59 = call i64 @strstr(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i8* @alloc_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  store i8* %62, i8** %2, align 8
  br label %110

63:                                               ; preds = %57
  %64 = load i8*, i8** %3, align 8
  %65 = call i64 @strstr(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = call i8* @alloc_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0))
  store i8* %68, i8** %2, align 8
  br label %110

69:                                               ; preds = %63
  %70 = load i8*, i8** %3, align 8
  %71 = call i64 @strstr(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i8* @alloc_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0))
  store i8* %74, i8** %2, align 8
  br label %110

75:                                               ; preds = %69
  %76 = load i8*, i8** %3, align 8
  %77 = call i64 @strstr(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i8* @alloc_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0))
  store i8* %80, i8** %2, align 8
  br label %110

81:                                               ; preds = %75
  %82 = load i8*, i8** %3, align 8
  %83 = call i64 @strstr(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i8* @alloc_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0))
  store i8* %86, i8** %2, align 8
  br label %110

87:                                               ; preds = %81
  %88 = load i8*, i8** %3, align 8
  %89 = call i64 @strstr(i8* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = call i8* @alloc_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0))
  store i8* %92, i8** %2, align 8
  br label %110

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  %108 = load i8*, i8** %3, align 8
  %109 = call i8* @alloc_string(i8* %108)
  store i8* %109, i8** %2, align 8
  br label %110

110:                                              ; preds = %107, %91, %85, %79, %73, %67, %61, %55, %49, %43, %37, %31, %25, %19, %13, %7
  %111 = load i8*, i8** %2, align 8
  ret i8* %111
}

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i8* @alloc_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

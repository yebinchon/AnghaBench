; ModuleID = '/home/carl/AnghaBench/http-parser/extr_http_parser.c_http_parse_host_char.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_http_parser.c_http_parse_host_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_http_host_dead = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8)* @http_parse_host_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_parse_host_char(i32 %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %107 [
    i32 129, label %7
    i32 128, label %7
    i32 135, label %18
    i32 138, label %29
    i32 133, label %35
    i32 134, label %41
    i32 132, label %47
    i32 131, label %69
    i32 130, label %75
    i32 137, label %101
    i32 136, label %101
  ]

7:                                                ; preds = %2, %2
  %8 = load i8, i8* %5, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 64
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 135, i32* %3, align 4
  br label %110

12:                                               ; preds = %7
  %13 = load i8, i8* %5, align 1
  %14 = call i32 @IS_USERINFO_CHAR(i8 signext %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 129, i32* %3, align 4
  br label %110

17:                                               ; preds = %12
  br label %108

18:                                               ; preds = %2
  %19 = load i8, i8* %5, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 91
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 132, i32* %3, align 4
  br label %110

23:                                               ; preds = %18
  %24 = load i8, i8* %5, align 1
  %25 = call i32 @IS_HOST_CHAR(i8 signext %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 138, i32* %3, align 4
  br label %110

28:                                               ; preds = %23
  br label %108

29:                                               ; preds = %2
  %30 = load i8, i8* %5, align 1
  %31 = call i32 @IS_HOST_CHAR(i8 signext %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 138, i32* %3, align 4
  br label %110

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %2, %34
  %36 = load i8, i8* %5, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 58
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 136, i32* %3, align 4
  br label %110

40:                                               ; preds = %35
  br label %108

41:                                               ; preds = %2
  %42 = load i8, i8* %5, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 93
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 133, i32* %3, align 4
  br label %110

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %2, %46
  %48 = load i8, i8* %5, align 1
  %49 = call i32 @IS_HEX(i8 signext %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i8, i8* %5, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 58
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8, i8* %5, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 46
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51, %47
  store i32 134, i32* %3, align 4
  br label %110

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 134
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i8, i8* %5, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 37
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 130, i32* %3, align 4
  br label %110

68:                                               ; preds = %63, %60
  br label %108

69:                                               ; preds = %2
  %70 = load i8, i8* %5, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 93
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 133, i32* %3, align 4
  br label %110

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %2, %74
  %76 = load i8, i8* %5, align 1
  %77 = call i32 @IS_ALPHANUM(i8 signext %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %99, label %79

79:                                               ; preds = %75
  %80 = load i8, i8* %5, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 37
  br i1 %82, label %99, label %83

83:                                               ; preds = %79
  %84 = load i8, i8* %5, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 46
  br i1 %86, label %99, label %87

87:                                               ; preds = %83
  %88 = load i8, i8* %5, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 45
  br i1 %90, label %99, label %91

91:                                               ; preds = %87
  %92 = load i8, i8* %5, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 95
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i8, i8* %5, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 126
  br i1 %98, label %99, label %100

99:                                               ; preds = %95, %91, %87, %83, %79, %75
  store i32 131, i32* %3, align 4
  br label %110

100:                                              ; preds = %95
  br label %108

101:                                              ; preds = %2, %2
  %102 = load i8, i8* %5, align 1
  %103 = call i32 @IS_NUM(i8 signext %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 137, i32* %3, align 4
  br label %110

106:                                              ; preds = %101
  br label %108

107:                                              ; preds = %2
  br label %108

108:                                              ; preds = %107, %106, %100, %68, %40, %28, %17
  %109 = load i32, i32* @s_http_host_dead, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %105, %99, %73, %67, %59, %45, %39, %33, %27, %22, %16, %11
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @IS_USERINFO_CHAR(i8 signext) #1

declare dso_local i32 @IS_HOST_CHAR(i8 signext) #1

declare dso_local i32 @IS_HEX(i8 signext) #1

declare dso_local i32 @IS_ALPHANUM(i8 signext) #1

declare dso_local i32 @IS_NUM(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

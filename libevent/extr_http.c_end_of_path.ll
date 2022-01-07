; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_end_of_path.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_end_of_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVHTTP_URI_NONCONFORMANT = common dso_local global i32 0, align 4
@SUBDELIMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32)* @end_of_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @end_of_path(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @EVHTTP_URI_NONCONFORMANT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %59 [
    i32 129, label %14
    i32 128, label %36
    i32 130, label %53
  ]

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %32, %14
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 35
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 63
  br label %30

30:                                               ; preds = %25, %20, %15
  %31 = phi i1 [ false, %20 ], [ false, %15 ], [ %29, %25 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %5, align 8
  br label %15

35:                                               ; preds = %30
  br label %59

36:                                               ; preds = %12
  br label %37

37:                                               ; preds = %49, %36
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 35
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %46, %42 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %5, align 8
  br label %37

52:                                               ; preds = %47
  br label %59

53:                                               ; preds = %12
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = load i8*, i8** %5, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %5, align 8
  br label %59

59:                                               ; preds = %12, %53, %52, %35
  %60 = load i8*, i8** %5, align 8
  store i8* %60, i8** %4, align 8
  br label %133

61:                                               ; preds = %3
  br label %62

62:                                               ; preds = %130, %61
  %63 = load i8*, i8** %5, align 8
  %64 = load i8, i8* %63, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %66, label %131

66:                                               ; preds = %62
  %67 = load i8*, i8** %5, align 8
  %68 = load i8, i8* %67, align 1
  %69 = call i64 @CHAR_IS_UNRESERVED(i8 signext %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %92, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @SUBDELIMS, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @strchr(i32 %72, i8 signext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %92, label %77

77:                                               ; preds = %71
  %78 = load i8*, i8** %5, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 58
  br i1 %81, label %92, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 64
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load i8*, i8** %5, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 47
  br i1 %91, label %92, label %95

92:                                               ; preds = %87, %82, %77, %71, %66
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %5, align 8
  br label %130

95:                                               ; preds = %87
  %96 = load i8*, i8** %5, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 37
  br i1 %99, label %100, label %115

100:                                              ; preds = %95
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = call i64 @EVUTIL_ISXDIGIT_(i8 signext %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  %109 = load i8, i8* %108, align 1
  %110 = call i64 @EVUTIL_ISXDIGIT_(i8 signext %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 3
  store i8* %114, i8** %5, align 8
  br label %129

115:                                              ; preds = %106, %100, %95
  %116 = load i8*, i8** %5, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 63
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 129
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i8*, i8** %5, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %5, align 8
  br label %128

126:                                              ; preds = %120, %115
  %127 = load i8*, i8** %5, align 8
  store i8* %127, i8** %4, align 8
  br label %133

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128, %112
  br label %130

130:                                              ; preds = %129, %92
  br label %62

131:                                              ; preds = %62
  %132 = load i8*, i8** %5, align 8
  store i8* %132, i8** %4, align 8
  br label %133

133:                                              ; preds = %131, %126, %59
  %134 = load i8*, i8** %4, align 8
  ret i8* %134
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @CHAR_IS_UNRESERVED(i8 signext) #1

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i64 @EVUTIL_ISXDIGIT_(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

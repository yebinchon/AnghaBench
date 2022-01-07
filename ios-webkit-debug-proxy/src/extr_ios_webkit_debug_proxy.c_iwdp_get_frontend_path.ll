; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_get_frontend_path.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_get_frontend_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IWDP_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"/devtools/\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-./_\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%.*s%.*s\00", align 1
@IWDP_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwdp_get_frontend_path(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = icmp ne i8** %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @IWDP_ERROR, align 4
  store i32 %17, i32* %4, align 4
  br label %146

18:                                               ; preds = %3
  %19 = load i8**, i8*** %7, align 8
  store i8* null, i8** %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @IWDP_ERROR, align 4
  store i32 %23, i32* %4, align 4
  br label %146

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @strrchr(i8* %25, i8 signext 47)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  br label %33

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i8* [ %31, %29 ], [ null, %32 ]
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  br label %44

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi i64 [ %42, %37 ], [ 0, %43 ]
  store i64 %45, i64* %9, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @strncmp(i8* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %44
  %53 = load i32, i32* @IWDP_ERROR, align 4
  store i32 %53, i32* %4, align 4
  br label %146

54:                                               ; preds = %48
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 10
  store i8* %56, i8** %10, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 -1
  store i8* %58, i8** %11, align 8
  br label %59

59:                                               ; preds = %65, %54
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %11, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 47
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %59

66:                                               ; preds = %59
  %67 = load i8*, i8** %11, align 8
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %12, align 1
  br label %69

69:                                               ; preds = %106, %66
  %70 = load i8, i8* %12, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sge i32 %71, 97
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i8, i8* %12, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sle i32 %75, 122
  br i1 %76, label %103, label %77

77:                                               ; preds = %73, %69
  %78 = load i8, i8* %12, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp sge i32 %79, 65
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i8, i8* %12, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp sle i32 %83, 90
  br i1 %84, label %103, label %85

85:                                               ; preds = %81, %77
  %86 = load i8, i8* %12, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp sge i32 %87, 48
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i8, i8* %12, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp sle i32 %91, 57
  br i1 %92, label %103, label %93

93:                                               ; preds = %89, %85
  %94 = load i8, i8* %12, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i8, i8* %12, align 1
  %99 = call i64 @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8 signext %98)
  %100 = icmp ne i64 %99, 0
  br label %101

101:                                              ; preds = %97, %93
  %102 = phi i1 [ false, %93 ], [ %100, %97 ]
  br label %103

103:                                              ; preds = %101, %89, %81, %73
  %104 = phi i1 [ true, %89 ], [ true, %81 ], [ true, %73 ], [ %102, %101 ]
  br i1 %104, label %105, label %110

105:                                              ; preds = %103
  br label %106

106:                                              ; preds = %105
  %107 = load i8*, i8** %11, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %11, align 8
  %109 = load i8, i8* %108, align 1
  store i8 %109, i8* %12, align 1
  br label %69

110:                                              ; preds = %103
  %111 = load i8*, i8** %11, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  store i64 %115, i64* %13, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = load i64, i64* %13, align 8
  %118 = call i64 @strnstr(i8* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %110
  %121 = load i32, i32* @IWDP_ERROR, align 4
  store i32 %121, i32* %4, align 4
  br label %146

122:                                              ; preds = %110
  %123 = load i64, i64* %13, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %122
  %126 = load i8*, i8** %8, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i8*, i8** %8, align 8
  store i8* %129, i8** %10, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = call i64 @strlen(i8* %130)
  store i64 %131, i64* %13, align 8
  br label %132

132:                                              ; preds = %128, %125, %122
  %133 = load i8**, i8*** %7, align 8
  %134 = load i64, i64* %9, align 8
  %135 = trunc i64 %134 to i32
  %136 = load i8*, i8** %5, align 8
  %137 = load i64, i64* %13, align 8
  %138 = trunc i64 %137 to i32
  %139 = load i8*, i8** %10, align 8
  %140 = call i64 @asprintf(i8** %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %135, i8* %136, i32 %138, i8* %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %132
  %143 = load i32, i32* @IWDP_ERROR, align 4
  store i32 %143, i32* %4, align 4
  br label %146

144:                                              ; preds = %132
  %145 = load i32, i32* @IWDP_SUCCESS, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %144, %142, %120, %52, %22, %16
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @strnstr(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @asprintf(i8**, i8*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

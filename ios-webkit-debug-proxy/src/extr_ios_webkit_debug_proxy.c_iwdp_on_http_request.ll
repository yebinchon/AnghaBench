; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_on_http_request.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_on_http_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"/devtools/page/\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Method Not Allowed\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"/json\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"/json/list\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"/devtools/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwdp_on_http_request(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i64 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %20, align 4
  %27 = load i32, i32* %20, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %9
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %29, %9
  %35 = phi i1 [ false, %9 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %21, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i32, i32* %20, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 @strncmp(i8* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 15)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @iwdp_on_devtools_request(i32 %47, i8* %48)
  store i32 %49, i32* %10, align 4
  br label %106

50:                                               ; preds = %42, %39
  br label %101

51:                                               ; preds = %34
  %52 = load i32, i32* %20, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %21, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %21, align 4
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 @iwdp_on_not_found(i32 %58, i32 %59, i8* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 %61, i32* %10, align 4
  br label %106

62:                                               ; preds = %54, %51
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i8*, i8** %13, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %21, align 4
  %73 = load i8*, i8** %15, align 8
  %74 = call i32 @iwdp_on_list_request(i32 %71, i32 %72, i32 0, i8* %73)
  store i32 %74, i32* %10, align 4
  br label %106

75:                                               ; preds = %66
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %79, %75
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %21, align 4
  %86 = load i8*, i8** %15, align 8
  %87 = call i32 @iwdp_on_list_request(i32 %84, i32 %85, i32 1, i8* %86)
  store i32 %87, i32* %10, align 4
  br label %106

88:                                               ; preds = %79
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 @strncmp(i8* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 10)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %21, align 4
  %95 = load i8*, i8** %13, align 8
  %96 = load i32*, i32** %19, align 8
  %97 = call i32 @iwdp_on_static_request(i32 %93, i32 %94, i8* %95, i32* %96)
  store i32 %97, i32* %10, align 4
  br label %106

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100, %50
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %21, align 4
  %104 = load i8*, i8** %13, align 8
  %105 = call i32 @iwdp_on_not_found(i32 %102, i32 %103, i8* %104, i8* null)
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %101, %92, %83, %70, %57, %46
  %107 = load i32, i32* %10, align 4
  ret i32 %107
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @iwdp_on_devtools_request(i32, i8*) #1

declare dso_local i32 @iwdp_on_not_found(i32, i32, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @iwdp_on_list_request(i32, i32, i32, i8*) #1

declare dso_local i32 @iwdp_on_static_request(i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

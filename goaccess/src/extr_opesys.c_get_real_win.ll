; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_opesys.c_get_real_win.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_opesys.c_get_real_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"10.0\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Windows 10\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"6.3\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Windows 8.1\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"6.3; ARM\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Windows RT\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"6.2; ARM\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"6.2\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Windows 8\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"6.1\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Windows 7\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"6.0\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Windows Vista\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"5.2\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Windows XP x64\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"5.1\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Windows XP\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"5.0\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Windows 2000\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_real_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_real_win(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strstr(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i8* @alloc_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %8, i8** %2, align 8
  br label %73

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strstr(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i8* @alloc_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  br label %73

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strstr(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i8* @alloc_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i8* %20, i8** %2, align 8
  br label %73

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strstr(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i8* @alloc_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i8* %26, i8** %2, align 8
  br label %73

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strstr(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i8* @alloc_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  store i8* %32, i8** %2, align 8
  br label %73

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @strstr(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i8* @alloc_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  store i8* %38, i8** %2, align 8
  br label %73

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @strstr(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i8* @alloc_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  store i8* %44, i8** %2, align 8
  br label %73

45:                                               ; preds = %39
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @strstr(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i8* @alloc_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  store i8* %50, i8** %2, align 8
  br label %73

51:                                               ; preds = %45
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @strstr(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i8* @alloc_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  store i8* %56, i8** %2, align 8
  br label %73

57:                                               ; preds = %51
  %58 = load i8*, i8** %3, align 8
  %59 = call i64 @strstr(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i8* @alloc_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  store i8* %62, i8** %2, align 8
  br label %73

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  store i8* null, i8** %2, align 8
  br label %73

73:                                               ; preds = %72, %61, %55, %49, %43, %37, %31, %25, %19, %13, %7
  %74 = load i8*, i8** %2, align 8
  ret i8* %74
}

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i8* @alloc_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

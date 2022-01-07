; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/lib/extr_cmdline.c___cmdline_find_option_bool.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/lib/extr_cmdline.c___cmdline_find_option_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @__cmdline_find_option_bool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cmdline_find_option_bool(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %84

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %82, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %83

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %5, align 8
  %24 = load i8, i8* %22, align 1
  store i8 %24, i8* %8, align 1
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %12, align 4
  switch i32 %27, label %82 [
    i32 0, label %28
    i32 1, label %41
    i32 2, label %71
  ]

28:                                               ; preds = %21
  %29 = load i8, i8* %8, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %84

32:                                               ; preds = %28
  %33 = load i8, i8* %8, align 1
  %34 = call i32 @myisspace(i8 signext %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %82

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37
  store i32 1, i32* %12, align 4
  %39 = load i8*, i8** %7, align 8
  store i8* %39, i8** %11, align 8
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %21, %38
  %42 = load i8*, i8** %11, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = load i8, i8* %8, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i8, i8* %8, align 1
  %50 = call i32 @myisspace(i8 signext %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %84

54:                                               ; preds = %48
  br label %70

55:                                               ; preds = %41
  %56 = load i8, i8* %8, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %84

59:                                               ; preds = %55
  %60 = load i8, i8* %8, align 1
  %61 = sext i8 %60 to i32
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %11, align 8
  %64 = load i8, i8* %62, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %61, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %82

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69, %54
  store i32 2, i32* %12, align 4
  br label %71

71:                                               ; preds = %21, %70
  %72 = load i8, i8* %8, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %84

75:                                               ; preds = %71
  %76 = load i8, i8* %8, align 1
  %77 = call i32 @myisspace(i8 signext %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %79, %75
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %21, %81, %67, %36
  br label %17

83:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %74, %58, %52, %31, %15
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @myisspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

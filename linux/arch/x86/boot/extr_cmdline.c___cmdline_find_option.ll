; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_cmdline.c___cmdline_find_option.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_cmdline.c___cmdline_find_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cmdline_find_option(i64 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %106

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = and i64 %21, 15
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load i64, i64* %6, align 8
  %25 = lshr i64 %24, 4
  %26 = call i32 @set_fs(i64 %25)
  br label %27

27:                                               ; preds = %98, %20
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 65536
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = call signext i8 @rdfs8(i32 %31)
  store i8 %33, i8* %11, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %30, %27
  %37 = phi i1 [ false, %27 ], [ %35, %30 ]
  br i1 %37, label %38, label %99

38:                                               ; preds = %36
  %39 = load i32, i32* %15, align 4
  switch i32 %39, label %98 [
    i32 0, label %40
    i32 1, label %47
    i32 2, label %74
    i32 3, label %80
  ]

40:                                               ; preds = %38
  %41 = load i8, i8* %11, align 1
  %42 = call i32 @myisspace(i8 signext %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %98

45:                                               ; preds = %40
  store i32 1, i32* %15, align 4
  %46 = load i8*, i8** %7, align 8
  store i8* %46, i8** %13, align 8
  br label %47

47:                                               ; preds = %38, %45
  %48 = load i8, i8* %11, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 61
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i8*, i8** %13, align 8
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  store i32 0, i32* %12, align 4
  %56 = load i8*, i8** %8, align 8
  store i8* %56, i8** %14, align 8
  store i32 3, i32* %15, align 4
  br label %73

57:                                               ; preds = %51, %47
  %58 = load i8, i8* %11, align 1
  %59 = call i32 @myisspace(i8 signext %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %15, align 4
  br label %72

62:                                               ; preds = %57
  %63 = load i8, i8* %11, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8*, i8** %13, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %13, align 8
  %67 = load i8, i8* %65, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %64, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 2, i32* %15, align 4
  br label %71

71:                                               ; preds = %70, %62
  br label %72

72:                                               ; preds = %71, %61
  br label %73

73:                                               ; preds = %72, %55
  br label %98

74:                                               ; preds = %38
  %75 = load i8, i8* %11, align 1
  %76 = call i32 @myisspace(i8 signext %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 0, i32* %15, align 4
  br label %79

79:                                               ; preds = %78, %74
  br label %98

80:                                               ; preds = %38
  %81 = load i8, i8* %11, align 1
  %82 = call i32 @myisspace(i8 signext %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 0, i32* %15, align 4
  br label %97

85:                                               ; preds = %80
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %9, align 4
  %88 = sub nsw i32 %87, 1
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i8, i8* %11, align 1
  %92 = load i8*, i8** %14, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %14, align 8
  store i8 %91, i8* %92, align 1
  br label %94

94:                                               ; preds = %90, %85
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %94, %84
  br label %98

98:                                               ; preds = %38, %97, %79, %73, %44
  br label %27

99:                                               ; preds = %36
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i8*, i8** %14, align 8
  store i8 0, i8* %103, align 1
  br label %104

104:                                              ; preds = %102, %99
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %19
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @set_fs(i64) #1

declare dso_local signext i8 @rdfs8(i32) #1

declare dso_local i32 @myisspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

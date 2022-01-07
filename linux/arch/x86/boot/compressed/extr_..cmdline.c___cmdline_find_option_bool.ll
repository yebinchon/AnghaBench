; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_..cmdline.c___cmdline_find_option_bool.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_..cmdline.c___cmdline_find_option_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cmdline_find_option_bool(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %89

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, 15
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i64, i64* %4, align 8
  %20 = lshr i64 %19, 4
  %21 = call i32 @set_fs(i64 %20)
  br label %22

22:                                               ; preds = %87, %15
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 65536
  br i1 %24, label %25, label %88

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = call signext i8 @rdfs8(i32 %26)
  store i8 %28, i8* %7, align 1
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %11, align 4
  switch i32 %31, label %87 [
    i32 0, label %32
    i32 1, label %45
    i32 2, label %76
  ]

32:                                               ; preds = %25
  %33 = load i8, i8* %7, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %89

36:                                               ; preds = %32
  %37 = load i8, i8* %7, align 1
  %38 = call i32 @myisspace(i8 signext %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %87

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41
  store i32 1, i32* %11, align 4
  %43 = load i8*, i8** %5, align 8
  store i8* %43, i8** %10, align 8
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %25, %42
  %46 = load i8*, i8** %10, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = load i8, i8* %7, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i8, i8* %7, align 1
  %54 = call i32 @myisspace(i8 signext %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  br label %89

58:                                               ; preds = %52
  store i32 2, i32* %11, align 4
  br label %59

59:                                               ; preds = %58
  br label %75

60:                                               ; preds = %45
  %61 = load i8, i8* %7, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %89

64:                                               ; preds = %60
  %65 = load i8, i8* %7, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %10, align 8
  %69 = load i8, i8* %67, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %66, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 2, i32* %11, align 4
  br label %73

73:                                               ; preds = %72, %64
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74, %59
  br label %87

76:                                               ; preds = %25
  %77 = load i8, i8* %7, align 1
  %78 = icmp ne i8 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %89

80:                                               ; preds = %76
  %81 = load i8, i8* %7, align 1
  %82 = call i32 @myisspace(i8 signext %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %84, %80
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %25, %86, %75, %40
  br label %22

88:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %79, %63, %56, %35, %14
  %90 = load i32, i32* %3, align 4
  ret i32 %90
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

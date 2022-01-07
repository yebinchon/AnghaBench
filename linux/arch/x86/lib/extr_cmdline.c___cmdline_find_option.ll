; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/lib/extr_cmdline.c___cmdline_find_option.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/lib/extr_cmdline.c___cmdline_find_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*, i32)* @__cmdline_find_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cmdline_find_option(i8* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %18 = load i8*, i8** %10, align 8
  store i8* %18, i8** %16, align 8
  store i32 0, i32* %17, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %95

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %87, %22
  %24 = load i32, i32* %13, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %88

28:                                               ; preds = %23
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %7, align 8
  %31 = load i8, i8* %29, align 1
  store i8 %31, i8* %12, align 1
  %32 = load i8, i8* %12, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %88

35:                                               ; preds = %28
  %36 = load i32, i32* %17, align 4
  switch i32 %36, label %87 [
    i32 0, label %37
    i32 1, label %44
    i32 2, label %65
    i32 3, label %71
  ]

37:                                               ; preds = %35
  %38 = load i8, i8* %12, align 1
  %39 = call i32 @myisspace(i8 signext %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %87

42:                                               ; preds = %37
  store i32 1, i32* %17, align 4
  %43 = load i8*, i8** %9, align 8
  store i8* %43, i8** %15, align 8
  br label %44

44:                                               ; preds = %35, %42
  %45 = load i8, i8* %12, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 61
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i8*, i8** %15, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  store i32 0, i32* %14, align 4
  %53 = load i8*, i8** %10, align 8
  store i8* %53, i8** %16, align 8
  store i32 3, i32* %17, align 4
  br label %87

54:                                               ; preds = %48, %44
  %55 = load i8, i8* %12, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8*, i8** %15, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %15, align 8
  %59 = load i8, i8* %57, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %56, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %87

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63
  store i32 2, i32* %17, align 4
  br label %65

65:                                               ; preds = %35, %64
  %66 = load i8, i8* %12, align 1
  %67 = call i32 @myisspace(i8 signext %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* %17, align 4
  br label %70

70:                                               ; preds = %69, %65
  br label %87

71:                                               ; preds = %35
  %72 = load i8, i8* %12, align 1
  %73 = call i32 @myisspace(i8 signext %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 0, i32* %17, align 4
  br label %86

76:                                               ; preds = %71
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i8, i8* %12, align 1
  %83 = load i8*, i8** %16, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %16, align 8
  store i8 %82, i8* %83, align 1
  br label %85

85:                                               ; preds = %81, %76
  br label %86

86:                                               ; preds = %85, %75
  br label %87

87:                                               ; preds = %35, %86, %70, %62, %52, %41
  br label %23

88:                                               ; preds = %34, %23
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i8*, i8** %16, align 8
  store i8 0, i8* %92, align 1
  br label %93

93:                                               ; preds = %91, %88
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %93, %21
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @myisspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_df_name_compare.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_df_name_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @df_name_compare(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* %9, align 4
  br label %25

23:                                               ; preds = %6
  %24 = load i32, i32* %12, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %14, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @memcmp(i8* %27, i8* %28, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %7, align 4
  br label %88

35:                                               ; preds = %25
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %88

40:                                               ; preds = %35
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %16, align 1
  %46 = load i8, i8* %16, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @S_ISDIR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i8 47, i8* %16, align 1
  br label %53

53:                                               ; preds = %52, %48, %40
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %17, align 1
  %59 = load i8, i8* %17, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %13, align 4
  %63 = call i64 @S_ISDIR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i8 47, i8* %17, align 1
  br label %66

66:                                               ; preds = %65, %61, %53
  %67 = load i8, i8* %16, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 47
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i8, i8* %17, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  br label %88

74:                                               ; preds = %70, %66
  %75 = load i8, i8* %17, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 47
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8, i8* %16, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  store i32 0, i32* %7, align 4
  br label %88

82:                                               ; preds = %78, %74
  %83 = load i8, i8* %16, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* %17, align 1
  %86 = zext i8 %85 to i32
  %87 = sub nsw i32 %84, %86
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %82, %81, %73, %39, %33
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

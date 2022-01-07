; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_base_name_compare.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_base_name_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @base_name_compare(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
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
  store i32 %26, i32* %16, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %16, align 4
  %30 = call i32 @memcmp(i8* %27, i8* %28, i32 %29)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %17, align 4
  store i32 %34, i32* %7, align 4
  br label %78

35:                                               ; preds = %25
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %16, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %14, align 1
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %15, align 1
  %46 = load i8, i8* %14, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @S_ISDIR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i8 47, i8* %14, align 1
  br label %53

53:                                               ; preds = %52, %48, %35
  %54 = load i8, i8* %15, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = call i64 @S_ISDIR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i8 47, i8* %15, align 1
  br label %61

61:                                               ; preds = %60, %56, %53
  %62 = load i8, i8* %14, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* %15, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %76

68:                                               ; preds = %61
  %69 = load i8, i8* %14, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* %15, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp sgt i32 %70, %72
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  br label %76

76:                                               ; preds = %68, %67
  %77 = phi i32 [ -1, %67 ], [ %75, %68 ]
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %33
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

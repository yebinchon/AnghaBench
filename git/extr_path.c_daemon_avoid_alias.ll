; ModuleID = '/home/carl/AnghaBench/git/extr_path.c_daemon_avoid_alias.c'
source_filename = "/home/carl/AnghaBench/git/extr_path.c_daemon_avoid_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @daemon_avoid_alias(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 47
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 126
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %1
  store i32 -1, i32* %2, align 4
  br label %74

20:                                               ; preds = %14, %9
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %3, align 8
  br label %23

23:                                               ; preds = %20, %73
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  %26 = load i8, i8* %24, align 1
  store i8 %26, i8* %6, align 1
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %23
  %30 = load i8, i8* %6, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 46
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %60

36:                                               ; preds = %29
  %37 = load i8, i8* %6, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 47
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 -1, i32* %2, align 4
  br label %74

44:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %59

45:                                               ; preds = %36
  %46 = load i8, i8* %6, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 0, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 3
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 -1, i32* %2, align 4
  br label %74

56:                                               ; preds = %52, %49
  store i32 0, i32* %2, align 4
  br label %74

57:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58, %44
  br label %60

60:                                               ; preds = %59, %33
  br label %73

61:                                               ; preds = %23
  %62 = load i8, i8* %6, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %74

66:                                               ; preds = %61
  %67 = load i8, i8* %6, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 47
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %66
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72, %60
  br label %23

74:                                               ; preds = %65, %56, %55, %43, %19
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_lstrip_ref_components.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_lstrip_ref_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @lstrip_ref_components to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lstrip_ref_components(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @xstrdup(i8* %13)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %10, align 8
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %44, %18
  %21 = load i8*, i8** %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %44

39:                                               ; preds = %28
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %10, align 8
  %42 = load i8, i8* %40, align 1
  %43 = sext i8 %42 to i32
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i32 [ %37, %36 ], [ %43, %39 ]
  br label %20

46:                                               ; preds = %20
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %47, %48
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %46, %2
  br label %53

53:                                               ; preds = %68, %52
  %54 = load i64, i64* %6, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  %59 = load i8, i8* %57, align 1
  %60 = sext i8 %59 to i32
  switch i32 %60, label %68 [
    i32 0, label %61
    i32 47, label %65
  ]

61:                                               ; preds = %56
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @free(i8* %62)
  %64 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %64, i8** %3, align 8
  br label %75

65:                                               ; preds = %56
  %66 = load i64, i64* %6, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %6, align 8
  br label %68

68:                                               ; preds = %56, %65
  br label %53

69:                                               ; preds = %53
  %70 = load i8*, i8** %7, align 8
  %71 = call i8* @xstrdup(i8* %70)
  store i8* %71, i8** %7, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i8*, i8** %7, align 8
  store i8* %74, i8** %3, align 8
  br label %75

75:                                               ; preds = %69, %61
  %76 = load i8*, i8** %3, align 8
  ret i8* %76
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

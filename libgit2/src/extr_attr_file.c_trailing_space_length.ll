; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_attr_file.c_trailing_space_length.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_attr_file.c_trailing_space_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @trailing_space_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @trailing_space_length(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %5, align 8
  br label %8

8:                                                ; preds = %54, %2
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %57

11:                                               ; preds = %8
  %12 = load i8*, i8** %3, align 8
  %13 = load i64, i64* %5, align 8
  %14 = sub i64 %13, 1
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 32
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  %20 = load i8*, i8** %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = sub i64 %21, 1
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 9
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %57

28:                                               ; preds = %19, %11
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %43, %28
  %31 = load i64, i64* %6, align 8
  %32 = icmp ugt i64 %31, 1
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i8*, i8** %3, align 8
  %35 = load i64, i64* %6, align 8
  %36 = sub i64 %35, 2
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 92
  br label %41

41:                                               ; preds = %33, %30
  %42 = phi i1 [ false, %30 ], [ %40, %33 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %6, align 8
  br label %30

46:                                               ; preds = %41
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = sub i64 %47, %48
  %50 = urem i64 %49, 2
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %57

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %5, align 8
  %56 = add i64 %55, -1
  store i64 %56, i64* %5, align 8
  br label %8

57:                                               ; preds = %52, %27, %8
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = sub i64 %58, %59
  ret i64 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

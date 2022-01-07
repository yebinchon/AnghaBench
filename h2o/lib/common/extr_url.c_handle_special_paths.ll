; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_url.c_handle_special_paths.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_url.c_handle_special_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64)* @handle_special_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @handle_special_paths(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = sub i64 %10, %11
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp eq i64 %13, 2
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = sub i64 %17, 1
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 46
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %5, align 8
  br label %68

26:                                               ; preds = %15, %3
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %27, 3
  br i1 %28, label %29, label %67

29:                                               ; preds = %26
  %30 = load i8*, i8** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = sub i64 %31, 2
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 46
  br i1 %36, label %37, label %67

37:                                               ; preds = %29
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = sub i64 %39, 1
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 46
  br i1 %44, label %45, label %67

45:                                               ; preds = %37
  %46 = load i64, i64* %5, align 8
  %47 = sub i64 %46, 2
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ugt i64 %48, 1
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %62, %50
  %54 = load i8*, i8** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = sub i64 %55, 1
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 47
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, -1
  store i64 %64, i64* %5, align 8
  br label %53

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %45
  br label %67

67:                                               ; preds = %66, %37, %29, %26
  br label %68

68:                                               ; preds = %67, %23
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %5, align 8
  %71 = sub i64 %69, %70
  ret i64 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

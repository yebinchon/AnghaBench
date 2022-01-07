; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xutils.c_xdl_num_out.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xutils.c_xdl_num_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdl_num_out(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [32 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %6, align 8
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %10 = getelementptr inbounds i8, i8* %9, i64 32
  %11 = getelementptr inbounds i8, i8* %10, i64 -1
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  store i8 0, i8* %12, align 1
  %13 = load i64, i64* %4, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 -1
  store i8* %17, i8** %5, align 8
  store i8 45, i8* %17, align 1
  %18 = load i64, i64* %4, align 8
  %19 = sub nsw i64 0, %18
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %15, %2
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %27 = icmp ugt i8* %25, %26
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %40

30:                                               ; preds = %28
  %31 = load i64, i64* %4, align 8
  %32 = srem i64 %31, 10
  %33 = getelementptr inbounds [11 x i8], [11 x i8]* @.str, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %36, i8** %5, align 8
  store i8 %34, i8* %36, align 1
  br label %37

37:                                               ; preds = %30
  %38 = load i64, i64* %4, align 8
  %39 = sdiv i64 %38, 10
  store i64 %39, i64* %4, align 8
  br label %21

40:                                               ; preds = %28
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %53, %44
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i8*, i8** %5, align 8
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %6, align 8
  store i8 %51, i8* %52, align 1
  br label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  br label %45

58:                                               ; preds = %45
  br label %62

59:                                               ; preds = %40
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %6, align 8
  store i8 48, i8* %60, align 1
  br label %62

62:                                               ; preds = %59, %58
  %63 = load i8*, i8** %6, align 8
  store i8 0, i8* %63, align 1
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

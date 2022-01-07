; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_translit.c_translit_str.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_translit.c_translit_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @translit_str(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %13, align 8
  br label %27

27:                                               ; preds = %67, %4
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i1 [ false, %27 ], [ %35, %31 ]
  br i1 %37, label %38, label %80

38:                                               ; preds = %36
  store i32 0, i32* %14, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = call i8* @trans_letter(i8* %39, i32* %14)
  store i8* %40, i8** %16, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %16, align 8
  %45 = call i32 @strlen(i8* %44)
  store i32 %45, i32* %15, align 4
  br label %48

46:                                               ; preds = %38
  store i32 1, i32* %15, align 4
  %47 = load i8*, i8** %10, align 8
  store i8* %47, i8** %16, align 8
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i32, i32* %14, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %15, align 4
  %53 = icmp sge i32 %52, 0
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i1 [ false, %48 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8*, i8** %13, align 8
  %63 = icmp ugt i8* %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i8*, i8** %11, align 8
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %6, align 8
  store i8* %66, i8** %5, align 8
  br label %83

67:                                               ; preds = %54
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @memcpy(i8* %68, i8* %69, i32 %70)
  %72 = load i32, i32* %15, align 4
  %73 = load i8*, i8** %11, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %11, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i8*, i8** %10, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %10, align 8
  br label %27

80:                                               ; preds = %36
  %81 = load i8*, i8** %11, align 8
  store i8 0, i8* %81, align 1
  %82 = load i8*, i8** %6, align 8
  store i8* %82, i8** %5, align 8
  br label %83

83:                                               ; preds = %80, %64
  %84 = load i8*, i8** %5, align 8
  ret i8* %84
}

declare dso_local i8* @trans_letter(i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

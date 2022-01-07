; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tsort.c_bisort.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tsort.c_bisort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i64, i64, i64 (i8*, i8*, i8*)*, i8*)* @bisort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bisort(i8** %0, i64 %1, i64 %2, i64 (i8*, i8*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64 (i8*, i8*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 (i8*, i8*, i8*)* %3, i64 (i8*, i8*, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %11, align 8
  br label %16

16:                                               ; preds = %73, %5
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %76

20:                                               ; preds = %16
  %21 = load i64 (i8*, i8*, i8*)*, i64 (i8*, i8*, i8*)** %9, align 8
  %22 = load i8**, i8*** %6, align 8
  %23 = load i64, i64* %11, align 8
  %24 = sub i64 %23, 1
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load i8**, i8*** %6, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i64 %21(i8* %26, i8* %30, i8* %31)
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %73

35:                                               ; preds = %20
  %36 = load i8**, i8*** %6, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %12, align 8
  %40 = load i8**, i8*** %6, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64 (i8*, i8*, i8*)*, i64 (i8*, i8*, i8*)** %9, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @binsearch(i8** %40, i8* %41, i64 %42, i64 (i8*, i8*, i8*)* %43, i8* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i64, i64* %11, align 8
  %47 = trunc i64 %46 to i32
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %64, %35
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load i8**, i8*** %6, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load i8**, i8*** %6, align 8
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %59, i64 %62
  store i8* %58, i8** %63, align 8
  br label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %14, align 4
  br label %49

67:                                               ; preds = %49
  %68 = load i8*, i8** %12, align 8
  %69 = load i8**, i8*** %6, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  store i8* %68, i8** %72, align 8
  br label %73

73:                                               ; preds = %67, %34
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %11, align 8
  br label %16

76:                                               ; preds = %16
  ret void
}

declare dso_local i32 @binsearch(i8**, i8*, i64, i64 (i8*, i8*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_shared.c_Info_NextPair.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_shared.c_Info_NextPair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Info_NextPair(i8** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 92
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %8, align 8
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %22, align 1
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %7, align 8
  br label %24

24:                                               ; preds = %37, %18
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 92
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  store i8 0, i8* %34, align 1
  %35 = load i8*, i8** %8, align 8
  %36 = load i8**, i8*** %4, align 8
  store i8* %35, i8** %36, align 8
  br label %70

37:                                               ; preds = %29
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %8, align 8
  %40 = load i8, i8* %38, align 1
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %7, align 8
  store i8 %40, i8* %41, align 1
  br label %24

43:                                               ; preds = %24
  %44 = load i8*, i8** %7, align 8
  store i8 0, i8* %44, align 1
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %6, align 8
  store i8* %47, i8** %7, align 8
  br label %48

48:                                               ; preds = %60, %43
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 92
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i8*, i8** %8, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ false, %48 ], [ %57, %53 ]
  br i1 %59, label %60, label %66

60:                                               ; preds = %58
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %8, align 8
  %63 = load i8, i8* %61, align 1
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %7, align 8
  store i8 %63, i8* %64, align 1
  br label %48

66:                                               ; preds = %58
  %67 = load i8*, i8** %7, align 8
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %8, align 8
  %69 = load i8**, i8*** %4, align 8
  store i8* %68, i8** %69, align 8
  br label %70

70:                                               ; preds = %66, %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

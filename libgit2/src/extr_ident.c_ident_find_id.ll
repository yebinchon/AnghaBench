; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_ident.c_ident_find_id.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_ident.c_ident_find_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i8*, i64)* @ident_find_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ident_find_id(i8** %0, i8** %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i64, i64* %9, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %10, align 8
  store i8* null, i8** %11, align 8
  br label %16

16:                                               ; preds = %53, %4
  %17 = load i64, i64* %9, align 8
  %18 = icmp ugt i64 %17, 3
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i8* @memchr(i8* %20, i8 signext 36, i64 %21)
  store i8* %22, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ false, %16 ], [ %23, %19 ]
  br i1 %25, label %26, label %54

26:                                               ; preds = %24
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sub i64 %31, 1
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp ult i64 %33, 3
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %36, i32* %5, align 4
  br label %77

37:                                               ; preds = %26
  %38 = load i8*, i8** %11, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %39, i8** %8, align 8
  %40 = load i64, i64* %12, align 8
  store i64 %40, i64* %9, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 73
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 100
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %54

53:                                               ; preds = %46, %37
  br label %16

54:                                               ; preds = %52, %24
  %55 = load i64, i64* %9, align 8
  %56 = icmp ult i64 %55, 3
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i8*, i8** %11, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %61, i32* %5, align 4
  br label %77

62:                                               ; preds = %57
  %63 = load i8*, i8** %11, align 8
  %64 = load i8**, i8*** %6, align 8
  store i8* %63, i8** %64, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = load i64, i64* %9, align 8
  %68 = sub i64 %67, 2
  %69 = call i8* @memchr(i8* %66, i8 signext 36, i64 %68)
  store i8* %69, i8** %11, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %72, i32* %5, align 4
  br label %77

73:                                               ; preds = %62
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8**, i8*** %7, align 8
  store i8* %75, i8** %76, align 8
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %71, %60, %35
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

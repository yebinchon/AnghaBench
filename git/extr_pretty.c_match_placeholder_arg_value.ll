; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_match_placeholder_arg_value.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_match_placeholder_arg_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c",)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8**, i8**, i64*)* @match_placeholder_arg_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_placeholder_arg_value(i8* %0, i8* %1, i8** %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @skip_prefix(i8* %13, i8* %14, i8** %12)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %72

18:                                               ; preds = %5
  %19 = load i8**, i8*** %10, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %54

21:                                               ; preds = %18
  %22 = load i8*, i8** %12, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 61
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i8*, i8** %12, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8**, i8*** %10, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i8**, i8*** %10, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcspn(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %33 = load i64*, i64** %11, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i8**, i8*** %10, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i64*, i64** %11, align 8
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8* %38, i8** %12, align 8
  br label %53

39:                                               ; preds = %21
  %40 = load i8*, i8** %12, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 44
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i8*, i8** %12, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 41
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %72

50:                                               ; preds = %44, %39
  %51 = load i8**, i8*** %10, align 8
  store i8* null, i8** %51, align 8
  %52 = load i64*, i64** %11, align 8
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %26
  br label %54

54:                                               ; preds = %53, %18
  %55 = load i8*, i8** %12, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 44
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8**, i8*** %9, align 8
  store i8* %61, i8** %62, align 8
  store i32 1, i32* %6, align 4
  br label %72

63:                                               ; preds = %54
  %64 = load i8*, i8** %12, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 41
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i8*, i8** %12, align 8
  %70 = load i8**, i8*** %9, align 8
  store i8* %69, i8** %70, align 8
  store i32 1, i32* %6, align 4
  br label %72

71:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %71, %68, %59, %49, %17
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_match_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_match_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { i32, %struct.grep_pat*, i64 }
%struct.grep_pat = type { %struct.grep_pat* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grep_opt*, i8*, i8*, i64*, i64*, i32, i32)* @match_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_line(%struct.grep_opt* %0, i8* %1, i8* %2, i64* %3, i64* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.grep_opt*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.grep_pat*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__, align 8
  store %struct.grep_opt* %0, %struct.grep_opt** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %19 = load %struct.grep_opt*, %struct.grep_opt** %9, align 8
  %20 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %7
  %24 = load %struct.grep_opt*, %struct.grep_opt** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load i64*, i64** %12, align 8
  %29 = load i64*, i64** %13, align 8
  %30 = load i32, i32* %15, align 4
  %31 = call i32 @match_expr(%struct.grep_opt* %24, i8* %25, i8* %26, i32 %27, i64* %28, i64* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  br label %76

32:                                               ; preds = %7
  %33 = load %struct.grep_opt*, %struct.grep_opt** %9, align 8
  %34 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %33, i32 0, i32 1
  %35 = load %struct.grep_pat*, %struct.grep_pat** %34, align 8
  store %struct.grep_pat* %35, %struct.grep_pat** %16, align 8
  br label %36

36:                                               ; preds = %70, %32
  %37 = load %struct.grep_pat*, %struct.grep_pat** %16, align 8
  %38 = icmp ne %struct.grep_pat* %37, null
  br i1 %38, label %39, label %74

39:                                               ; preds = %36
  %40 = load %struct.grep_pat*, %struct.grep_pat** %16, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i64 @match_one_pattern(%struct.grep_pat* %40, i8* %41, i8* %42, i32 %43, %struct.TYPE_3__* %18, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %39
  %47 = load i32, i32* %17, align 4
  %48 = or i32 %47, 1
  store i32 %48, i32* %17, align 4
  %49 = load %struct.grep_opt*, %struct.grep_opt** %9, align 8
  %50 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %74

54:                                               ; preds = %46
  %55 = load i64*, i64** %12, align 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %12, align 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58, %54
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %12, align 8
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %58
  br label %69

69:                                               ; preds = %68, %39
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.grep_pat*, %struct.grep_pat** %16, align 8
  %72 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %71, i32 0, i32 0
  %73 = load %struct.grep_pat*, %struct.grep_pat** %72, align 8
  store %struct.grep_pat* %73, %struct.grep_pat** %16, align 8
  br label %36

74:                                               ; preds = %53, %36
  %75 = load i32, i32* %17, align 4
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %74, %23
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i32 @match_expr(%struct.grep_opt*, i8*, i8*, i32, i64*, i64*, i32) #1

declare dso_local i64 @match_one_pattern(%struct.grep_pat*, i8*, i8*, i32, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

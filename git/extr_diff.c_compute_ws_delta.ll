; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_compute_ws_delta.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_compute_ws_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emitted_diff_symbol = type { i32, i32, i32, i64, i64 }

@INDENT_BLANKLINE = common dso_local global i32 0, align 4
@DIFF_SYMBOL_PLUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emitted_diff_symbol*, %struct.emitted_diff_symbol*, i32*)* @compute_ws_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_ws_delta(%struct.emitted_diff_symbol* %0, %struct.emitted_diff_symbol* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.emitted_diff_symbol*, align 8
  %6 = alloca %struct.emitted_diff_symbol*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.emitted_diff_symbol* %0, %struct.emitted_diff_symbol** %5, align 8
  store %struct.emitted_diff_symbol* %1, %struct.emitted_diff_symbol** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %5, align 8
  %16 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %6, align 8
  %19 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %5, align 8
  %22 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %5, align 8
  %25 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  %27 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %6, align 8
  %28 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %6, align 8
  %31 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @INDENT_BLANKLINE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %3
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @INDENT_BLANKLINE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @INDENT_BLANKLINE, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  store i32 1, i32* %4, align 4
  br label %87

43:                                               ; preds = %36, %3
  %44 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %5, align 8
  %45 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DIFF_SYMBOL_PLUS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %13, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  br label %57

53:                                               ; preds = %43
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %11, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 %61, %62
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %83, label %65

65:                                               ; preds = %57
  %66 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %5, align 8
  %67 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %6, align 8
  %73 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %78, %79
  %81 = call i64 @memcmp(i64 %71, i64 %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %65, %57
  store i32 0, i32* %4, align 4
  br label %87

84:                                               ; preds = %65
  %85 = load i32, i32* %14, align 4
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  store i32 1, i32* %4, align 4
  br label %87

87:                                               ; preds = %84, %83, %40
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @memcmp(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

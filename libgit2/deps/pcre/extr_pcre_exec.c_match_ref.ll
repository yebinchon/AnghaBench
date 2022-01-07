; ModuleID = '/home/carl/AnghaBench/libgit2/deps/pcre/extr_pcre_exec.c_match_ref.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/pcre/extr_pcre_exec.c_match_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64*, i64, i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ucd_caseless_sets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, %struct.TYPE_7__*, i64)* @match_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_ref(i32 %0, i64 %1, i32 %2, %struct.TYPE_7__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %12, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %19, %26
  store i64 %27, i64* %13, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %97

31:                                               ; preds = %5
  %32 = load i64, i64* %11, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %65, %34
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %9, align 4
  %38 = icmp sgt i32 %36, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %35
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 -2, i32* %6, align 4
  br label %97

46:                                               ; preds = %39
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @UCHAR21TEST(i64 %47)
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %13, align 8
  %50 = call i64 @UCHAR21TEST(i64 %49)
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %15, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %15, align 8
  %56 = call i64 @TABLE_GET(i64 %51, i32 %54, i64 %55)
  %57 = load i64, i64* %14, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %14, align 8
  %62 = call i64 @TABLE_GET(i64 %57, i32 %60, i64 %61)
  %63 = icmp ne i64 %56, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %46
  store i32 -1, i32* %6, align 4
  br label %97

65:                                               ; preds = %46
  %66 = load i64, i64* %13, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %8, align 8
  br label %35

70:                                               ; preds = %35
  br label %92

71:                                               ; preds = %31
  br label %72

72:                                               ; preds = %90, %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %9, align 4
  %75 = icmp sgt i32 %73, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp sge i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 -2, i32* %6, align 4
  br label %97

83:                                               ; preds = %76
  %84 = load i64, i64* %13, align 8
  %85 = call i64 @UCHAR21INCTEST(i64 %84)
  %86 = load i64, i64* %8, align 8
  %87 = call i64 @UCHAR21INCTEST(i64 %86)
  %88 = icmp ne i64 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 -1, i32* %6, align 4
  br label %97

90:                                               ; preds = %83
  br label %72

91:                                               ; preds = %72
  br label %92

92:                                               ; preds = %91, %70
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %12, align 8
  %95 = sub nsw i64 %93, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %92, %89, %82, %64, %45, %30
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i64 @UCHAR21TEST(i64) #1

declare dso_local i64 @TABLE_GET(i64, i32, i64) #1

declare dso_local i64 @UCHAR21INCTEST(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

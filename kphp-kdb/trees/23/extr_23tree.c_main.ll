; ModuleID = '/home/carl/AnghaBench/kphp-kdb/trees/23/extr_23tree.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/trees/23/extr_23tree.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@T = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@arr = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"BAD TREE\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [106 x i8] c"leaves allocated %d\0Anodes allocated %d\0Aleaves freed %d\0Anodes freed %d\0Aleaves current %d\0Anodes current %d\0A\00", align 1
@lp = common dso_local global i32 0, align 4
@np = common dso_local global i32 0, align 4
@ld = common dso_local global i32 0, align 4
@nd = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [55 x i8] c"leaves in tree %d\0Anodes in tree %d\0Anumbers in tree %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = call i32 @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %2)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %82, %0
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %85

16:                                               ; preds = %12
  %17 = call i32 @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %3)
  %18 = load i32, i32* %3, align 4
  switch i32 %18, label %75 [
    i32 1, label %19
    i32 2, label %29
    i32 3, label %38
    i32 4, label %65
  ]

19:                                               ; preds = %16
  %20 = call i32 @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %4)
  %21 = load i32, i32* @T, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @tree23_lookup(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @tree23_insert(i32* @T, i32 %26)
  br label %28

28:                                               ; preds = %25, %19
  br label %75

29:                                               ; preds = %16
  %30 = call i32 @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %4)
  %31 = load i32, i32* @T, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @tree23_lookup(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %37 = call i32 @puts(i8* %36)
  br label %75

38:                                               ; preds = %16
  %39 = call i32 @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %4)
  %40 = load i32, i32* @T, align 4
  %41 = load i32*, i32** @arr, align 8
  %42 = call i32* @sort(i32 %40, i32* %41)
  store i32* %42, i32** %10, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32*, i32** @arr, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %61, %38
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32*, i32** @arr, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %59, i32 10)
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %50

64:                                               ; preds = %50
  br label %75

65:                                               ; preds = %16
  %66 = call i32 @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %4)
  %67 = load i32, i32* @T, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @tree23_lookup(i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @tree23_delete(i32* @T, i32 %72)
  br label %74

74:                                               ; preds = %71, %65
  br label %75

75:                                               ; preds = %16, %74, %64, %29, %28
  %76 = load i32, i32* @T, align 4
  %77 = call i32 @check(i32 %76, i32 -1000000000, i32 1000000000)
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %75
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %12

85:                                               ; preds = %12
  %86 = load i32, i32* @T, align 4
  %87 = call i32 @check(i32 %86, i32 -1000000000, i32 1000000000)
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @T, align 4
  %90 = call i32 @dump(i32 %89)
  %91 = load i32, i32* @T, align 4
  %92 = load i32*, i32** @arr, align 8
  %93 = call i32* @sort(i32 %91, i32* %92)
  store i32* %93, i32** %10, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = load i32*, i32** @arr, align 8
  %96 = ptrtoint i32* %94 to i64
  %97 = ptrtoint i32* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sdiv exact i64 %98, 4
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %112, %85
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %101
  %106 = load i32*, i32** @arr, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 10)
  br label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %101

115:                                              ; preds = %101
  %116 = load i32, i32* @T, align 4
  %117 = call i32 @count(i32 %116, i32* %7, i32* %8, i32* %9)
  %118 = load i32, i32* @lp, align 4
  %119 = load i32, i32* @np, align 4
  %120 = load i32, i32* @ld, align 4
  %121 = load i32, i32* @nd, align 4
  %122 = load i32, i32* @lp, align 4
  %123 = load i32, i32* @ld, align 4
  %124 = sub nsw i32 %122, %123
  %125 = load i32, i32* @np, align 4
  %126 = load i32, i32* @nd, align 4
  %127 = sub nsw i32 %125, %126
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.6, i64 0, i64 0), i32 %118, i32 %119, i32 %120, i32 %121, i32 %124, i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %9, align 4
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %129, i32 %130, i32 %131)
  %133 = load i32, i32* %1, align 4
  ret i32 %133
}

declare dso_local i32 @scanf(i8*, i32*) #1

declare dso_local i32 @tree23_lookup(i32, i32) #1

declare dso_local i32 @tree23_insert(i32*, i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32* @sort(i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @tree23_delete(i32*, i32) #1

declare dso_local i32 @check(i32, i32, i32) #1

declare dso_local i32 @dump(i32) #1

declare dso_local i32 @count(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

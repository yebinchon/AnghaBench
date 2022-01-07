; ModuleID = '/home/carl/AnghaBench/kilo/extr_kilo.c_editorReadKey.c'
source_filename = "/home/carl/AnghaBench/kilo/extr_kilo.c_editorReadKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEL_KEY = common dso_local global i32 0, align 4
@PAGE_UP = common dso_local global i32 0, align 4
@PAGE_DOWN = common dso_local global i32 0, align 4
@ARROW_UP = common dso_local global i32 0, align 4
@ARROW_DOWN = common dso_local global i32 0, align 4
@ARROW_RIGHT = common dso_local global i32 0, align 4
@ARROW_LEFT = common dso_local global i32 0, align 4
@HOME_KEY = common dso_local global i32 0, align 4
@END_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @editorReadKey(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca [3 x i8], align 1
  store i32 %0, i32* %3, align 4
  br label %7

7:                                                ; preds = %11, %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @read(i32 %8, i8* %5, i32 1)
  store i32 %9, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %7

12:                                               ; preds = %7
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 @exit(i32 1) #3
  unreachable

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %110
  %19 = load i8, i8* %5, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %107 [
    i32 128, label %21
  ]

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %24 = call i32 @read(i32 %22, i8* %23, i32 1)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 128, i32* %2, align 4
  br label %111

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = call i32 @read(i32 %28, i8* %30, i32 1)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 128, i32* %2, align 4
  br label %111

34:                                               ; preds = %27
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 91
  br i1 %38, label %39, label %91

39:                                               ; preds = %34
  %40 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sge i32 %42, 48
  br i1 %43, label %44, label %73

44:                                               ; preds = %39
  %45 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sle i32 %47, 57
  br i1 %48, label %49, label %73

49:                                               ; preds = %44
  %50 = load i32, i32* %3, align 4
  %51 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = call i32 @read(i32 %50, i8* %52, i32 1)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 128, i32* %2, align 4
  br label %111

56:                                               ; preds = %49
  %57 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 126
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  switch i32 %64, label %71 [
    i32 51, label %65
    i32 53, label %67
    i32 54, label %69
  ]

65:                                               ; preds = %61
  %66 = load i32, i32* @DEL_KEY, align 4
  store i32 %66, i32* %2, align 4
  br label %111

67:                                               ; preds = %61
  %68 = load i32, i32* @PAGE_UP, align 4
  store i32 %68, i32* %2, align 4
  br label %111

69:                                               ; preds = %61
  %70 = load i32, i32* @PAGE_DOWN, align 4
  store i32 %70, i32* %2, align 4
  br label %111

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %56
  br label %90

73:                                               ; preds = %44, %39
  %74 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  switch i32 %76, label %89 [
    i32 65, label %77
    i32 66, label %79
    i32 67, label %81
    i32 68, label %83
    i32 72, label %85
    i32 70, label %87
  ]

77:                                               ; preds = %73
  %78 = load i32, i32* @ARROW_UP, align 4
  store i32 %78, i32* %2, align 4
  br label %111

79:                                               ; preds = %73
  %80 = load i32, i32* @ARROW_DOWN, align 4
  store i32 %80, i32* %2, align 4
  br label %111

81:                                               ; preds = %73
  %82 = load i32, i32* @ARROW_RIGHT, align 4
  store i32 %82, i32* %2, align 4
  br label %111

83:                                               ; preds = %73
  %84 = load i32, i32* @ARROW_LEFT, align 4
  store i32 %84, i32* %2, align 4
  br label %111

85:                                               ; preds = %73
  %86 = load i32, i32* @HOME_KEY, align 4
  store i32 %86, i32* %2, align 4
  br label %111

87:                                               ; preds = %73
  %88 = load i32, i32* @END_KEY, align 4
  store i32 %88, i32* %2, align 4
  br label %111

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %72
  br label %106

91:                                               ; preds = %34
  %92 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 79
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  switch i32 %99, label %104 [
    i32 72, label %100
    i32 70, label %102
  ]

100:                                              ; preds = %96
  %101 = load i32, i32* @HOME_KEY, align 4
  store i32 %101, i32* %2, align 4
  br label %111

102:                                              ; preds = %96
  %103 = load i32, i32* @END_KEY, align 4
  store i32 %103, i32* %2, align 4
  br label %111

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %91
  br label %106

106:                                              ; preds = %105, %90
  br label %110

107:                                              ; preds = %18
  %108 = load i8, i8* %5, align 1
  %109 = sext i8 %108 to i32
  store i32 %109, i32* %2, align 4
  br label %111

110:                                              ; preds = %106
  br label %18

111:                                              ; preds = %107, %102, %100, %87, %85, %83, %81, %79, %77, %69, %67, %65, %55, %33, %26
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @read(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/extr_sh-i18n--envsubst.c_find_variables.c'
source_filename = "/home/carl/AnghaBench/git/extr_sh-i18n--envsubst.c_find_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, void (i8*, i64)*)* @find_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_variables(i8* %0, void (i8*, i64)* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca void (i8*, i64)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store void (i8*, i64)* %1, void (i8*, i64)** %4, align 8
  br label %9

9:                                                ; preds = %117, %2
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %118

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %3, align 8
  %17 = load i8, i8* %15, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 36
  br i1 %19, label %20, label %117

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 123
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %3, align 8
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i8*, i8** %3, align 8
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %8, align 1
  %32 = load i8, i8* %8, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sge i32 %33, 65
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i8, i8* %8, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sle i32 %37, 90
  br i1 %38, label %51, label %39

39:                                               ; preds = %35, %28
  %40 = load i8, i8* %8, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sge i32 %41, 97
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i8, i8* %8, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sle i32 %45, 122
  br i1 %46, label %51, label %47

47:                                               ; preds = %43, %39
  %48 = load i8, i8* %8, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 95
  br i1 %50, label %51, label %116

51:                                               ; preds = %47, %43, %35
  br label %52

52:                                               ; preds = %84, %51
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %3, align 8
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %8, align 1
  br label %56

56:                                               ; preds = %52
  %57 = load i8, i8* %8, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sge i32 %58, 65
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i8, i8* %8, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sle i32 %62, 90
  br i1 %63, label %84, label %64

64:                                               ; preds = %60, %56
  %65 = load i8, i8* %8, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp sge i32 %66, 97
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i8, i8* %8, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sle i32 %70, 122
  br i1 %71, label %84, label %72

72:                                               ; preds = %68, %64
  %73 = load i8, i8* %8, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp sge i32 %74, 48
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i8, i8* %8, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp sle i32 %78, 57
  br i1 %79, label %84, label %80

80:                                               ; preds = %76, %72
  %81 = load i8, i8* %8, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 95
  br label %84

84:                                               ; preds = %80, %76, %68, %60
  %85 = phi i1 [ true, %76 ], [ true, %68 ], [ true, %60 ], [ %83, %80 ]
  br i1 %85, label %52, label %86

86:                                               ; preds = %84
  %87 = load i8*, i8** %3, align 8
  store i8* %87, i8** %6, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 -1
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 123
  br i1 %92, label %93, label %103

93:                                               ; preds = %86
  %94 = load i8*, i8** %3, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 125
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i8*, i8** %3, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %3, align 8
  store i16 1, i16* %7, align 2
  br label %102

101:                                              ; preds = %93
  store i16 0, i16* %7, align 2
  br label %102

102:                                              ; preds = %101, %98
  br label %104

103:                                              ; preds = %86
  store i16 1, i16* %7, align 2
  br label %104

104:                                              ; preds = %103, %102
  %105 = load i16, i16* %7, align 2
  %106 = icmp ne i16 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load void (i8*, i64)*, void (i8*, i64)** %4, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  call void %108(i8* %109, i64 %114)
  br label %115

115:                                              ; preds = %107, %104
  br label %116

116:                                              ; preds = %115, %47
  br label %117

117:                                              ; preds = %116, %14
  br label %9

118:                                              ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_PlayerNameToFieldString.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_PlayerNameToFieldString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Com_PlayerNameToFieldString(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @qfalse, align 4
  store i32 %18, i32* %4, align 4
  br label %129

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @qtrue, align 4
  store i32 %23, i32* %4, align 4
  br label %129

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %118, %24
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %123

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* %6, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %123

38:                                               ; preds = %32
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sle i32 %41, 32
  br i1 %42, label %43, label %110

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 5
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %6, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %123

50:                                               ; preds = %43
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = ashr i32 %53, 4
  store i32 %54, i32* %10, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = and i32 %57, 15
  store i32 %58, i32* %11, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 0
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  store i8 92, i8* %63, align 1
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 48, i8* %68, align 1
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  store i8 120, i8* %73, align 1
  %74 = load i32, i32* %10, align 4
  %75 = icmp sgt i32 %74, 9
  br i1 %75, label %76, label %80

76:                                               ; preds = %50
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %77, 10
  %79 = add nsw i32 %78, 97
  br label %83

80:                                               ; preds = %50
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 48
  br label %83

83:                                               ; preds = %80, %76
  %84 = phi i32 [ %79, %76 ], [ %82, %80 ]
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 3
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  store i8 %85, i8* %90, align 1
  %91 = load i32, i32* %11, align 4
  %92 = icmp sgt i32 %91, 9
  br i1 %92, label %93, label %97

93:                                               ; preds = %83
  %94 = load i32, i32* %11, align 4
  %95 = sub nsw i32 %94, 10
  %96 = add nsw i32 %95, 97
  br label %100

97:                                               ; preds = %83
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 48
  br label %100

100:                                              ; preds = %97, %93
  %101 = phi i32 [ %96, %93 ], [ %99, %97 ]
  %102 = trunc i32 %101 to i8
  %103 = load i8*, i8** %5, align 8
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 %102, i8* %107, align 1
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 4
  store i32 %109, i32* %9, align 4
  br label %117

110:                                              ; preds = %38
  %111 = load i8*, i8** %8, align 8
  %112 = load i8, i8* %111, align 1
  %113 = load i8*, i8** %5, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8 %112, i8* %116, align 1
  br label %117

117:                                              ; preds = %110, %100
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %8, align 8
  br label %27

123:                                              ; preds = %49, %37, %27
  %124 = load i8*, i8** %5, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 0, i8* %127, align 1
  %128 = load i32, i32* @qtrue, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %123, %22, %17
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

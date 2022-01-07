; ModuleID = '/home/carl/AnghaBench/kphp-kdb/trees/23/extr_23tree_nd.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/trees/23/extr_23tree_nd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@Root = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@arr = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"BAD TREE\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [106 x i8] c"leaves allocated %d\0Anodes allocated %d\0Aleaves freed %d\0Anodes freed %d\0Aleaves current %d\0Anodes current %d\0A\00", align 1
@lp = common dso_local global i32 0, align 4
@np = common dso_local global i32 0, align 4
@ld = common dso_local global i32 0, align 4
@nd = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [55 x i8] c"leaves in tree %d\0Anodes in tree %d\0Anumbers in tree %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp sge i32 %14, 2
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @Root, i32 0, i32 0), align 4
  br label %23

23:                                               ; preds = %22, %16, %2
  %24 = call i32 @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %94, %23
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %97

29:                                               ; preds = %25
  %30 = call i32 @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %88 [
    i32 1, label %32
    i32 2, label %45
    i32 3, label %53
    i32 4, label %79
  ]

32:                                               ; preds = %29
  %33 = call i32 @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @tree23_lookup(%struct.TYPE_9__* @Root, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 3
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %39, i32* %40, align 16
  %41 = load i32, i32* %8, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %43 = call i32 @tree23_insert(%struct.TYPE_9__* @Root, i32 %41, i32* %42)
  br label %44

44:                                               ; preds = %37, %32
  br label %88

45:                                               ; preds = %29
  %46 = call i32 @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @tree23_lookup(%struct.TYPE_9__* @Root, i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %52 = call i32 @puts(i8* %51)
  br label %88

53:                                               ; preds = %29
  %54 = call i32 @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %55 = load i32*, i32** @arr, align 8
  %56 = call i32* @sort(%struct.TYPE_9__* @Root, i32* %55)
  store i32* %56, i32** %13, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32*, i32** @arr, align 8
  %59 = ptrtoint i32* %57 to i64
  %60 = ptrtoint i32* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 4
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %75, %53
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i32*, i32** @arr, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %73, i32 10)
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %64

78:                                               ; preds = %64
  br label %88

79:                                               ; preds = %29
  %80 = call i32 @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @tree23_lookup(%struct.TYPE_9__* @Root, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @tree23_delete(%struct.TYPE_9__* @Root, i32 %85)
  br label %87

87:                                               ; preds = %84, %79
  br label %88

88:                                               ; preds = %29, %87, %78, %45, %44
  %89 = call i32 @check(%struct.TYPE_9__* @Root)
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %88
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %25

97:                                               ; preds = %25
  %98 = call i32 @check(%struct.TYPE_9__* @Root)
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %98)
  %100 = call i32 @dump(%struct.TYPE_9__* @Root)
  %101 = load i32*, i32** @arr, align 8
  %102 = call i32* @sort(%struct.TYPE_9__* @Root, i32* %101)
  store i32* %102, i32** %13, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = load i32*, i32** @arr, align 8
  %105 = ptrtoint i32* %103 to i64
  %106 = ptrtoint i32* %104 to i64
  %107 = sub i64 %105, %106
  %108 = sdiv exact i64 %107, 4
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %121, %97
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = load i32*, i32** @arr, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %119, i32 10)
  br label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %110

124:                                              ; preds = %110
  %125 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %126 = call i32 @count(%struct.TYPE_9__* @Root, i32* %125)
  %127 = load i32, i32* @lp, align 4
  %128 = load i32, i32* @np, align 4
  %129 = load i32, i32* @ld, align 4
  %130 = load i32, i32* @nd, align 4
  %131 = load i32, i32* @lp, align 4
  %132 = load i32, i32* @ld, align 4
  %133 = sub nsw i32 %131, %132
  %134 = load i32, i32* @np, align 4
  %135 = load i32, i32* @nd, align 4
  %136 = sub nsw i32 %134, %135
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.7, i64 0, i64 0), i32 %127, i32 %128, i32 %129, i32 %130, i32 %133, i32 %136)
  %138 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i32 %139, i32 %141, i32 %143)
  ret i32 0
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @scanf(i8*, i32*) #1

declare dso_local i32 @tree23_lookup(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @tree23_insert(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32* @sort(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @tree23_delete(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @check(%struct.TYPE_9__*) #1

declare dso_local i32 @dump(%struct.TYPE_9__*) #1

declare dso_local i32 @count(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_lookup_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_lookup_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@Pc = common dso_local global i32 0, align 4
@P = common dso_local global %struct.TYPE_2__* null, align 8
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"lookup_list: found hash=%llu, message/offset=%d, count=%d\0A\00", align 1
@Dc = common dso_local global i32 0, align 4
@D = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lookup_list(i64 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 -1, i32* %6, align 4
  %9 = load i32, i32* @Pc, align 4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %32, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 %11, %12
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  %19 = ashr i32 %18, 1
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @P, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %6, align 4
  br label %32

30:                                               ; preds = %15
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %28
  br label %10

33:                                               ; preds = %10
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @P, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36, %33
  store i32 0, i32* %3, align 4
  br label %120

46:                                               ; preds = %36
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @P, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %8, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @P, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %7, align 4
  %59 = load i64, i64* @verbosity, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %46
  %62 = load i32, i32* @stderr, align 4
  %63 = load i64, i64* %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %46
  %68 = load i32, i32* %8, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @Dc, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 1
  br label %77

77:                                               ; preds = %74, %70
  %78 = phi i1 [ true, %70 ], [ %76, %74 ]
  br label %79

79:                                               ; preds = %77, %67
  %80 = phi i1 [ false, %67 ], [ %78, %77 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = load i32**, i32*** %5, align 8
  %87 = icmp ne i32** %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @P, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32**, i32*** %5, align 8
  store i32* %93, i32** %94, align 8
  br label %95

95:                                               ; preds = %88, %85
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %3, align 4
  br label %120

97:                                               ; preds = %79
  %98 = load i32, i32* %7, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* @Dc, align 4
  %105 = icmp sle i32 %103, %104
  br label %106

106:                                              ; preds = %100, %97
  %107 = phi i1 [ false, %97 ], [ %105, %100 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load i32**, i32*** %5, align 8
  %111 = icmp ne i32** %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load i32*, i32** @D, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32**, i32*** %5, align 8
  store i32* %116, i32** %117, align 8
  br label %118

118:                                              ; preds = %112, %106
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %95, %45
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @fprintf(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

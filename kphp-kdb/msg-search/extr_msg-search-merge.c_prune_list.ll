; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-merge.c_prune_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-merge.c_prune_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32 }

@UserMod = common dso_local global %struct.TYPE_2__* null, align 8
@dropped_pairs = common dso_local global i32 0, align 4
@D = common dso_local global i32* null, align 8
@Dc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @prune_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_list(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UserMod, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UserMod, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UserMod, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UserMod, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %16
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UserMod, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = getelementptr inbounds i32, i32* %34, i64 -1
  store i32* %35, i32** %10, align 8
  br label %39

36:                                               ; preds = %16
  store i32* null, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32* %38, i32** %9, align 8
  br label %39

39:                                               ; preds = %36, %28
  br label %43

40:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32* null, i32** %10, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32* %42, i32** %9, align 8
  br label %43

43:                                               ; preds = %40, %39
  br label %44

44:                                               ; preds = %140, %43
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = icmp ult i32* %45, %46
  br i1 %47, label %48, label %141

48:                                               ; preds = %44
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %5, align 8
  %51 = load i32, i32* %49, align 4
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %97

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %66, %54
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = icmp ule i32* %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp sgt i32 %61, %62
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi i1 [ false, %55 ], [ %63, %59 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 -1
  store i32* %68, i32** %10, align 8
  br label %55

69:                                               ; preds = %64
  %70 = load i32*, i32** %9, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = icmp ule i32* %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* %13, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %73, %69
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82, %78, %73
  %87 = load i32, i32* @dropped_pairs, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @dropped_pairs, align 4
  br label %96

89:                                               ; preds = %82
  %90 = load i32, i32* %13, align 4
  %91 = load i32*, i32** @D, align 8
  %92 = load i32, i32* @Dc, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @Dc, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %90, i32* %95, align 4
  br label %96

96:                                               ; preds = %89, %86
  br label %140

97:                                               ; preds = %48
  br label %98

98:                                               ; preds = %109, %97
  %99 = load i32*, i32** %9, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = icmp ule i32* %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp slt i32 %104, %105
  br label %107

107:                                              ; preds = %102, %98
  %108 = phi i1 [ false, %98 ], [ %106, %102 ]
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = load i32*, i32** %9, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %9, align 8
  br label %98

112:                                              ; preds = %107
  %113 = load i32*, i32** %9, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = icmp ule i32* %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i32, i32* %13, align 4
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %129, label %121

121:                                              ; preds = %116, %112
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125, %121, %116
  %130 = load i32, i32* @dropped_pairs, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* @dropped_pairs, align 4
  br label %139

132:                                              ; preds = %125
  %133 = load i32, i32* %13, align 4
  %134 = load i32*, i32** @D, align 8
  %135 = load i32, i32* @Dc, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* @Dc, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  store i32 %133, i32* %138, align 4
  br label %139

139:                                              ; preds = %132, %129
  br label %140

140:                                              ; preds = %139, %96
  br label %44

141:                                              ; preds = %44
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

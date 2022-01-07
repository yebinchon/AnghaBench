; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-extension.c_set_rlen.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-extension.c_set_rlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@CC = common dso_local global %struct.TYPE_2__* null, align 8
@Rlen = common dso_local global i64* null, align 8
@Rfirst = common dso_local global i32* null, align 8
@NEWS_UG_EXTENSION = common dso_local global i64 0, align 8
@split_factor = common dso_local global i32 0, align 4
@QL = common dso_local global i32 0, align 4
@NEWS_G_EXTENSION = common dso_local global i64 0, align 8
@Q = common dso_local global i32* null, align 8
@CLUSTER_MODE_THIRDINT = common dso_local global i32 0, align 4
@CLUSTER_MODE_SECONDINT = common dso_local global i32 0, align 4
@CLUSTER_MODE_FIRSTINT = common dso_local global i32 0, align 4
@QN = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_rlen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %19, %0
  %5 = load i32, i32* %1, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %4
  %11 = load i64*, i64** @Rlen, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  store i64 0, i64* %14, align 8
  %15 = load i32*, i32** @Rfirst, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 -1, i32* %18, align 4
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %4

22:                                               ; preds = %4
  %23 = load i64, i64* @NEWS_UG_EXTENSION, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %28, 2
  br label %34

30:                                               ; preds = %22
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i32 [ %29, %25 ], [ %33, %30 ]
  store i32 %35, i32* @split_factor, align 4
  %36 = load i32, i32* @QL, align 4
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %156, %34
  %39 = load i32, i32* %1, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %159

41:                                               ; preds = %38
  %42 = load i64, i64* @NEWS_UG_EXTENSION, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* @NEWS_G_EXTENSION, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44, %41
  %48 = load i32*, i32** @Q, align 8
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %3, align 4
  store i32 %52, i32* %2, align 4
  br label %100

53:                                               ; preds = %44
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 15
  %58 = load i32, i32* @CLUSTER_MODE_THIRDINT, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load i32*, i32** @Q, align 8
  %62 = load i32, i32* %1, align 4
  %63 = mul nsw i32 3, %62
  %64 = add nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %3, align 4
  store i32 %67, i32* %2, align 4
  br label %99

68:                                               ; preds = %53
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 15
  %73 = load i32, i32* @CLUSTER_MODE_SECONDINT, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load i32*, i32** @Q, align 8
  %77 = load i32, i32* %1, align 4
  %78 = mul nsw i32 3, %77
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %3, align 4
  store i32 %82, i32* %2, align 4
  br label %98

83:                                               ; preds = %68
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 15
  %88 = load i32, i32* @CLUSTER_MODE_FIRSTINT, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i32*, i32** @Q, align 8
  %93 = load i32, i32* %1, align 4
  %94 = mul nsw i32 3, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %3, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %83, %75
  br label %99

99:                                               ; preds = %98, %60
  br label %100

100:                                              ; preds = %99, %47
  %101 = load i64, i64* @NEWS_UG_EXTENSION, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %100
  %104 = load i32, i32* %2, align 4
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* @split_factor, align 4
  %108 = load i32, i32* %2, align 4
  %109 = srem i32 %108, %107
  store i32 %109, i32* %2, align 4
  br label %117

110:                                              ; preds = %103
  %111 = load i32, i32* %2, align 4
  %112 = sub nsw i32 0, %111
  %113 = load i32, i32* @split_factor, align 4
  %114 = srem i32 %112, %113
  %115 = load i32, i32* @split_factor, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %110, %106
  br label %128

118:                                              ; preds = %100
  %119 = load i32, i32* %2, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32, i32* %2, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i32, i32* @split_factor, align 4
  %126 = load i32, i32* %2, align 4
  %127 = srem i32 %126, %125
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %124, %117
  %129 = load i32, i32* %2, align 4
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %155

134:                                              ; preds = %128
  %135 = load i32*, i32** @Rfirst, align 8
  %136 = load i32, i32* %2, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** @QN, align 8
  %141 = load i32, i32* %1, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  %144 = load i32, i32* %1, align 4
  %145 = load i32*, i32** @Rfirst, align 8
  %146 = load i32, i32* %2, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %144, i32* %148, align 4
  %149 = load i64*, i64** @Rlen, align 8
  %150 = load i32, i32* %2, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %152, align 8
  br label %155

155:                                              ; preds = %134, %128
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %1, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %1, align 4
  br label %38

159:                                              ; preds = %38
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

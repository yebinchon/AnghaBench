; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_FindDrawIndexes.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_FindDrawIndexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numBSPDrawIndexes = common dso_local global i32 0, align 4
@bspDrawIndexes = common dso_local global i32* null, align 8
@numRedundantIndexes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FindDrawIndexes(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @numBSPDrawIndexes, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %11, %2
  %19 = load i32, i32* @numBSPDrawIndexes, align 4
  store i32 %19, i32* %3, align 4
  br label %170

20:                                               ; preds = %15
  %21 = load i32, i32* @numBSPDrawIndexes, align 4
  %22 = add nsw i32 1, %21
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %75

27:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %70, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** @bspDrawIndexes, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %35, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %32
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** @bspDrawIndexes, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %45, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %42
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** @bspDrawIndexes, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %56, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @numRedundantIndexes, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* @numRedundantIndexes, align 4
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %170

69:                                               ; preds = %53, %42, %32
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %28

73:                                               ; preds = %28
  %74 = load i32, i32* @numBSPDrawIndexes, align 4
  store i32 %74, i32* %3, align 4
  br label %170

75:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %165, %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %168

80:                                               ; preds = %76
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** @bspDrawIndexes, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %83, %88
  br i1 %89, label %90, label %164

90:                                               ; preds = %80
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** @bspDrawIndexes, align 8
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %93, %99
  br i1 %100, label %101, label %164

101:                                              ; preds = %90
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** @bspDrawIndexes, align 8
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %104, %110
  br i1 %111, label %112, label %164

112:                                              ; preds = %101
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** @bspDrawIndexes, align 8
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 3
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %115, %121
  br i1 %122, label %123, label %164

123:                                              ; preds = %112
  %124 = load i32, i32* %4, align 4
  %125 = icmp eq i32 %124, 4
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %170

128:                                              ; preds = %123
  store i32 4, i32* %7, align 4
  br label %129

129:                                              ; preds = %160, %128
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %163

133:                                              ; preds = %129
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** @bspDrawIndexes, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %139, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %138, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %133
  br label %163

148:                                              ; preds = %133
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %4, align 4
  %151 = sub nsw i32 %150, 1
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @numRedundantIndexes, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* @numRedundantIndexes, align 4
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %3, align 4
  br label %170

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %158
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  br label %129

163:                                              ; preds = %147, %129
  br label %164

164:                                              ; preds = %163, %112, %101, %90, %80
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %6, align 4
  br label %76

168:                                              ; preds = %76
  %169 = load i32, i32* @numBSPDrawIndexes, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %168, %153, %126, %73, %64, %18
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

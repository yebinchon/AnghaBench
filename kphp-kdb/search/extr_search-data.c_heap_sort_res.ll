; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_heap_sort_res.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_heap_sort_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_cnt = common dso_local global i32 0, align 4
@R = common dso_local global i32** null, align 8
@RV = common dso_local global i32* null, align 8
@order = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @heap_sort_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heap_sort_res() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @R_cnt, align 4
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %108, %0
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %111

11:                                               ; preds = %8
  %12 = load i32**, i32*** @R, align 8
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %12, i64 %15
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** @RV, align 8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  %24 = load i32**, i32*** @R, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32**, i32*** @R, align 8
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %27, i64 %30
  store i32* %26, i32** %31, align 8
  %32 = load i32*, i32** @RV, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** @RV, align 8
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 %34, i32* %39, align 4
  store i32 1, i32* %1, align 4
  br label %40

40:                                               ; preds = %11, %77
  %41 = load i32, i32* %1, align 4
  %42 = mul nsw i32 2, %41
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %97

47:                                               ; preds = %40
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %47
  %52 = load i32*, i32** @RV, align 8
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** @RV, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %57, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %64, %51
  br label %68

68:                                               ; preds = %67, %47
  %69 = load i32, i32* %4, align 4
  %70 = load i32*, i32** @RV, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp sge i32 %69, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %97

77:                                               ; preds = %68
  %78 = load i32**, i32*** @R, align 8
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32**, i32*** @R, align 8
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  store i32* %82, i32** %86, align 8
  %87 = load i32*, i32** @RV, align 8
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** @RV, align 8
  %93 = load i32, i32* %1, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  %96 = load i32, i32* %2, align 4
  store i32 %96, i32* %1, align 4
  br label %40

97:                                               ; preds = %76, %46
  %98 = load i32*, i32** %5, align 8
  %99 = load i32**, i32*** @R, align 8
  %100 = load i32, i32* %1, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  store i32* %98, i32** %102, align 8
  %103 = load i32, i32* %4, align 4
  %104 = load i32*, i32** @RV, align 8
  %105 = load i32, i32* %1, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %97
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %3, align 4
  br label %8

111:                                              ; preds = %8
  %112 = load i32, i32* @order, align 4
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %146

114:                                              ; preds = %111
  store i32 0, i32* %1, align 4
  br label %115

115:                                              ; preds = %142, %114
  %116 = load i32, i32* %1, align 4
  %117 = load i32, i32* @R_cnt, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %145

119:                                              ; preds = %115
  %120 = load i32**, i32*** @R, align 8
  %121 = load i32, i32* %1, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %120, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = load i32**, i32*** @R, align 8
  %127 = load i32, i32* %1, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  store i32* %125, i32** %129, align 8
  %130 = load i32*, i32** @RV, align 8
  %131 = load i32, i32* %1, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  %137 = sub nsw i32 0, %136
  %138 = load i32*, i32** @RV, align 8
  %139 = load i32, i32* %1, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %137, i32* %141, align 4
  br label %142

142:                                              ; preds = %119
  %143 = load i32, i32* %1, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %1, align 4
  br label %115

145:                                              ; preds = %115
  br label %176

146:                                              ; preds = %111
  store i32 0, i32* %1, align 4
  br label %147

147:                                              ; preds = %172, %146
  %148 = load i32, i32* %1, align 4
  %149 = load i32, i32* @R_cnt, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %175

151:                                              ; preds = %147
  %152 = load i32**, i32*** @R, align 8
  %153 = load i32, i32* %1, align 4
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %152, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = load i32**, i32*** @R, align 8
  %159 = load i32, i32* %1, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  store i32* %157, i32** %161, align 8
  %162 = load i32*, i32** @RV, align 8
  %163 = load i32, i32* %1, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** @RV, align 8
  %169 = load i32, i32* %1, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %167, i32* %171, align 4
  br label %172

172:                                              ; preds = %151
  %173 = load i32, i32* %1, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %1, align 4
  br label %147

175:                                              ; preds = %147
  br label %176

176:                                              ; preds = %175, %145
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

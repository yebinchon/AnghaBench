; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-recommend-extension.c_set_rlen.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-recommend-extension.c_set_rlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@CC = common dso_local global %struct.TYPE_2__* null, align 8
@Rlen = common dso_local global i64* null, align 8
@Rfirst = common dso_local global i32* null, align 8
@split_factor = common dso_local global i32 0, align 4
@R = common dso_local global i32* null, align 8
@R_common_len = common dso_local global i32 0, align 4
@QL = common dso_local global i32 0, align 4
@Q = common dso_local global i8** null, align 8
@MAX_RES = common dso_local global i32 0, align 4
@QN = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_rlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rlen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %18, %0
  %4 = load i32, i32* %1, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %4, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = load i64*, i64** @Rlen, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  store i64 0, i64* %13, align 8
  %14 = load i32*, i32** @Rfirst, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32 -1, i32* %17, align 4
  br label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %1, align 4
  br label %3

21:                                               ; preds = %3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  br label %31

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 0, %30 ]
  store i32 %32, i32* @split_factor, align 4
  %33 = load i32*, i32** @R, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 825241648, i32* %34, align 4
  store i32 1, i32* @R_common_len, align 4
  %35 = load i32, i32* @QL, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %127, %31
  %38 = load i32, i32* %1, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %130

40:                                               ; preds = %37
  %41 = load i8**, i8*** @Q, align 8
  %42 = load i32, i32* %1, align 4
  %43 = mul nsw i32 2, %42
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %41, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ult i8* %47, null
  br i1 %48, label %49, label %82

49:                                               ; preds = %40
  %50 = load i32, i32* @R_common_len, align 4
  %51 = add nsw i32 %50, 2
  %52 = load i32, i32* @MAX_RES, align 4
  %53 = add nsw i32 %52, 1
  %54 = icmp sle i32 %51, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i8**, i8*** @Q, align 8
  %58 = load i32, i32* %1, align 4
  %59 = mul nsw i32 2, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %57, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load i32*, i32** @R, align 8
  %65 = load i32, i32* @R_common_len, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @R_common_len, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %63, i32* %68, align 4
  %69 = load i8**, i8*** @Q, align 8
  %70 = load i32, i32* %1, align 4
  %71 = mul nsw i32 2, %70
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %69, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load i32*, i32** @R, align 8
  %78 = load i32, i32* @R_common_len, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @R_common_len, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  store i32 %76, i32* %81, align 4
  br label %126

82:                                               ; preds = %40
  %83 = load i8**, i8*** @Q, align 8
  %84 = load i32, i32* %1, align 4
  %85 = mul nsw i32 2, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %83, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* %2, align 4
  %90 = load i32, i32* %2, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load i32, i32* %2, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %92, %82
  %96 = load i32, i32* @split_factor, align 4
  %97 = load i32, i32* %2, align 4
  %98 = srem i32 %97, %96
  store i32 %98, i32* %2, align 4
  %99 = load i32, i32* %2, align 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %95
  %105 = load i32*, i32** @Rfirst, align 8
  %106 = load i32, i32* %2, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** @QN, align 8
  %111 = load i32, i32* %1, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %109, i32* %113, align 4
  %114 = load i32, i32* %1, align 4
  %115 = load i32*, i32** @Rfirst, align 8
  %116 = load i32, i32* %2, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  %119 = load i64*, i64** @Rlen, align 8
  %120 = load i32, i32* %2, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %122, align 8
  br label %125

125:                                              ; preds = %104, %95
  br label %126

126:                                              ; preds = %125, %49
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %1, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %1, align 4
  br label %37

130:                                              ; preds = %37
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

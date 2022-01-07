; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news-r.c_set_rlen.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_rpc-proxy-merge-news-r.c_set_rlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@CC = common dso_local global %struct.TYPE_2__* null, align 8
@Rlen = common dso_local global i64* null, align 8
@Rfirst = common dso_local global i32* null, align 8
@R_common_len = common dso_local global i64 0, align 8
@Q_size = common dso_local global i32 0, align 4
@Q = common dso_local global i8** null, align 8
@R = common dso_local global i8** null, align 8
@QN = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_rlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rlen() #0 {
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
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  store i64 0, i64* @R_common_len, align 8
  %26 = load i32, i32* @Q_size, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %107, %22
  %29 = load i32, i32* %1, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %110

31:                                               ; preds = %28
  %32 = load i8**, i8*** @Q, align 8
  %33 = load i32, i32* %1, align 4
  %34 = mul nsw i32 2, %33
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %32, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ult i8* %38, null
  br i1 %39, label %40, label %62

40:                                               ; preds = %31
  %41 = load i8**, i8*** @Q, align 8
  %42 = load i32, i32* %1, align 4
  %43 = mul nsw i32 2, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %41, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load i8**, i8*** @R, align 8
  %48 = load i64, i64* @R_common_len, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* @R_common_len, align 8
  %50 = getelementptr inbounds i8*, i8** %47, i64 %48
  store i8* %46, i8** %50, align 8
  %51 = load i8**, i8*** @Q, align 8
  %52 = load i32, i32* %1, align 4
  %53 = mul nsw i32 2, %52
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %51, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i8**, i8*** @R, align 8
  %59 = load i64, i64* @R_common_len, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* @R_common_len, align 8
  %61 = getelementptr inbounds i8*, i8** %58, i64 %59
  store i8* %57, i8** %61, align 8
  br label %106

62:                                               ; preds = %31
  %63 = load i8**, i8*** @Q, align 8
  %64 = load i32, i32* %1, align 4
  %65 = mul nsw i32 2, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %2, align 4
  %70 = load i32, i32* %2, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i32, i32* %2, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %62
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %2, align 4
  %78 = srem i32 %77, %76
  store i32 %78, i32* %2, align 4
  %79 = load i32, i32* %2, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %75
  %85 = load i32*, i32** @Rfirst, align 8
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** @QN, align 8
  %91 = load i32, i32* %1, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %89, i32* %93, align 4
  %94 = load i32, i32* %1, align 4
  %95 = load i32*, i32** @Rfirst, align 8
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4
  %99 = load i64*, i64** @Rlen, align 8
  %100 = load i32, i32* %2, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %102, align 8
  br label %105

105:                                              ; preds = %84, %75
  br label %106

106:                                              ; preds = %105, %40
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %1, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %1, align 4
  br label %28

110:                                              ; preds = %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

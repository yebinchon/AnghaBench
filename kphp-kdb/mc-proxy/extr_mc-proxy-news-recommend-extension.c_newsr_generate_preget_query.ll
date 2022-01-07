; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-recommend-extension.c_newsr_generate_preget_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-recommend-extension.c_newsr_generate_preget_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.newsr_gather_extra = type { i32 }

@Rlen = common dso_local global i32* null, align 8
@Rfirst = common dso_local global i32* null, align 8
@R_common_len = common dso_local global i32 0, align 4
@R = common dso_local global i32* null, align 8
@MAX_RES = common dso_local global i32 0, align 4
@Q = common dso_local global i32* null, align 8
@QN = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"set urlist%d 0 0 %d\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @newsr_generate_preget_query(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.newsr_gather_extra*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32*, i32** @Rlen, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %123

26:                                               ; preds = %5
  %27 = load i8*, i8** %10, align 8
  %28 = bitcast i8* %27 to %struct.newsr_gather_extra*
  store %struct.newsr_gather_extra* %28, %struct.newsr_gather_extra** %12, align 8
  %29 = load i32*, i32** @Rlen, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32*, i32** @Rfirst, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* @R_common_len, align 4
  store i32 %39, i32* %16, align 4
  %40 = load i32*, i32** @R, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 825241648
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %91, %26
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %94

50:                                               ; preds = %46
  %51 = load i32, i32* %15, align 4
  %52 = icmp sge i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* %16, align 4
  %56 = add nsw i32 %55, 2
  %57 = load i32, i32* @MAX_RES, align 4
  %58 = add nsw i32 %57, 1
  %59 = icmp sle i32 %56, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32*, i32** @Q, align 8
  %63 = load i32, i32* %15, align 4
  %64 = mul nsw i32 2, %63
  %65 = add nsw i32 %64, 0
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** @R, align 8
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %16, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32 %68, i32* %73, align 4
  %74 = load i32*, i32** @Q, align 8
  %75 = load i32, i32* %15, align 4
  %76 = mul nsw i32 2, %75
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** @R, align 8
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %16, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %80, i32* %85, align 4
  %86 = load i32*, i32** @QN, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %50
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %46

94:                                               ; preds = %46
  %95 = load i32, i32* %15, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %13, align 4
  %99 = icmp sgt i32 %98, 0
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi i1 [ false, %94 ], [ %99, %97 ]
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load i32, i32* %16, align 4
  %105 = shl i32 %104, 2
  store i32 %105, i32* %17, align 4
  %106 = load i8*, i8** %7, align 8
  %107 = load %struct.newsr_gather_extra*, %struct.newsr_gather_extra** %12, align 8
  %108 = getelementptr inbounds %struct.newsr_gather_extra, %struct.newsr_gather_extra* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @sprintf(i8* %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %110)
  store i32 %111, i32* %18, align 4
  %112 = load i8*, i8** %7, align 8
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i32*, i32** @R, align 8
  %117 = load i32, i32* %17, align 4
  %118 = call i32 @memcpy(i8* %115, i32* %116, i32 %117)
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %100, %25
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

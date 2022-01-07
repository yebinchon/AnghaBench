; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_rankings.c_SV_RankAsciiEncode.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_rankings.c_SV_RankAsciiEncode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_ascii_encoding = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @SV_RankAsciiEncode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SV_RankAsciiEncode(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca [4 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %127, %3
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %130

25:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %51, %25
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %54

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  br label %45

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %35
  %46 = phi i32 [ %43, %35 ], [ 0, %44 ]
  %47 = trunc i32 %46 to i8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 %49
  store i8 %47, i8* %50, align 1
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %26

54:                                               ; preds = %26
  %55 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = ashr i32 %57, 2
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  store i8 %59, i8* %60, align 1
  %61 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl i32 %63, 4
  %65 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = ashr i32 %67, 4
  %69 = or i32 %64, %68
  %70 = and i32 %69, 63
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  store i8 %71, i8* %72, align 1
  %73 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl i32 %75, 2
  %77 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = ashr i32 %79, 6
  %81 = or i32 %76, %80
  %82 = and i32 %81, 63
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  store i8 %83, i8* %84, align 1
  %85 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, 63
  %89 = trunc i32 %88 to i8
  %90 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  store i8 %89, i8* %90, align 1
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 2
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %54
  br label %103

96:                                               ; preds = %54
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %97, %98
  %100 = mul nsw i32 %99, 4
  %101 = sdiv i32 %100, 3
  %102 = add nsw i32 %101, 1
  br label %103

103:                                              ; preds = %96, %95
  %104 = phi i32 [ 4, %95 ], [ %102, %96 ]
  store i32 %104, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %123, %103
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %126

109:                                              ; preds = %105
  %110 = load i8*, i8** @s_ascii_encoding, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds i8, i8* %110, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = load i8*, i8** %4, align 8
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  store i8 %117, i8* %122, align 1
  br label %123

123:                                              ; preds = %109
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %105

126:                                              ; preds = %105
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 3
  store i32 %129, i32* %10, align 4
  br label %21

130:                                              ; preds = %21
  %131 = load i8*, i8** %4, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8 0, i8* %134, align 1
  %135 = load i32, i32* %9, align 4
  ret i32 %135
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

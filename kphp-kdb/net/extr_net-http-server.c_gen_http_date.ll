; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-http-server.c_gen_http_date.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-http-server.c_gen_http_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dd = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"%.3s, %.2d %.3s %d %.2d:%.2d:%.2d GM\00", align 1
@dows = common dso_local global i8* null, align 8
@months = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_http_date(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i32, i32* %4, align 4
  %19 = srem i32 %18, 60
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sdiv i32 %20, 60
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = srem i32 %22, 60
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sdiv i32 %24, 60
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = srem i32 %26, 24
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sdiv i32 %28, 24
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 4
  %32 = srem i32 %31, 7
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %4, align 4
  %34 = srem i32 %33, 1461
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sdiv i32 %35, 1461
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = mul nsw i32 %37, 4
  %39 = add nsw i32 %38, 1970
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp sge i32 %40, 365
  br i1 %41, label %42, label %63

42:                                               ; preds = %17
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %45, 365
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp sge i32 %47, 365
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 %52, 365
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp sge i32 %54, 366
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %59, 366
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %56, %49
  br label %62

62:                                               ; preds = %61, %42
  br label %63

63:                                               ; preds = %62, %17
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, 3
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32*, i32** @dd, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 28, i32* %69, align 4
  br label %73

70:                                               ; preds = %63
  %71 = load i32*, i32** @dd, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 29, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %67
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %94, %73
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 12
  br i1 %76, label %77, label %97

77:                                               ; preds = %74
  %78 = load i32, i32* %11, align 4
  %79 = load i32*, i32** @dd, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %78, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %97

86:                                               ; preds = %77
  %87 = load i32*, i32** @dd, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %74

97:                                               ; preds = %85, %74
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp sge i32 %101, 1
  br i1 %102, label %103, label %118

103:                                              ; preds = %97
  %104 = load i32, i32* %5, align 4
  %105 = icmp sle i32 %104, 31
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = load i32, i32* %6, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load i32, i32* %6, align 4
  %111 = icmp sle i32 %110, 11
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* %7, align 4
  %114 = icmp sge i32 %113, 1970
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* %7, align 4
  %117 = icmp sle i32 %116, 2039
  br label %118

118:                                              ; preds = %115, %112, %109, %106, %103, %97
  %119 = phi i1 [ false, %112 ], [ false, %109 ], [ false, %106 ], [ false, %103 ], [ false, %97 ], [ %117, %115 ]
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load i8*, i8** %3, align 8
  %123 = load i8*, i8** @dows, align 8
  %124 = load i32, i32* %13, align 4
  %125 = mul nsw i32 %124, 3
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  %128 = load i32, i32* %5, align 4
  %129 = load i8*, i8** @months, align 8
  %130 = load i32, i32* %6, align 4
  %131 = mul nsw i32 %130, 3
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @sprintf(i8* %122, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %127, i32 %128, i8* %133, i32 %134, i32 %135, i32 %136, i32 %137)
  %139 = load i8*, i8** %3, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 28
  store i8 84, i8* %140, align 1
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

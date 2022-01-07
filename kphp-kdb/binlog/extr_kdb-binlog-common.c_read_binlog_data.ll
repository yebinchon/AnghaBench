; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_read_binlog_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_read_binlog_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@W = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_binlog_data(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 0), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 1), align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 1), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 2), align 8
  %13 = sext i32 %12 to i64
  %14 = sub nsw i64 %11, %13
  br label %24

15:                                               ; preds = %2
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 1), align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 2), align 8
  %18 = sext i32 %17 to i64
  %19 = sub nsw i64 %16, %18
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 0), align 8
  %21 = add nsw i64 %19, %20
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 1), align 8
  %23 = sub nsw i64 %21, %22
  br label %24

24:                                               ; preds = %15, %10
  %25 = phi i64 [ %14, %10 ], [ %23, %15 ]
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 1), align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 2), align 8
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %34, %36
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp sge i64 %37, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load i8*, i8** %4, align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 1), align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %43, %45
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @memcpy(i8* %42, i32 %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %120

51:                                               ; preds = %32
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 1), align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 2), align 8
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %52, %54
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %5, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 2), align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 1), align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 2), align 8
  %67 = sext i32 %66 to i64
  %68 = sub nsw i64 %65, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memcpy(i8* %63, i32 %64, i32 %69)
  br label %71

71:                                               ; preds = %51
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 0), align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %113

74:                                               ; preds = %71
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 0), align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 1), align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %112

78:                                               ; preds = %74
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 0), align 8
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 1), align 8
  %81 = sub nsw i64 %79, %80
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp sge i64 %81, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %78
  %86 = load i8*, i8** %4, align 8
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 0), align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %87, %89
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @memcpy(i8* %86, i32 %91, i32 %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %120

95:                                               ; preds = %78
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 0), align 8
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 1), align 8
  %98 = sub nsw i64 %96, %97
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = sub nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %5, align 4
  %103 = load i8*, i8** %4, align 8
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 1), align 8
  %105 = trunc i64 %104 to i32
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 0), align 8
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @W, i32 0, i32 1), align 8
  %108 = sub nsw i64 %106, %107
  %109 = trunc i64 %108 to i32
  %110 = call i32 @memcpy(i8* %103, i32 %105, i32 %109)
  br label %111

111:                                              ; preds = %95
  br label %112

112:                                              ; preds = %111, %74
  br label %113

113:                                              ; preds = %112, %71
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %113, %85, %41
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

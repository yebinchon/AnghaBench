; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_check_cancellation_possibility.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_check_cancellation_possibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@trs_committed = common dso_local global i64 0, align 8
@MAX_ACC_INCR = common dso_local global i64 0, align 8
@MAX_BALANCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @check_cancellation_possibility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_cancellation_possibility(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = icmp ne %struct.TYPE_8__* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @trs_committed, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %10, %1
  store i32 -1, i32* %2, align 4
  br label %148

22:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %144, %22
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %147

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 0, %37
  store i64 %38, i64* %5, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %6, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = icmp ne %struct.TYPE_9__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %29
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 -32, %50
  store i32 %51, i32* %2, align 4
  br label %148

52:                                               ; preds = %29
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  %58 = load i64, i64* %5, align 8
  %59 = icmp sge i64 %58, 0
  br i1 %59, label %60, label %88

60:                                               ; preds = %52
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @MAX_ACC_INCR, align 8
  %63 = icmp slt i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71, %60
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 -32, %76
  store i32 %77, i32* %2, align 4
  br label %148

78:                                               ; preds = %71
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i64, i64* @MAX_BALANCE, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  store i32 -1, i32* %2, align 4
  br label %148

87:                                               ; preds = %78
  br label %143

88:                                               ; preds = %52
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* @MAX_ACC_INCR, align 8
  %91 = sub nsw i64 0, %90
  %92 = icmp sge i64 %89, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, 2
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %88
  %101 = load i32, i32* %7, align 4
  %102 = and i32 %101, 2
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100, %88
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 -32, %105
  store i32 %106, i32* %2, align 4
  br label %148

107:                                              ; preds = %100
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %5, align 8
  %112 = add nsw i64 %110, %111
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %112, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %107
  %118 = load i32, i32* %7, align 4
  %119 = and i32 %118, 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 -48, %122
  store i32 %123, i32* %2, align 4
  br label %148

124:                                              ; preds = %117, %107
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %5, align 8
  %129 = add nsw i64 %127, %128
  %130 = load i64, i64* @MAX_BALANCE, align 8
  %131 = sub nsw i64 0, %130
  %132 = icmp slt i64 %129, %131
  br i1 %132, label %141, label %133

133:                                              ; preds = %124
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %5, align 8
  %138 = sub nsw i64 %136, %137
  %139 = load i64, i64* @MAX_BALANCE, align 8
  %140 = icmp sge i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %133, %124
  store i32 -1, i32* %2, align 4
  br label %148

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142, %87
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %4, align 4
  br label %23

147:                                              ; preds = %23
  store i32 1, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %141, %121, %104, %86, %75, %49, %21
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

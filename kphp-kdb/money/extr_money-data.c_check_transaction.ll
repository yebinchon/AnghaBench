; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_check_transaction.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_check_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, i64, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@trs_declared_locked = common dso_local global i32 0, align 4
@trs_long_locked = common dso_local global i32 0, align 4
@MAX_ACC_INCR = common dso_local global i64 0, align 8
@MAX_BALANCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @check_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_transaction(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @trs_declared_locked, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @trs_long_locked, align 4
  %18 = icmp eq i32 %16, %17
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i1 [ true, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %208, %19
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %211

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %6, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %7, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = icmp ne %struct.TYPE_9__* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %29
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 -32, %49
  store i32 %50, i32* %2, align 4
  br label %212

51:                                               ; preds = %29
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %5, align 4
  %57 = load i64, i64* %6, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %87

59:                                               ; preds = %51
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @MAX_ACC_INCR, align 8
  %62 = icmp slt i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 2
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %59
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, 2
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %59
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 -32, %75
  store i32 %76, i32* %2, align 4
  br label %212

77:                                               ; preds = %70
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i64, i64* @MAX_BALANCE, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 -1, i32* %2, align 4
  br label %212

86:                                               ; preds = %77
  br label %207

87:                                               ; preds = %51
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @MAX_ACC_INCR, align 8
  %90 = sub nsw i64 0, %89
  %91 = icmp sge i64 %88, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, 1
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %87
  %100 = load i32, i32* %5, align 4
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99, %87
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 -32, %104
  store i32 %105, i32* %2, align 4
  br label %212

106:                                              ; preds = %99
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @trs_long_locked, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %106
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %112
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %125, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %117
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 -32, %131
  store i32 %132, i32* %2, align 4
  br label %212

133:                                              ; preds = %117, %112, %106
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, 1
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %170

139:                                              ; preds = %133
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %139
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %6, align 8
  %149 = add nsw i64 %147, %148
  %150 = icmp sge i64 %149, 0
  br label %151

151:                                              ; preds = %144, %139
  %152 = phi i1 [ false, %139 ], [ %150, %144 ]
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = icmp sge i64 %157, %160
  br i1 %161, label %166, label %162

162:                                              ; preds = %151
  %163 = load i32, i32* %5, align 4
  %164 = and i32 %163, 4
  %165 = icmp ne i32 %164, 0
  br label %166

166:                                              ; preds = %162, %151
  %167 = phi i1 [ true, %151 ], [ %165, %162 ]
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  br label %188

170:                                              ; preds = %133
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %6, align 8
  %175 = add nsw i64 %173, %174
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = icmp slt i64 %175, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %170
  %181 = load i32, i32* %5, align 4
  %182 = and i32 %181, 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %180
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 -48, %185
  store i32 %186, i32* %2, align 4
  br label %212

187:                                              ; preds = %180, %170
  br label %188

188:                                              ; preds = %187, %166
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %6, align 8
  %193 = add nsw i64 %191, %192
  %194 = load i64, i64* @MAX_BALANCE, align 8
  %195 = sub nsw i64 0, %194
  %196 = icmp slt i64 %193, %195
  br i1 %196, label %205, label %197

197:                                              ; preds = %188
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %6, align 8
  %202 = sub nsw i64 %200, %201
  %203 = load i64, i64* @MAX_BALANCE, align 8
  %204 = icmp sge i64 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %197, %188
  store i32 -1, i32* %2, align 4
  br label %212

206:                                              ; preds = %197
  br label %207

207:                                              ; preds = %206, %86
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %4, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %4, align 4
  br label %23

211:                                              ; preds = %23
  store i32 0, i32* %2, align 4
  br label %212

212:                                              ; preds = %211, %205, %184, %130, %103, %85, %74, %48
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

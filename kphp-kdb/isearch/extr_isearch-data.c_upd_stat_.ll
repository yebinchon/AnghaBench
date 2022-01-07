; ModuleID = '/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_upd_stat_.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_upd_stat_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@idn = common dso_local global i32 0, align 4
@STAT_ST = common dso_local global i32 0, align 4
@q_entry = common dso_local global %struct.TYPE_2__* null, align 8
@STAT_BUCKET_SIZE = common dso_local global i32 0, align 4
@STAT_MAX_RATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @upd_stat_(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 @assert(i32 0)
  br label %212

17:                                               ; preds = %12, %2
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %20, %17
  %26 = load i32, i32* %3, align 4
  %27 = icmp sle i32 1, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @idn, align 4
  %31 = icmp sle i32 %29, %30
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i1 [ false, %25 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @add_q(i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @STAT_ST, align 4
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @STAT_BUCKET_SIZE, align 4
  %48 = add nsw i32 %46, %47
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* @STAT_BUCKET_SIZE, align 4
  %51 = sdiv i32 %49, %50
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @STAT_ST, align 4
  %54 = icmp slt i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %57
  store i32 %64, i32* %62, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @STAT_MAX_RATE, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %32
  %74 = load i32, i32* @STAT_MAX_RATE, align 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %74, i32* %79, align 4
  br label %80

80:                                               ; preds = %73, %32
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %80
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 0, i32* %93, align 4
  br label %94

94:                                               ; preds = %88, %80
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @STAT_BUCKET_SIZE, align 4
  %102 = add nsw i32 %100, %101
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* @STAT_BUCKET_SIZE, align 4
  %105 = sdiv i32 %103, %104
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @STAT_ST, align 4
  %108 = icmp slt i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %212

114:                                              ; preds = %94
  %115 = load i32, i32* %5, align 4
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %165

118:                                              ; preds = %114
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @del_bucket(i32 %119)
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %124, %118
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %164

140:                                              ; preds = %131
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %7, align 4
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 3
  store i32 %152, i32* %157, align 4
  store i32 %152, i32* %8, align 4
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  store i32 %158, i32* %163, align 4
  br label %164

164:                                              ; preds = %140, %131
  br label %165

165:                                              ; preds = %164, %114
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %211

168:                                              ; preds = %165
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %6, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %207

177:                                              ; preds = %168
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 3
  store i32 %183, i32* %188, align 4
  store i32 %183, i32* %9, align 4
  %189 = load i32, i32* %6, align 4
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  store i32 %189, i32* %194, align 4
  %195 = load i32, i32* %6, align 4
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 3
  store i32 %195, i32* %200, align 4
  %201 = load i32, i32* %7, align 4
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 1
  store i32 %201, i32* %206, align 4
  br label %207

207:                                              ; preds = %177, %168
  %208 = load i32, i32* %3, align 4
  %209 = load i32, i32* %6, align 4
  %210 = call i32 @add_bucket(i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %165
  br label %212

212:                                              ; preds = %15, %211, %94
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @add_q(i32) #1

declare dso_local i32 @del_bucket(i32) #1

declare dso_local i32 @add_bucket(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_get_transaction_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_get_transaction_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64, i64, i64, i64, i8*, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@get_transaction_data.temp = internal global [128 x i8] zeroinitializer, align 16
@trs_temp_locked = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%lld,%d\00", align 1
@trs_deleting = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_transaction_data(i64 %0, i32 %1, i8* %2, i64* %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__*, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call %struct.TYPE_11__* @get_transaction(i64 %20)
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %14, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %23 = icmp ne %struct.TYPE_11__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %222

25:                                               ; preds = %6
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @trs_temp_locked, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 -1, i32* %7, align 4
  br label %222

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @sprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @get_transaction_data.temp, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %33, i32 %34)
  store i32 %35, i32* %17, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %96, %32
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %99

43:                                               ; preds = %39
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 7
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %19, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %53 = call i32 @assert(%struct.TYPE_12__* %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %94

58:                                               ; preds = %43
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %17, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @check_signature(i8* %59, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @get_transaction_data.temp, i64 0, i64 0), i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %94, label %66

66:                                               ; preds = %58
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %17, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @check_signature(i8* %67, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @get_transaction_data.temp, i64 0, i64 0), i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %94, label %74

74:                                               ; preds = %66
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %17, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @check_signature(i8* %75, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @get_transaction_data.temp, i64 0, i64 0), i32 %76, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %74
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %17, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @check_signature(i8* %85, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @get_transaction_data.temp, i64 0, i64 0), i32 %86, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84, %74, %66, %58, %43
  store i32 1, i32* %18, align 4
  br label %99

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %15, align 4
  br label %39

99:                                               ; preds = %94, %39
  %100 = load i32, i32* %18, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store i32 -1, i32* %7, align 4
  br label %222

103:                                              ; preds = %99
  %104 = load i64, i64* @trs_deleting, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %104, %107
  %109 = load i64*, i64** %11, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %11, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 1
  store i64 %113, i64* %115, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** %11, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 2
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %11, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 3
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = load i64*, i64** %11, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 4
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = icmp ne %struct.TYPE_8__* %133, null
  br i1 %134, label %135, label %141

135:                                              ; preds = %103
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  br label %142

141:                                              ; preds = %103
  br label %142

142:                                              ; preds = %141, %135
  %143 = phi i64 [ %140, %135 ], [ 0, %141 ]
  %144 = load i64*, i64** %11, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 5
  store i64 %143, i64* %145, align 8
  %146 = load i64*, i64** %11, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 7
  store i64 0, i64* %147, align 8
  %148 = load i64*, i64** %11, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 6
  store i64 0, i64* %149, align 8
  %150 = load i64*, i64** %11, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 8
  store i64* %151, i64** %11, align 8
  store i32 0, i32* %15, align 4
  br label %152

152:                                              ; preds = %209, %142
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %16, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %212

156:                                              ; preds = %152
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 7
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = load i32, i32* %15, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64*, i64** %11, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 0
  store i64 %168, i64* %170, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 7
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64*, i64** %11, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 1
  store i64 %180, i64* %182, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 7
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = load i32, i32* %15, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64*, i64** %11, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 2
  store i64 %190, i64* %192, align 8
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 7
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = load i32, i32* %15, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load i64*, i64** %11, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 3
  store i64 %204, i64* %206, align 8
  %207 = load i64*, i64** %11, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 4
  store i64* %208, i64** %11, align 8
  br label %209

209:                                              ; preds = %156
  %210 = load i32, i32* %15, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %15, align 4
  br label %152

212:                                              ; preds = %152
  %213 = load i32, i32* %16, align 4
  %214 = mul nsw i32 4, %213
  %215 = add nsw i32 8, %214
  %216 = load i32*, i32** %12, align 8
  store i32 %215, i32* %216, align 4
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 6
  %219 = load i8*, i8** %218, align 8
  %220 = load i8**, i8*** %13, align 8
  store i8* %219, i8** %220, align 8
  %221 = load i32, i32* %16, align 4
  store i32 %221, i32* %7, align 4
  br label %222

222:                                              ; preds = %212, %102, %31, %24
  %223 = load i32, i32* %7, align 4
  ret i32 %223
}

declare dso_local %struct.TYPE_11__* @get_transaction(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, i32) #1

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local i64 @check_signature(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

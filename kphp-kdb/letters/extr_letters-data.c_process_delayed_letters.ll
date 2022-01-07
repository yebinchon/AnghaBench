; ModuleID = '/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-data.c_process_delayed_letters.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-data.c_process_delayed_letters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@now = common dso_local global i64 0, align 8
@MAX_DELAY = common dso_local global i32 0, align 4
@last_process_delayed_time = common dso_local global i32 0, align 4
@delayed_head_letter = common dso_local global %struct.TYPE_6__* null, align 8
@letter_buf = common dso_local global %struct.TYPE_7__* null, align 8
@DELAYED_TABLE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_delayed_letters(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  br label %11

11:                                               ; preds = %14, %2
  %12 = call i32* @letter_get(i32 0)
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %11

15:                                               ; preds = %11
  %16 = load i64, i64* @now, align 8
  %17 = add nsw i64 %16, 1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @MAX_DELAY, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %17, %21
  %23 = call i32 @GET_DELAYED_ID(i64 %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %109, %15
  %25 = load i32, i32* @last_process_delayed_time, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %110

28:                                               ; preds = %24
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @delayed_head_letter, align 8
  %30 = load i32, i32* @last_process_delayed_time, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %6, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = icmp ne %struct.TYPE_6__* %35, %36
  br i1 %37, label %38, label %102

38:                                               ; preds = %28
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %6, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strlen(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %48, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @letter_buf, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i32 @memcpy(i32 %59, i32 %64, i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @letter_buf, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @get_fields(i32 %70)
  %72 = icmp sge i32 %71, 4
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %38
  br label %82

78:                                               ; preds = %38
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  br label %82

82:                                               ; preds = %78, %77
  %83 = phi i32 [ 0, %77 ], [ %81, %78 ]
  store i32 %83, i32* %8, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %9, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %10, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @delete_letter(i32 %92)
  %94 = load i64, i64* %9, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @is_deleted_task(i64 %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %82
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @letter_add(i32 %99, i32 0)
  br label %101

101:                                              ; preds = %98, %82
  br label %109

102:                                              ; preds = %28
  %103 = load i32, i32* @last_process_delayed_time, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @last_process_delayed_time, align 4
  %105 = load i32, i32* @DELAYED_TABLE_SIZE, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 0, i32* @last_process_delayed_time, align 4
  br label %108

108:                                              ; preds = %107, %102
  br label %109

109:                                              ; preds = %108, %101
  br label %24

110:                                              ; preds = %24
  %111 = load i32, i32* @last_process_delayed_time, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* @last_process_delayed_time, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* @DELAYED_TABLE_SIZE, align 4
  %116 = sub nsw i32 %115, 1
  store i32 %116, i32* @last_process_delayed_time, align 4
  br label %117

117:                                              ; preds = %114, %110
  ret void
}

declare dso_local i32* @letter_get(i32) #1

declare dso_local i32 @GET_DELAYED_ID(i64) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @get_fields(i32) #1

declare dso_local i32 @delete_letter(i32) #1

declare dso_local i32 @is_deleted_task(i64, i32) #1

declare dso_local i32 @letter_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

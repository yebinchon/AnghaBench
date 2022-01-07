; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_cnt_srt.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_cnt_srt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@cnt_srt.was = internal global [10001 x i32] zeroinitializer, align 16
@cnt_srt.num = internal global [10001 x i32] zeroinitializer, align 16
@cnt_srt.st = internal global [10001 x i32] zeroinitializer, align 16
@cnt_srt.vn = internal global i32 0, align 4
@cnt_srt.id = internal global i32 0, align 4
@engine_n = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cnt_srt(%struct.TYPE_4__* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %9 = load i32, i32* @engine_n, align 4
  %10 = icmp slt i32 0, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @engine_n, align 4
  %13 = icmp sle i32 %12, 10000
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi i1 [ false, %3 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* @cnt_srt.id, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @cnt_srt.id, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @memset(i32* getelementptr inbounds ([10001 x i32], [10001 x i32]* @cnt_srt.was, i64 0, i64 0), i32 0, i32 40004)
  store i32 1, i32* @cnt_srt.id, align 4
  br label %23

23:                                               ; preds = %21, %14
  store i32 0, i32* @cnt_srt.vn, align 4
  store i32 0, i32* getelementptr inbounds ([10001 x i32], [10001 x i32]* @cnt_srt.st, i64 0, i64 0), align 16
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %68, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %24
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dl_abs(i32 %34)
  %36 = load i32, i32* @engine_n, align 4
  %37 = srem i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [10001 x i32], [10001 x i32]* @cnt_srt.was, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @cnt_srt.id, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %28
  %45 = load i32, i32* @cnt_srt.vn, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [10001 x i32], [10001 x i32]* @cnt_srt.num, i64 0, i64 %47
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @cnt_srt.id, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [10001 x i32], [10001 x i32]* @cnt_srt.was, i64 0, i64 %51
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @cnt_srt.vn, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @cnt_srt.vn, align 4
  %55 = load i32, i32* @cnt_srt.vn, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [10001 x i32], [10001 x i32]* @cnt_srt.st, i64 0, i64 %56
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %44, %28
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [10001 x i32], [10001 x i32]* @cnt_srt.num, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [10001 x i32], [10001 x i32]* @cnt_srt.st, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %24

71:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %87, %71
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @cnt_srt.vn, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [10001 x i32], [10001 x i32]* @cnt_srt.st, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [10001 x i32], [10001 x i32]* @cnt_srt.st, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, %80
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %72

90:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %121, %90
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %124

95:                                               ; preds = %91
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dl_abs(i32 %102)
  %104 = load i32, i32* @engine_n, align 4
  %105 = srem i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [10001 x i32], [10001 x i32]* @cnt_srt.num, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [10001 x i32], [10001 x i32]* @cnt_srt.st, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %113
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = bitcast %struct.TYPE_4__* %114 to i8*
  %120 = bitcast %struct.TYPE_4__* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 4, i1 false)
  br label %121

121:                                              ; preds = %95
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %91

124:                                              ; preds = %91
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dl_abs(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/extr_prio-queue.c_prio_queue_get.c'
source_filename = "/home/carl/AnghaBench/git/extr_prio-queue.c_prio_queue_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prio_queue = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @prio_queue_get(%struct.prio_queue* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.prio_queue*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.prio_queue* %0, %struct.prio_queue** %3, align 8
  %7 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %8 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %102

12:                                               ; preds = %1
  %13 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %14 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  %18 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %19 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %22 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %2, align 8
  br label %102

28:                                               ; preds = %12
  %29 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %30 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %4, align 8
  %35 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %36 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %28
  %41 = load i8*, i8** %4, align 8
  store i8* %41, i8** %2, align 8
  br label %102

42:                                               ; preds = %28
  %43 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %44 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 0
  %47 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %48 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %51 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %52
  %54 = bitcast %struct.TYPE_2__* %46 to i8*
  %55 = bitcast %struct.TYPE_2__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %98, %42
  %57 = load i32, i32* %5, align 4
  %58 = mul nsw i32 %57, 2
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %62 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %100

65:                                               ; preds = %56
  %66 = load i32, i32* %5, align 4
  %67 = mul nsw i32 %66, 2
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %73 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %65
  %77 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i64 @compare(%struct.prio_queue* %77, i32 %78, i32 %80)
  %82 = icmp sge i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %83, %76, %65
  %87 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i64 @compare(%struct.prio_queue* %87, i32 %88, i32 %89)
  %91 = icmp sle i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %100

93:                                               ; preds = %86
  %94 = load %struct.prio_queue*, %struct.prio_queue** %3, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @swap(%struct.prio_queue* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %5, align 4
  br label %56

100:                                              ; preds = %92, %56
  %101 = load i8*, i8** %4, align 8
  store i8* %101, i8** %2, align 8
  br label %102

102:                                              ; preds = %100, %40, %17, %11
  %103 = load i8*, i8** %2, align 8
  ret i8* %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @compare(%struct.prio_queue*, i32, i32) #2

declare dso_local i32 @swap(%struct.prio_queue*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

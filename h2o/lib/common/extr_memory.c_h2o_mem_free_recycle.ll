; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_memory.c_h2o_mem_free_recycle.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_memory.c_h2o_mem_free_recycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, %struct.st_h2o_mem_recycle_chunk_t* }
%struct.st_h2o_mem_recycle_chunk_t = type { %struct.st_h2o_mem_recycle_chunk_t* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_mem_free_recycle(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.st_h2o_mem_recycle_chunk_t*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @free(i8* %14)
  br label %31

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.st_h2o_mem_recycle_chunk_t*
  store %struct.st_h2o_mem_recycle_chunk_t* %18, %struct.st_h2o_mem_recycle_chunk_t** %5, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load %struct.st_h2o_mem_recycle_chunk_t*, %struct.st_h2o_mem_recycle_chunk_t** %20, align 8
  %22 = load %struct.st_h2o_mem_recycle_chunk_t*, %struct.st_h2o_mem_recycle_chunk_t** %5, align 8
  %23 = getelementptr inbounds %struct.st_h2o_mem_recycle_chunk_t, %struct.st_h2o_mem_recycle_chunk_t* %22, i32 0, i32 0
  store %struct.st_h2o_mem_recycle_chunk_t* %21, %struct.st_h2o_mem_recycle_chunk_t** %23, align 8
  %24 = load %struct.st_h2o_mem_recycle_chunk_t*, %struct.st_h2o_mem_recycle_chunk_t** %5, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store %struct.st_h2o_mem_recycle_chunk_t* %24, %struct.st_h2o_mem_recycle_chunk_t** %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  br label %31

31:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommoncache.c_h2o_cache_delete.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommoncache.c_h2o_cache_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__ }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_cache_delete(%struct.TYPE_13__* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca i32, align 4
  %11 = bitcast %struct.TYPE_12__* %5 to i64*
  store i64 %2, i64* %11, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @h2o_cache_calchash(i32 %16, i32 %18)
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %14, %4
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %22 = bitcast %struct.TYPE_12__* %21 to i8*
  %23 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 4 %23, i64 8, i1 false)
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = call i32 @lock_cache(%struct.TYPE_13__* %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @purge(%struct.TYPE_13__* %28, i32 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kh_get(%struct.TYPE_13__* %31, i32 %34, %struct.TYPE_14__* %9)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @kh_end(i32 %38)
  %40 = icmp ne i32 %35, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %20
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @erase_ref(%struct.TYPE_13__* %42, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %41, %20
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = call i32 @unlock_cache(%struct.TYPE_13__* %46)
  ret void
}

declare dso_local i64 @h2o_cache_calchash(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lock_cache(%struct.TYPE_13__*) #1

declare dso_local i32 @purge(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @kh_get(%struct.TYPE_13__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @kh_end(i32) #1

declare dso_local i32 @erase_ref(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @unlock_cache(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

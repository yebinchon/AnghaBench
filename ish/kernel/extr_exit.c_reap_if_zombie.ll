; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_exit.c_reap_if_zombie.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_exit.c_reap_if_zombie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.task = type { %struct.TYPE_5__*, %struct.rusage_, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.rusage_, %struct.rusage_, i64 }
%struct.rusage_ = type { i32 }

@_EFAULT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task*, i64, i64)* @reap_if_zombie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reap_if_zombie(%struct.task* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rusage_, align 4
  %9 = alloca %struct.rusage_, align 4
  store %struct.task* %0, %struct.task** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.task*, %struct.task** %5, align 8
  %11 = getelementptr inbounds %struct.task, %struct.task* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %100

15:                                               ; preds = %3
  %16 = load %struct.task*, %struct.task** %5, align 8
  %17 = getelementptr inbounds %struct.task, %struct.task* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = call i32 @lock(i32* %19)
  %21 = load %struct.task*, %struct.task** %5, align 8
  %22 = getelementptr inbounds %struct.task, %struct.task* %21, i32 0, i32 1
  %23 = bitcast %struct.rusage_* %8 to i8*
  %24 = bitcast %struct.rusage_* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 8 %24, i64 4, i1 false)
  %25 = load %struct.task*, %struct.task** %5, align 8
  %26 = getelementptr inbounds %struct.task, %struct.task* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %15
  %32 = load %struct.task*, %struct.task** %5, align 8
  %33 = getelementptr inbounds %struct.task, %struct.task* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = bitcast %struct.rusage_* %8 to i8*
  %37 = bitcast %struct.rusage_* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  br label %38

38:                                               ; preds = %31, %15
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.rusage_, %struct.rusage_* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @user_put(i64 %42, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @_EFAULT, align 4
  store i32 %48, i32* %4, align 4
  br label %100

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %38
  %51 = load %struct.task*, %struct.task** %5, align 8
  %52 = getelementptr inbounds %struct.task, %struct.task* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = bitcast %struct.rusage_* %9 to i8*
  %56 = bitcast %struct.rusage_* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 8 %56, i64 4, i1 false)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i32 @lock(i32* %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = call i32 @rusage_add(i32* %65, %struct.rusage_* %9)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @unlock(i32* %70)
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %50
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds %struct.rusage_, %struct.rusage_* %9, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @user_put(i64 %75, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @_EFAULT, align 4
  store i32 %81, i32* %4, align 4
  br label %100

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %50
  %84 = load %struct.task*, %struct.task** %5, align 8
  %85 = getelementptr inbounds %struct.task, %struct.task* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = call i32 @unlock(i32* %87)
  %89 = load %struct.task*, %struct.task** %5, align 8
  %90 = getelementptr inbounds %struct.task, %struct.task* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = call i32 @cond_destroy(i32* %92)
  %94 = load %struct.task*, %struct.task** %5, align 8
  %95 = getelementptr inbounds %struct.task, %struct.task* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = call i32 @free(%struct.TYPE_5__* %96)
  %98 = load %struct.task*, %struct.task** %5, align 8
  %99 = call i32 @task_destroy(%struct.task* %98)
  store i32 1, i32* %4, align 4
  br label %100

100:                                              ; preds = %83, %80, %47, %14
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @user_put(i64, i32) #1

declare dso_local i32 @rusage_add(i32*, %struct.rusage_*) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @cond_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @task_destroy(%struct.task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

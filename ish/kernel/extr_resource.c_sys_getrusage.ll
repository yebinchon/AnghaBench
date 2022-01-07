; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_resource.c_sys_getrusage.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_resource.c_sys_getrusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.rusage_ }
%struct.rusage_ = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@_EINVAL = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_getrusage(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rusage_, align 4
  %7 = alloca %struct.rusage_, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %31 [
    i32 128, label %9
    i32 129, label %14
  ]

9:                                                ; preds = %2
  %10 = call i32 (...) @rusage_get_current()
  %11 = getelementptr inbounds %struct.rusage_, %struct.rusage_* %7, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = bitcast %struct.rusage_* %6 to i8*
  %13 = bitcast %struct.rusage_* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @lock(i32* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = bitcast %struct.rusage_* %6 to i8*
  %25 = bitcast %struct.rusage_* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @unlock(i32* %29)
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @_EINVAL, align 4
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %14, %9
  %34 = load i32, i32* %5, align 4
  %35 = getelementptr inbounds %struct.rusage_, %struct.rusage_* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @user_put(i32 %34, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @_EFAULT, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %39, %31
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @rusage_get_current(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i64 @user_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

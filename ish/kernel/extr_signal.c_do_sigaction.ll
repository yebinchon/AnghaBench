; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_signal.c_do_sigaction.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_signal.c_do_sigaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.sighand* }
%struct.sighand = type { i32, %struct.sigaction_* }
%struct.sigaction_ = type { i32 }

@NUM_SIGS = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sigaction_*, %struct.sigaction_*)* @do_sigaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sigaction(i32 %0, %struct.sigaction_* %1, %struct.sigaction_* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigaction_*, align 8
  %7 = alloca %struct.sigaction_*, align 8
  %8 = alloca %struct.sighand*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sigaction_* %1, %struct.sigaction_** %6, align 8
  store %struct.sigaction_* %2, %struct.sigaction_** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NUM_SIGS, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @_EINVAL, align 4
  store i32 %13, i32* %4, align 4
  br label %56

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @signal_is_blockable(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @_EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %56

20:                                               ; preds = %14
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.sighand*, %struct.sighand** %22, align 8
  store %struct.sighand* %23, %struct.sighand** %8, align 8
  %24 = load %struct.sighand*, %struct.sighand** %8, align 8
  %25 = getelementptr inbounds %struct.sighand, %struct.sighand* %24, i32 0, i32 0
  %26 = call i32 @lock(i32* %25)
  %27 = load %struct.sigaction_*, %struct.sigaction_** %7, align 8
  %28 = icmp ne %struct.sigaction_* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  %30 = load %struct.sigaction_*, %struct.sigaction_** %7, align 8
  %31 = load %struct.sighand*, %struct.sighand** %8, align 8
  %32 = getelementptr inbounds %struct.sighand, %struct.sighand* %31, i32 0, i32 1
  %33 = load %struct.sigaction_*, %struct.sigaction_** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sigaction_, %struct.sigaction_* %33, i64 %35
  %37 = bitcast %struct.sigaction_* %30 to i8*
  %38 = bitcast %struct.sigaction_* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  br label %39

39:                                               ; preds = %29, %20
  %40 = load %struct.sigaction_*, %struct.sigaction_** %6, align 8
  %41 = icmp ne %struct.sigaction_* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load %struct.sighand*, %struct.sighand** %8, align 8
  %44 = getelementptr inbounds %struct.sighand, %struct.sighand* %43, i32 0, i32 1
  %45 = load %struct.sigaction_*, %struct.sigaction_** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sigaction_, %struct.sigaction_* %45, i64 %47
  %49 = load %struct.sigaction_*, %struct.sigaction_** %6, align 8
  %50 = bitcast %struct.sigaction_* %48 to i8*
  %51 = bitcast %struct.sigaction_* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  br label %52

52:                                               ; preds = %42, %39
  %53 = load %struct.sighand*, %struct.sighand** %8, align 8
  %54 = getelementptr inbounds %struct.sighand, %struct.sighand* %53, i32 0, i32 0
  %55 = call i32 @unlock(i32* %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %18, %12
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @signal_is_blockable(i32) #1

declare dso_local i32 @lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

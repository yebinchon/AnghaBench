; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_hook.c_hook_remove.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_hook.c_hook_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_debug = common dso_local global i64 0, align 8
@hooks = common dso_local global i32* null, align 8
@HOOK_MAX = common dso_local global i64 0, align 8
@hooks_mu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hook_remove(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i64, i64* @config_debug, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %2
  %11 = load i32*, i32** @hooks, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = bitcast i32* %12 to i8*
  store i8* %13, i8** %5, align 8
  %14 = load i32*, i32** @hooks, align 8
  %15 = load i64, i64* @HOOK_MAX, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = bitcast i32* %16 to i8*
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ule i8* %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %10
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = urem i64 %31, 4
  %33 = icmp eq i64 %32, 0
  br label %34

34:                                               ; preds = %26, %22, %10
  %35 = phi i1 [ false, %22 ], [ false, %10 ], [ %33, %26 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  br label %38

38:                                               ; preds = %34, %2
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @malloc_mutex_lock(i32* %39, i32* @hooks_mu)
  %41 = load i8*, i8** %4, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = call i32 @hook_remove_locked(i32* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @tsd_global_slow_dec(i32* %44)
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @malloc_mutex_unlock(i32* %46, i32* @hooks_mu)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i32 @hook_remove_locked(i32*) #1

declare dso_local i32 @tsd_global_slow_dec(i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

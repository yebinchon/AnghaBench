; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_core.c_uv__loops_add.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_core.c_uv__loops_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uv__loops_lock = common dso_local global i32 0, align 4
@uv__loops_size = common dso_local global i64 0, align 8
@uv__loops_capacity = common dso_local global i64 0, align 8
@UV__LOOPS_CHUNK_SIZE = common dso_local global i64 0, align 8
@uv__loops = common dso_local global i32** null, align 8
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @uv__loops_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__loops_add(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = call i32 @uv_mutex_lock(i32* @uv__loops_lock)
  %8 = load i64, i64* @uv__loops_size, align 8
  %9 = load i64, i64* @uv__loops_capacity, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  %12 = load i64, i64* @uv__loops_capacity, align 8
  %13 = load i64, i64* @UV__LOOPS_CHUNK_SIZE, align 8
  %14 = add i64 %12, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i32**, i32*** @uv__loops, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32** @uv__realloc(i32** %16, i32 %20)
  store i32** %21, i32*** %4, align 8
  %22 = load i32**, i32*** %4, align 8
  %23 = icmp ne i32** %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %11
  br label %52

25:                                               ; preds = %11
  %26 = load i32**, i32*** %4, align 8
  store i32** %26, i32*** @uv__loops, align 8
  %27 = load i64, i64* @uv__loops_capacity, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %38, %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i32**, i32*** @uv__loops, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %29

41:                                               ; preds = %29
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  store i64 %43, i64* @uv__loops_capacity, align 8
  br label %44

44:                                               ; preds = %41, %1
  %45 = load i32*, i32** %3, align 8
  %46 = load i32**, i32*** @uv__loops, align 8
  %47 = load i64, i64* @uv__loops_size, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  store i32* %45, i32** %48, align 8
  %49 = load i64, i64* @uv__loops_size, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* @uv__loops_size, align 8
  %51 = call i32 @uv_mutex_unlock(i32* @uv__loops_lock)
  store i32 0, i32* %2, align 4
  br label %55

52:                                               ; preds = %24
  %53 = call i32 @uv_mutex_unlock(i32* @uv__loops_lock)
  %54 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %44
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @uv_mutex_lock(i32*) #1

declare dso_local i32** @uv__realloc(i32**, i32) #1

declare dso_local i32 @uv_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

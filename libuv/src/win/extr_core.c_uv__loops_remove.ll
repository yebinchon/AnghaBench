; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_core.c_uv__loops_remove.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_core.c_uv__loops_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uv__loops_lock = common dso_local global i32 0, align 4
@uv__loops_size = common dso_local global i32 0, align 4
@uv__loops = common dso_local global i32** null, align 8
@uv__loops_capacity = common dso_local global i32 0, align 4
@UV__LOOPS_CHUNK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @uv__loops_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv__loops_remove(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  store i32* %0, i32** %2, align 8
  %6 = call i32 @uv_mutex_lock(i32* @uv__loops_lock)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %21, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @uv__loops_size, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = load i32**, i32*** @uv__loops, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = icmp eq i32* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %24

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %7

24:                                               ; preds = %19, %7
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @uv__loops_size, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %78

29:                                               ; preds = %24
  %30 = load i32**, i32*** @uv__loops, align 8
  %31 = load i32, i32* @uv__loops_size, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %30, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = load i32**, i32*** @uv__loops, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  store i32* %35, i32** %39, align 8
  %40 = load i32**, i32*** @uv__loops, align 8
  %41 = load i32, i32* @uv__loops_size, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %40, i64 %43
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* @uv__loops_size, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* @uv__loops_size, align 4
  %47 = load i32, i32* @uv__loops_size, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %29
  store i32 0, i32* @uv__loops_capacity, align 4
  %50 = load i32**, i32*** @uv__loops, align 8
  %51 = call i32 @uv__free(i32** %50)
  store i32** null, i32*** @uv__loops, align 8
  br label %78

52:                                               ; preds = %29
  %53 = load i32, i32* @uv__loops_capacity, align 4
  %54 = load i32, i32* @UV__LOOPS_CHUNK_SIZE, align 4
  %55 = mul nsw i32 4, %54
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %78

58:                                               ; preds = %52
  %59 = load i32, i32* @uv__loops_capacity, align 4
  %60 = sdiv i32 %59, 2
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @uv__loops_size, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %78

65:                                               ; preds = %58
  %66 = load i32**, i32*** @uv__loops, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 8, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32** @uv__realloc(i32** %66, i32 %70)
  store i32** %71, i32*** %5, align 8
  %72 = load i32**, i32*** %5, align 8
  %73 = icmp ne i32** %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %65
  br label %78

75:                                               ; preds = %65
  %76 = load i32**, i32*** %5, align 8
  store i32** %76, i32*** @uv__loops, align 8
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* @uv__loops_capacity, align 4
  br label %78

78:                                               ; preds = %75, %74, %64, %57, %49, %28
  %79 = call i32 @uv_mutex_unlock(i32* @uv__loops_lock)
  ret void
}

declare dso_local i32 @uv_mutex_lock(i32*) #1

declare dso_local i32 @uv__free(i32**) #1

declare dso_local i32** @uv__realloc(i32**, i32) #1

declare dso_local i32 @uv_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_thread.c_uv_thread_create_ex.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_thread.c_uv_thread_create_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%union.anon = type { void (i8*)* }

@UV_THREAD_HAS_STACK_SIZE = common dso_local global i32 0, align 4
@PTHREAD_STACK_MIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_thread_create_ex(i32* %0, %struct.TYPE_3__* %1, void (i8*)* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca void (i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %union.anon, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store void (i8*)* %2, void (i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @UV_THREAD_HAS_STACK_SIZE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  br label %26

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i64 [ %24, %21 ], [ 0, %25 ]
  store i64 %27, i64* %13, align 8
  store i32* null, i32** %10, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i64 (...) @thread_stack_size()
  store i64 %31, i64* %13, align 8
  br label %42

32:                                               ; preds = %26
  %33 = call i64 (...) @getpagesize()
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %12, align 8
  %36 = add i64 %34, %35
  %37 = sub i64 %36, 1
  %38 = load i64, i64* %12, align 8
  %39 = sub i64 %38, 1
  %40 = xor i64 %39, -1
  %41 = and i64 %37, %40
  store i64 %41, i64* %13, align 8
  br label %42

42:                                               ; preds = %32, %30
  %43 = load i64, i64* %13, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  store i32* %11, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i64 @pthread_attr_init(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 (...) @abort() #3
  unreachable

51:                                               ; preds = %45
  %52 = load i32*, i32** %10, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call i64 @pthread_attr_setstacksize(i32* %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 (...) @abort() #3
  unreachable

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %42
  %60 = load void (i8*)*, void (i8*)** %7, align 8
  %61 = bitcast %union.anon* %14 to void (i8*)**
  store void (i8*)* %60, void (i8*)** %61, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = bitcast %union.anon* %14 to i8* (i8*)**
  %65 = load i8* (i8*)*, i8* (i8*)** %64, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @pthread_create(i32* %62, i32* %63, i8* (i8*)* %65, i8* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @pthread_attr_destroy(i32* %71)
  br label %73

73:                                               ; preds = %70, %59
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @UV__ERR(i32 %74)
  ret i32 %75
}

declare dso_local i64 @thread_stack_size(...) #1

declare dso_local i64 @getpagesize(...) #1

declare dso_local i64 @pthread_attr_init(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @pthread_attr_setstacksize(i32*, i64) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i8* (i8*)*, i8*) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

declare dso_local i32 @UV__ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}

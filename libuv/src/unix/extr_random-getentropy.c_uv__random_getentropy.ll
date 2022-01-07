; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_random-getentropy.c_uv__random_getentropy.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_random-getentropy.c_uv__random_getentropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@once = common dso_local global i32 0, align 4
@uv__random_getentropy_init = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@UV_ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__random_getentropy(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @uv__random_getentropy_init, align 4
  %9 = call i32 @uv_once(i32* @once, i32 %8)
  store i64 0, i64* %6, align 8
  store i64 256, i64* %7, align 8
  br label %10

10:                                               ; preds = %27, %2
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = add i64 %11, %12
  %14 = load i64, i64* %5, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @uv__getentropy(i8* %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @UV__ERR(i32 %24)
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %6, align 8
  br label %10

31:                                               ; preds = %10
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %35, %36
  %38 = call i64 @uv__getentropy(i8* %34, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @UV__ERR(i32 %41)
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %40, %23
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @uv_once(i32*, i32) #1

declare dso_local i64 @uv__getentropy(i8*, i64) #1

declare dso_local i32 @UV__ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

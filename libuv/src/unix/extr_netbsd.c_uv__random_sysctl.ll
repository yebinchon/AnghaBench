; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_netbsd.c_uv__random_sysctl.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_netbsd.c_uv__random_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uv__random_sysctl.name = internal global [2 x i32] [i32 129, i32 128], align 4
@errno = common dso_local global i32 0, align 4
@UV_EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__random_sysctl(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %8, align 8
  br label %10

10:                                               ; preds = %35, %2
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %10
  %14 = load i64, i64* %5, align 8
  %15 = icmp ult i64 %14, 32
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  br label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i64 [ %17, %16 ], [ 32, %18 ]
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %6, align 8
  %22 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @uv__random_sysctl.name, i64 0, i64 0))
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @sysctl(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @uv__random_sysctl.name, i64 0, i64 0), i32 %22, i8* %23, i64* %6, i32* null, i32 0)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @UV__ERR(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %19
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @UV_EIO, align 4
  store i32 %34, i32* %3, align 4
  br label %43

35:                                               ; preds = %29
  %36 = load i64, i64* %6, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %38, i8** %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %5, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %5, align 8
  br label %10

42:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %33, %26
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @UV__ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv__getsockpeername.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv__getsockpeername.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type opaque
%struct.sockaddr.0 = type { i32 }

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__getsockpeername(i32* %0, i64 (i32, %struct.sockaddr*, i64*)* %1, %struct.sockaddr.0* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64 (i32, %struct.sockaddr*, i64*)*, align 8
  %8 = alloca %struct.sockaddr.0*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 (i32, %struct.sockaddr*, i64*)* %1, i64 (i32, %struct.sockaddr*, i64*)** %7, align 8
  store %struct.sockaddr.0* %2, %struct.sockaddr.0** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @uv_fileno(i32* %13, i32* %11)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %5, align 4
  br label %36

19:                                               ; preds = %4
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %10, align 8
  %23 = load i64 (i32, %struct.sockaddr*, i64*)*, i64 (i32, %struct.sockaddr*, i64*)** %7, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.sockaddr.0*, %struct.sockaddr.0** %8, align 8
  %26 = bitcast %struct.sockaddr.0* %25 to %struct.sockaddr*
  %27 = call i64 %23(i32 %24, %struct.sockaddr* %26, i64* %10)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @UV__ERR(i32 %30)
  store i32 %31, i32* %5, align 4
  br label %36

32:                                               ; preds = %19
  %33 = load i64, i64* %10, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %29, %17
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @uv_fileno(i32*, i32*) #1

declare dso_local i32 @UV__ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

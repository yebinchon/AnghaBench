; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_socket.c_on_async_resumption_new.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_socket.c_on_async_resumption_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @on_async_resumption_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_async_resumption_new(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @SSL_get_rbio(i32* %10)
  %12 = call i32* @BIO_get_data(i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @i2d_SSL_SESSION(i32* %13, i8** null)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @alloca(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %9, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @i2d_SSL_SESSION(i32* %23, i8** %9)
  %25 = load i32*, i32** %4, align 8
  %26 = call i8* @SSL_SESSION_get_id(i32* %25, i32* %8)
  store i8* %26, i8** %7, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @h2o_iovec_init(i8* %28, i32 %29)
  %31 = bitcast %struct.TYPE_3__* %6 to { i64, i32 }*
  %32 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %31, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @resumption_new(i32* %27, i32 %30, i64 %33, i32 %35)
  ret i32 0
}

declare dso_local i32* @BIO_get_data(i32) #1

declare dso_local i32 @SSL_get_rbio(i32*) #1

declare dso_local i32 @i2d_SSL_SESSION(i32*, i8**) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i8* @SSL_SESSION_get_id(i32*, i32*) #1

declare dso_local i32 @resumption_new(i32*, i32, i64, i32) #1

declare dso_local i32 @h2o_iovec_init(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

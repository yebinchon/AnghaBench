; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_bio_bufferevent_ctrl.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_bio_bufferevent_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i64, i8*)* @bio_bufferevent_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bio_bufferevent_ctrl(i32* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bufferevent*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call %struct.bufferevent* @BIO_get_data(i32* %11)
  store %struct.bufferevent* %12, %struct.bufferevent** %9, align 8
  store i64 1, i64* %10, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %37 [
    i32 131, label %14
    i32 129, label %17
    i32 130, label %22
    i32 128, label %29
    i32 133, label %36
    i32 132, label %36
  ]

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @BIO_get_shutdown(i32* %15)
  store i64 %16, i64* %10, align 8
  br label %38

17:                                               ; preds = %4
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* %7, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @BIO_set_shutdown(i32* %18, i32 %20)
  br label %38

22:                                               ; preds = %4
  %23 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %24 = call i32 @bufferevent_get_input(%struct.bufferevent* %23)
  %25 = call i32 @evbuffer_get_length(i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %10, align 8
  br label %38

29:                                               ; preds = %4
  %30 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %31 = call i32 @bufferevent_get_output(%struct.bufferevent* %30)
  %32 = call i32 @evbuffer_get_length(i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %10, align 8
  br label %38

36:                                               ; preds = %4, %4
  store i64 1, i64* %10, align 8
  br label %38

37:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %38

38:                                               ; preds = %37, %36, %29, %22, %17, %14
  %39 = load i64, i64* %10, align 8
  ret i64 %39
}

declare dso_local %struct.bufferevent* @BIO_get_data(i32*) #1

declare dso_local i64 @BIO_get_shutdown(i32*) #1

declare dso_local i32 @BIO_set_shutdown(i32*, i32) #1

declare dso_local i32 @evbuffer_get_length(i32) #1

declare dso_local i32 @bufferevent_get_input(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_get_output(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

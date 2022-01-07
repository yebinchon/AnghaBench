; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_bufferevent_openssl_filter_new.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_bufferevent_openssl_filter_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.bufferevent = type { i32 }

@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bufferevent* @bufferevent_openssl_filter_new(%struct.event_base* %0, %struct.bufferevent* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca %struct.event_base*, align 8
  %8 = alloca %struct.bufferevent*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.bufferevent*, align 8
  store %struct.event_base* %0, %struct.event_base** %7, align 8
  store %struct.bufferevent* %1, %struct.bufferevent** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %15 = icmp ne %struct.bufferevent* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  br label %34

17:                                               ; preds = %5
  %18 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %19 = call i32* @BIO_new_bufferevent(%struct.bufferevent* %18)
  store i32* %19, i32** %12, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %34

22:                                               ; preds = %17
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 @SSL_set_bio(i32* %23, i32* %24, i32* %25)
  %27 = load %struct.event_base*, %struct.event_base** %7, align 8
  %28 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call %struct.bufferevent* @bufferevent_openssl_new_impl(%struct.event_base* %27, %struct.bufferevent* %28, i32 -1, i32* %29, i32 %30, i32 %31)
  store %struct.bufferevent* %32, %struct.bufferevent** %13, align 8
  %33 = load %struct.bufferevent*, %struct.bufferevent** %13, align 8
  store %struct.bufferevent* %33, %struct.bufferevent** %6, align 8
  br label %43

34:                                               ; preds = %21, %16
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @SSL_free(i32* %40)
  br label %42

42:                                               ; preds = %39, %34
  store %struct.bufferevent* null, %struct.bufferevent** %6, align 8
  br label %43

43:                                               ; preds = %42, %22
  %44 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  ret %struct.bufferevent* %44
}

declare dso_local i32* @BIO_new_bufferevent(%struct.bufferevent*) #1

declare dso_local i32 @SSL_set_bio(i32*, i32*, i32*) #1

declare dso_local %struct.bufferevent* @bufferevent_openssl_new_impl(%struct.event_base*, %struct.bufferevent*, i32, i32*, i32, i32) #1

declare dso_local i32 @SSL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

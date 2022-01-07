; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_bio_bufferevent_read.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_bio_bufferevent_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @bio_bufferevent_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_bufferevent_read(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.evbuffer*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @BIO_clear_retry_flags(i32* %10)
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %37

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @BIO_get_data(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %37

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @BIO_get_data(i32* %21)
  %23 = call %struct.evbuffer* @bufferevent_get_input(i32 %22)
  store %struct.evbuffer* %23, %struct.evbuffer** %9, align 8
  %24 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %25 = call i64 @evbuffer_get_length(%struct.evbuffer* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @BIO_set_retry_read(i32* %28)
  store i32 -1, i32* %4, align 4
  br label %37

30:                                               ; preds = %20
  %31 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @evbuffer_remove(%struct.evbuffer* %31, i8* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %27, %19, %14
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @BIO_get_data(i32*) #1

declare dso_local %struct.evbuffer* @bufferevent_get_input(i32) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @BIO_set_retry_read(i32*) #1

declare dso_local i32 @evbuffer_remove(%struct.evbuffer*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

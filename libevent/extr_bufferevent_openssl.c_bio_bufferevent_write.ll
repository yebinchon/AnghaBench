; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_bio_bufferevent_write.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_bio_bufferevent_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.evbuffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @bio_bufferevent_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_bufferevent_write(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bufferevent*, align 8
  %9 = alloca %struct.evbuffer*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call %struct.bufferevent* @BIO_get_data(i32* %11)
  store %struct.bufferevent* %12, %struct.bufferevent** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @BIO_clear_retry_flags(i32* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call %struct.bufferevent* @BIO_get_data(i32* %15)
  %17 = icmp ne %struct.bufferevent* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %67

19:                                               ; preds = %3
  %20 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %21 = call %struct.evbuffer* @bufferevent_get_output(%struct.bufferevent* %20)
  store %struct.evbuffer* %21, %struct.evbuffer** %9, align 8
  %22 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %23 = call i64 @evbuffer_get_length(%struct.evbuffer* %22)
  store i64 %23, i64* %10, align 8
  %24 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %25 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %19
  %30 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %31 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %34, %36
  %38 = icmp ule i64 %33, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %29
  %40 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %41 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp ule i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @BIO_set_retry_write(i32* %47)
  store i32 -1, i32* %4, align 4
  br label %67

49:                                               ; preds = %39
  %50 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %51 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %49, %29, %19
  %58 = load i32, i32* %7, align 4
  %59 = icmp sgt i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @EVUTIL_ASSERT(i32 %60)
  %62 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @evbuffer_add(%struct.evbuffer* %62, i8* %63, i32 %64)
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %57, %46, %18
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.bufferevent* @BIO_get_data(i32*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local %struct.evbuffer* @bufferevent_get_output(%struct.bufferevent*) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @BIO_set_retry_write(i32*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

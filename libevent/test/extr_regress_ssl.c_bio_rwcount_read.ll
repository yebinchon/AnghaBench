; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_ssl.c_bio_rwcount_read.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_ssl.c_bio_rwcount_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rwcount = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @bio_rwcount_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_rwcount_read(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rwcount*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.rwcount* @BIO_get_data(i32* %9)
  store %struct.rwcount* %10, %struct.rwcount** %7, align 8
  %11 = load %struct.rwcount*, %struct.rwcount** %7, align 8
  %12 = getelementptr inbounds %struct.rwcount, %struct.rwcount* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @recv(i32 %13, i8* %14, i32 %15, i32 0)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.rwcount*, %struct.rwcount** %7, align 8
  %18 = getelementptr inbounds %struct.rwcount, %struct.rwcount* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = call i32 (...) @EVUTIL_SOCKET_ERROR()
  %25 = call i64 @EVUTIL_ERR_RW_RETRIABLE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @BIO_set_retry_read(i32* %28)
  br label %30

30:                                               ; preds = %27, %23, %3
  %31 = load i32, i32* %8, align 4
  ret i32 %31
}

declare dso_local %struct.rwcount* @BIO_get_data(i32*) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i64 @EVUTIL_ERR_RW_RETRIABLE(i32) #1

declare dso_local i32 @EVUTIL_SOCKET_ERROR(...) #1

declare dso_local i32 @BIO_set_retry_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

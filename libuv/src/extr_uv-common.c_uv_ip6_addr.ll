; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_uv-common.c_uv_ip6_addr.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_uv-common.c_uv_ip6_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i32, i32, i32, i32 }

@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_ip6_addr(i8* %0, i32 %1, %struct.sockaddr_in6* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca [40 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sockaddr_in6* %2, %struct.sockaddr_in6** %6, align 8
  %10 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %11 = call i32 @memset(%struct.sockaddr_in6* %10, i32 0, i32 20)
  %12 = load i32, i32* @AF_INET6, align 4
  %13 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %14 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @htons(i32 %15)
  %17 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 37)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %46

23:                                               ; preds = %3
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp uge i64 %29, 40
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i64 39, i64* %8, align 8
  br label %32

32:                                               ; preds = %31, %23
  %33 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @memcpy(i8* %33, i8* %34, i64 %35)
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 %37
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  store i8* %39, i8** %4, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @if_nametoindex(i8* %42)
  %44 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %32, %3
  %47 = load i32, i32* @AF_INET6, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %49, i32 0, i32 1
  %51 = call i32 @uv_inet_pton(i32 %47, i8* %48, i32* %50)
  ret i32 %51
}

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @if_nametoindex(i8*) #1

declare dso_local i32 @uv_inet_pton(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

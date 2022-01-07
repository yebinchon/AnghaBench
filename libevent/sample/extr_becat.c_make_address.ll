; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_becat.c_make_address.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_becat.c_make_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.evutil_addrinfo = type { i32, i32, i32, i32, i32 }

@NI_MAXSERV = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@EVUTIL_AI_PASSIVE = common dso_local global i32 0, align 4
@EVUTIL_AI_ADDRCONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sockaddr_storage*, i8*, i32)* @make_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @make_address(%struct.sockaddr_storage* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.evutil_addrinfo*, align 8
  %9 = alloca %struct.evutil_addrinfo, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %8, align 8
  %15 = load i32, i32* @NI_MAXSERV, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %19 = call i32 @memset(%struct.evutil_addrinfo* %9, i32 0, i32 20)
  %20 = load i32, i32* @AF_UNSPEC, align 4
  %21 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %9, i32 0, i32 4
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @SOCK_STREAM, align 4
  %23 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %9, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @EVUTIL_AI_PASSIVE, align 4
  %25 = load i32, i32* @EVUTIL_AI_ADDRCONFIG, align 4
  %26 = or i32 %24, %25
  %27 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %9, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = trunc i64 %16 to i32
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @evutil_snprintf(i8* %18, i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @evutil_getaddrinfo(i8* %31, i8* %18, %struct.evutil_addrinfo* %9, %struct.evutil_addrinfo** %8)
  store i32 %32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  store i32 1, i32* %14, align 4
  br label %64

35:                                               ; preds = %3
  %36 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %8, align 8
  %37 = icmp ne %struct.evutil_addrinfo* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i64 0, i64* %4, align 8
  store i32 1, i32* %14, align 4
  br label %64

39:                                               ; preds = %35
  %40 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %8, align 8
  %41 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ugt i64 %43, 4
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %8, align 8
  %47 = call i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo* %46)
  store i64 0, i64* %4, align 8
  store i32 1, i32* %14, align 4
  br label %64

48:                                               ; preds = %39
  %49 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %50 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %8, align 8
  %51 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %8, align 8
  %54 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memcpy(%struct.sockaddr_storage* %49, i32 %52, i32 %55)
  %57 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %8, align 8
  %58 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %13, align 8
  %61 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %8, align 8
  %62 = call i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo* %61)
  %63 = load i64, i64* %13, align 8
  store i64 %63, i64* %4, align 8
  store i32 1, i32* %14, align 4
  br label %64

64:                                               ; preds = %48, %45, %38, %34
  %65 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i64, i64* %4, align 8
  ret i64 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.evutil_addrinfo*, i32, i32) #2

declare dso_local i32 @evutil_snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @evutil_getaddrinfo(i8*, i8*, %struct.evutil_addrinfo*, %struct.evutil_addrinfo**) #2

declare dso_local i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo*) #2

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

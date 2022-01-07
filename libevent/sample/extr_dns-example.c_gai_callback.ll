; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_dns-example.c_gai_callback.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_dns-example.c_gai_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evutil_addrinfo = type { i8*, i64, i64, %struct.evutil_addrinfo* }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"    %s ==> %s\0A\00", align 1
@PF_INET = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"[%d] %s: %s\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.evutil_addrinfo*, i8*)* @gai_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gai_callback(i32 %0, %struct.evutil_addrinfo* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evutil_addrinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.evutil_addrinfo*, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.sockaddr_in6*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.evutil_addrinfo* %1, %struct.evutil_addrinfo** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %7, align 8
  %14 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  store %struct.evutil_addrinfo* %14, %struct.evutil_addrinfo** %9, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i8* @evutil_gai_strerror(i32 %19)
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %20)
  br label %22

22:                                               ; preds = %17, %3
  %23 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %24 = icmp ne %struct.evutil_addrinfo* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %27 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %33 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %34)
  br label %36

36:                                               ; preds = %30, %25, %22
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %75, %36
  %38 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %39 = icmp ne %struct.evutil_addrinfo* %38, null
  br i1 %39, label %40, label %81

40:                                               ; preds = %37
  %41 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %42 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PF_INET, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %48 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %50, %struct.sockaddr_in** %11, align 8
  %51 = load i32, i32* @AF_INET, align 4
  %52 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %52, i32 0, i32 0
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %55 = call i32 @evutil_inet_ntop(i32 %51, i32* %53, i8* %54, i32 128)
  %56 = load i32, i32* %8, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %56, i8* %57, i8* %58)
  br label %74

60:                                               ; preds = %40
  %61 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %62 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %64, %struct.sockaddr_in6** %12, align 8
  %65 = load i32, i32* @AF_INET6, align 4
  %66 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %67 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %66, i32 0, i32 0
  %68 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %69 = call i32 @evutil_inet_ntop(i32 %65, i32* %67, i8* %68, i32 128)
  %70 = load i32, i32* %8, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %70, i8* %71, i8* %72)
  br label %74

74:                                               ; preds = %60, %46
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %77 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %76, i32 0, i32 3
  %78 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %77, align 8
  store %struct.evutil_addrinfo* %78, %struct.evutil_addrinfo** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %37

81:                                               ; preds = %37
  %82 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %83 = icmp ne %struct.evutil_addrinfo* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %86 = call i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo* %85)
  br label %87

87:                                               ; preds = %84, %81
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @evutil_gai_strerror(i32) #1

declare dso_local i32 @evutil_inet_ntop(i32, i32*, i8*, i32) #1

declare dso_local i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

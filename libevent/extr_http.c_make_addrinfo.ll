; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_make_addrinfo.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_make_addrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evutil_addrinfo = type { i32, i32, i32 }

@NI_MAXSERV = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@EVUTIL_AI_PASSIVE = common dso_local global i32 0, align 4
@EVUTIL_AI_ADDRCONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EVUTIL_EAI_SYSTEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"getaddrinfo\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"getaddrinfo: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.evutil_addrinfo* (i8*, i32)* @make_addrinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.evutil_addrinfo* @make_addrinfo(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.evutil_addrinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.evutil_addrinfo*, align 8
  %7 = alloca %struct.evutil_addrinfo, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %6, align 8
  %12 = load i32, i32* @NI_MAXSERV, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = call i32 @memset(%struct.evutil_addrinfo* %7, i32 0, i32 12)
  %17 = load i32, i32* @AF_UNSPEC, align 4
  %18 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %7, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @SOCK_STREAM, align 4
  %20 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %7, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @EVUTIL_AI_PASSIVE, align 4
  %22 = load i32, i32* @EVUTIL_AI_ADDRCONFIG, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %7, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = trunc i64 %13 to i32
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @evutil_snprintf(i8* %15, i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @evutil_getaddrinfo(i8* %28, i8* %15, %struct.evutil_addrinfo* %7, %struct.evutil_addrinfo** %6)
  store i32 %29, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %2
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @EVUTIL_EAI_SYSTEM, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @event_warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %41

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @evutil_gai_strerror(i32 %38)
  %40 = call i32 @event_warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %35
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %3, align 8
  store i32 1, i32* %11, align 4
  br label %44

42:                                               ; preds = %2
  %43 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %6, align 8
  store %struct.evutil_addrinfo* %43, %struct.evutil_addrinfo** %3, align 8
  store i32 1, i32* %11, align 4
  br label %44

44:                                               ; preds = %42, %41
  %45 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %3, align 8
  ret %struct.evutil_addrinfo* %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.evutil_addrinfo*, i32, i32) #2

declare dso_local i32 @evutil_snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @evutil_getaddrinfo(i8*, i8*, %struct.evutil_addrinfo*, %struct.evutil_addrinfo**) #2

declare dso_local i32 @event_warn(i8*) #2

declare dso_local i32 @event_warnx(i8*, i32) #2

declare dso_local i32 @evutil_gai_strerror(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

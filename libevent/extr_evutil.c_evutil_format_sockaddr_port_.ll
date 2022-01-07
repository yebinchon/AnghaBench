; ModuleID = '/home/carl/AnghaBench/libevent/extr_evutil.c_evutil_format_sockaddr_port_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evutil.c_evutil_format_sockaddr_port_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"[%s]:%d\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"<addr with socktype %d>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @evutil_format_sockaddr_port_(%struct.sockaddr* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %9, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %14 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AF_INET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %3
  %19 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %20, %struct.sockaddr_in** %11, align 8
  %21 = load i64, i64* @AF_INET, align 8
  %22 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 1
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %25 = call i8* @evutil_inet_ntop(i64 %21, i32* %23, i8* %24, i32 128)
  store i8* %25, i8** %9, align 8
  %26 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ntohs(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %18
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (i8*, i64, i8*, ...) @evutil_snprintf(i8* %33, i64 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %36)
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %4, align 8
  br label %78

39:                                               ; preds = %18
  br label %69

40:                                               ; preds = %3
  %41 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %42 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AF_INET6, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %40
  %47 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %48 = bitcast %struct.sockaddr* %47 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %48, %struct.sockaddr_in6** %12, align 8
  %49 = load i64, i64* @AF_INET6, align 8
  %50 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %50, i32 0, i32 1
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %53 = call i8* @evutil_inet_ntop(i64 %49, i32* %51, i8* %52, i32 128)
  store i8* %53, i8** %9, align 8
  %54 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %55 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ntohs(i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %46
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %64 = load i32, i32* %10, align 4
  %65 = call i32 (i8*, i64, i8*, ...) @evutil_snprintf(i8* %61, i64 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %63, i32 %64)
  %66 = load i8*, i8** %6, align 8
  store i8* %66, i8** %4, align 8
  br label %78

67:                                               ; preds = %46
  br label %68

68:                                               ; preds = %67, %40
  br label %69

69:                                               ; preds = %68, %39
  %70 = load i8*, i8** %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %73 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 (i8*, i64, i8*, ...) @evutil_snprintf(i8* %70, i64 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i8*, i8** %6, align 8
  store i8* %77, i8** %4, align 8
  br label %78

78:                                               ; preds = %69, %60, %32
  %79 = load i8*, i8** %4, align 8
  ret i8* %79
}

declare dso_local i8* @evutil_inet_ntop(i64, i32*, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @evutil_snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

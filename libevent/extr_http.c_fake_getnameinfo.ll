; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_fake_getnameinfo.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_fake_getnameinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.hostent = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, i64, i8*, i64, i8*, i64, i32)* @fake_getnameinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fake_getnameinfo(%struct.sockaddr* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_in*, align 8
  %17 = alloca [16 x i8], align 16
  %18 = alloca %struct.hostent*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %20, %struct.sockaddr_in** %16, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %7
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %25 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ntohs(i32 %27)
  %29 = call i32 @evutil_snprintf(i8* %24, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i8*, i8** %13, align 8
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %32 = load i64, i64* %14, align 8
  %33 = call i64 @strlcpy(i8* %30, i8* %31, i64 %32)
  %34 = load i64, i64* %14, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  store i32 -1, i32* %8, align 4
  br label %79

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %7
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %78

41:                                               ; preds = %38
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @NI_NUMERICHOST, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @inet_ntoa(i32 %50)
  %52 = load i64, i64* %12, align 8
  %53 = call i64 @strlcpy(i8* %47, i8* %51, i64 %52)
  %54 = load i64, i64* %12, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 -1, i32* %8, align 4
  br label %79

57:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %79

58:                                               ; preds = %41
  %59 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %59, i32 0, i32 0
  %61 = bitcast i32* %60 to i8*
  %62 = load i32, i32* @AF_INET, align 4
  %63 = call %struct.hostent* @gethostbyaddr(i8* %61, i32 4, i32 %62)
  store %struct.hostent* %63, %struct.hostent** %18, align 8
  %64 = load %struct.hostent*, %struct.hostent** %18, align 8
  %65 = icmp eq %struct.hostent* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 -2, i32* %8, align 4
  br label %79

67:                                               ; preds = %58
  %68 = load i8*, i8** %11, align 8
  %69 = load %struct.hostent*, %struct.hostent** %18, align 8
  %70 = getelementptr inbounds %struct.hostent, %struct.hostent* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i64 @strlcpy(i8* %68, i8* %71, i64 %72)
  %74 = load i64, i64* %12, align 8
  %75 = icmp uge i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store i32 -1, i32* %8, align 4
  br label %79

77:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %79

78:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %77, %76, %66, %57, %56, %36
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local i32 @evutil_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

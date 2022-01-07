; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_util.h_resolve_address.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_util.h_resolve_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, i32 }

@AI_ADDRCONFIG = common dso_local global i32 0, align 4
@AI_NUMERICSERV = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to resolve address:%s:%s:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"getaddrinfo returned NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, i32*, i8*, i8*, i32, i32, i32)* @resolve_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_address(%struct.sockaddr* %0, i32* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.addrinfo, align 4
  %17 = alloca %struct.addrinfo*, align 8
  %18 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = call i32 @memset(%struct.addrinfo* %16, i32 0, i32 24)
  %20 = load i32, i32* %13, align 4
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %14, align 4
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %15, align 4
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @AI_ADDRCONFIG, align 4
  %27 = load i32, i32* @AI_NUMERICSERV, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @AI_PASSIVE, align 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @getaddrinfo(i8* %32, i8* %33, %struct.addrinfo* %16, %struct.addrinfo** %17)
  store i32 %34, i32* %18, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %7
  %37 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %38 = icmp eq %struct.addrinfo* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %36, %7
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* %18, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %18, align 4
  %47 = call i8* @gai_strerror(i32 %46)
  br label %49

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi i8* [ %47, %45 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %48 ]
  %51 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %42, i8* %50)
  store i32 -1, i32* %8, align 4
  br label %67

52:                                               ; preds = %36
  %53 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %54 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %55 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memcpy(%struct.sockaddr* %53, i32 %56, i32 %59)
  %61 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %62 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %10, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %66 = call i32 @freeaddrinfo(%struct.addrinfo* %65)
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %52, %49
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

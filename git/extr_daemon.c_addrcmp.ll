; ModuleID = '/home/carl/AnghaBench/git/extr_daemon.c_addrcmp.c'
source_filename = "/home/carl/AnghaBench/git/extr_daemon.c_addrcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_storage*, %struct.sockaddr_storage*)* @addrcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrcmp(%struct.sockaddr_storage* %0, %struct.sockaddr_storage* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %4, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %5, align 8
  %8 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %9 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  store %struct.sockaddr* %9, %struct.sockaddr** %6, align 8
  %10 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %11 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr*
  store %struct.sockaddr* %11, %struct.sockaddr** %7, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %16 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %24 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %57

28:                                               ; preds = %2
  %29 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AF_INET, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %36 = bitcast %struct.sockaddr_storage* %35 to %struct.sockaddr_in*
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 0
  %38 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %39 = bitcast %struct.sockaddr_storage* %38 to %struct.sockaddr_in*
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %39, i32 0, i32 0
  %41 = call i32 @memcmp(i32* %37, i32* %40, i32 4)
  store i32 %41, i32* %3, align 4
  br label %57

42:                                               ; preds = %28
  %43 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %44 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AF_INET6, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %50 = bitcast %struct.sockaddr_storage* %49 to %struct.sockaddr_in6*
  %51 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %50, i32 0, i32 0
  %52 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %53 = bitcast %struct.sockaddr_storage* %52 to %struct.sockaddr_in6*
  %54 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %53, i32 0, i32 0
  %55 = call i32 @memcmp(i32* %51, i32* %54, i32 4)
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %48, %34, %19
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

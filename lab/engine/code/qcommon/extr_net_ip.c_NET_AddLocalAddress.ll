; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_AddLocalAddress.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_AddLocalAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }
%struct.sockaddr = type { i64 }

@numIP = common dso_local global i64 0, align 8
@MAX_IPS = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@NA_IP = common dso_local global i32 0, align 4
@localIP = common dso_local global %struct.TYPE_2__* null, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@NA_IP6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sockaddr*, %struct.sockaddr*)* @NET_AddLocalAddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NET_AddLocalAddress(i8* %0, %struct.sockaddr* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %6, align 8
  %9 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %10 = icmp ne %struct.sockaddr* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = icmp ne %struct.sockaddr* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %11, %3
  br label %76

18:                                               ; preds = %14
  %19 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %20 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* @numIP, align 8
  %23 = load i64, i64* @MAX_IPS, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %76

25:                                               ; preds = %18
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @AF_INET, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  store i32 4, i32* %7, align 4
  %30 = load i32, i32* @NA_IP, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @localIP, align 8
  %32 = load i64, i64* @numIP, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  store i32 %30, i32* %34, align 4
  br label %47

35:                                               ; preds = %25
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @AF_INET6, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  store i32 4, i32* %7, align 4
  %40 = load i32, i32* @NA_IP6, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @localIP, align 8
  %42 = load i64, i64* @numIP, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  store i32 %40, i32* %44, align 4
  br label %46

45:                                               ; preds = %35
  br label %76

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %29
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @localIP, align 8
  %49 = load i64, i64* @numIP, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @Q_strncpyz(i32 %52, i8* %53, i32 4)
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @localIP, align 8
  %57 = load i64, i64* @numIP, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i64 %55, i64* %59, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @localIP, align 8
  %61 = load i64, i64* @numIP, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @memcpy(i32* %63, %struct.sockaddr* %64, i32 %65)
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @localIP, align 8
  %68 = load i64, i64* @numIP, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @memcpy(i32* %70, %struct.sockaddr* %71, i32 %72)
  %74 = load i64, i64* @numIP, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* @numIP, align 8
  br label %76

76:                                               ; preds = %17, %45, %47, %18
  ret void
}

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

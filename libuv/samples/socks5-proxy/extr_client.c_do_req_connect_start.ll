; ModuleID = '/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_client.c_do_req_connect_start.c'
source_filename = "/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_client.c_do_req_connect_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@c_stop = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"connection not allowed by ruleset\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"\05\02\00\01\00\00\00\00\00\00\00", align 1
@s_kill = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"connect error: %s\0A\00", align 1
@s_req_connect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @do_req_connect_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_req_connect_start(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @c_stop, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @c_stop, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @c_stop, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @c_stop, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = call i32 @can_access(i32 %41, %struct.TYPE_11__* %42, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %1
  %49 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = call i32 @conn_write(%struct.TYPE_10__* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %52 = load i32, i32* @s_kill, align 4
  store i32 %52, i32* %2, align 4
  br label %66

53:                                               ; preds = %1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = call i32 @conn_connect(%struct.TYPE_10__* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @uv_strerror(i32 %59)
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = call i32 @do_kill(%struct.TYPE_11__* %62)
  store i32 %63, i32* %2, align 4
  br label %66

64:                                               ; preds = %53
  %65 = load i32, i32* @s_req_connect, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %58, %48
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @can_access(i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @conn_write(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @conn_connect(%struct.TYPE_10__*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @uv_strerror(i32) #1

declare dso_local i32 @do_kill(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

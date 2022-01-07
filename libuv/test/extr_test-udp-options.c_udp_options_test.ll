; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-udp-options.c_udp_options_test.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-udp-options.c_udp_options_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }

@udp_options_test.invalid_ttls = internal global [3 x i32] [i32 -1, i32 0, i32 256], align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@UV_ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*)* @udp_options_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_options_test(%struct.sockaddr* %0) #0 {
  %2 = alloca %struct.sockaddr*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %2, align 8
  %7 = call i32* (...) @uv_default_loop()
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @uv_udp_init(i32* %8, i32* %4)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = call i32 @uv_unref(i32* %4)
  %15 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %16 = call i32 @uv_udp_bind(i32* %4, %struct.sockaddr* %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = call i32 @uv_udp_set_broadcast(i32* %4, i32 1)
  store i32 %21, i32* %6, align 4
  %22 = call i32 @uv_udp_set_broadcast(i32* %4, i32 1)
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = call i32 @uv_udp_set_broadcast(i32* %4, i32 0)
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = call i32 @uv_udp_set_broadcast(i32* %4, i32 0)
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  store i32 1, i32* %5, align 4
  br label %35

35:                                               ; preds = %45, %1
  %36 = load i32, i32* %5, align 4
  %37 = icmp sle i32 %36, 255
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @uv_udp_set_ttl(i32* %4, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %35

48:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %65, %48
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @ARRAY_SIZE(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @udp_options_test.invalid_ttls, i64 0, i64 0))
  %52 = trunc i64 %51 to i32
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* @udp_options_test.invalid_ttls, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @uv_udp_set_ttl(i32* %4, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @UV_EINVAL, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @ASSERT(i32 %63)
  br label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %49

68:                                               ; preds = %49
  %69 = call i32 @uv_udp_set_multicast_loop(i32* %4, i32 1)
  store i32 %69, i32* %6, align 4
  %70 = call i32 @uv_udp_set_multicast_loop(i32* %4, i32 1)
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  %73 = call i32 @uv_udp_set_multicast_loop(i32* %4, i32 0)
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = call i32 @uv_udp_set_multicast_loop(i32* %4, i32 0)
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @ASSERT(i32 %81)
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %93, %68
  %84 = load i32, i32* %5, align 4
  %85 = icmp sle i32 %84, 255
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @uv_udp_set_multicast_ttl(i32* %4, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @ASSERT(i32 %91)
  br label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %83

96:                                               ; preds = %83
  %97 = call i32 @uv_udp_set_multicast_ttl(i32* %4, i32 256)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @UV_EINVAL, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @ASSERT(i32 %101)
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %105 = call i32 @uv_run(i32* %103, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @ASSERT(i32 %108)
  %110 = call i32 (...) @MAKE_VALGRIND_HAPPY()
  ret i32 0
}

declare dso_local i32* @uv_default_loop(...) #1

declare dso_local i32 @uv_udp_init(i32*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_unref(i32*) #1

declare dso_local i32 @uv_udp_bind(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @uv_udp_set_broadcast(i32*, i32) #1

declare dso_local i32 @uv_udp_set_ttl(i32*, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @uv_udp_set_multicast_loop(i32*, i32) #1

declare dso_local i32 @uv_udp_set_multicast_ttl(i32*, i32) #1

declare dso_local i32 @uv_run(i32*, i32) #1

declare dso_local i32 @MAKE_VALGRIND_HAPPY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

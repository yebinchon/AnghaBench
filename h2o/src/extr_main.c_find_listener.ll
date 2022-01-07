; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_find_listener.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_find_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.listener_config_t** }
%struct.listener_config_t = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.sockaddr = type { i32 }

@conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.listener_config_t* (%struct.sockaddr*, i64, i32)* @find_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.listener_config_t* @find_listener(%struct.sockaddr* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.listener_config_t*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.listener_config_t*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %43, %3
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conf, i32 0, i32 0), align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = load %struct.listener_config_t**, %struct.listener_config_t*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conf, i32 0, i32 1), align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds %struct.listener_config_t*, %struct.listener_config_t** %15, i64 %16
  %18 = load %struct.listener_config_t*, %struct.listener_config_t** %17, align 8
  store %struct.listener_config_t* %18, %struct.listener_config_t** %9, align 8
  %19 = load %struct.listener_config_t*, %struct.listener_config_t** %9, align 8
  %20 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %14
  %25 = load %struct.listener_config_t*, %struct.listener_config_t** %9, align 8
  %26 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %25, i32 0, i32 2
  %27 = bitcast i32* %26 to i8*
  %28 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %29 = call i64 @h2o_socket_compare_address(i8* %27, %struct.sockaddr* %28, i32 1)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load %struct.listener_config_t*, %struct.listener_config_t** %9, align 8
  %33 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load %struct.listener_config_t*, %struct.listener_config_t** %9, align 8
  store %struct.listener_config_t* %41, %struct.listener_config_t** %4, align 8
  br label %47

42:                                               ; preds = %31, %24, %14
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %8, align 8
  br label %10

46:                                               ; preds = %10
  store %struct.listener_config_t* null, %struct.listener_config_t** %4, align 8
  br label %47

47:                                               ; preds = %46, %40
  %48 = load %struct.listener_config_t*, %struct.listener_config_t** %4, align 8
  ret %struct.listener_config_t* %48
}

declare dso_local i64 @h2o_socket_compare_address(i8*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

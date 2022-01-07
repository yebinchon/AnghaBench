; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_add_listener.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_add_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.listener_config_t** }
%struct.listener_config_t = type { i32, i32, i32, i32, i32**, i32, i32 }
%struct.sockaddr = type { i32 }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.listener_config_t* (i32, %struct.sockaddr*, i32, i32, i32)* @add_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.listener_config_t* @add_listener(i32 %0, %struct.sockaddr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.listener_config_t*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = call i8* @h2o_mem_alloc(i32 32)
  %13 = bitcast i8* %12 to %struct.listener_config_t*
  store %struct.listener_config_t* %13, %struct.listener_config_t** %11, align 8
  %14 = load %struct.listener_config_t*, %struct.listener_config_t** %11, align 8
  %15 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %14, i32 0, i32 6
  %16 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @memcpy(i32* %15, %struct.sockaddr* %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.listener_config_t*, %struct.listener_config_t** %11, align 8
  %21 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.listener_config_t*, %struct.listener_config_t** %11, align 8
  %24 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load %struct.listener_config_t*, %struct.listener_config_t** %11, align 8
  %29 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %28, i32 0, i32 4
  store i32** null, i32*** %29, align 8
  br label %39

30:                                               ; preds = %5
  %31 = call i8* @h2o_mem_alloc(i32 8)
  %32 = bitcast i8* %31 to i32**
  %33 = load %struct.listener_config_t*, %struct.listener_config_t** %11, align 8
  %34 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %33, i32 0, i32 4
  store i32** %32, i32*** %34, align 8
  %35 = load %struct.listener_config_t*, %struct.listener_config_t** %11, align 8
  %36 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %35, i32 0, i32 4
  %37 = load i32**, i32*** %36, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %30, %27
  %40 = load %struct.listener_config_t*, %struct.listener_config_t** %11, align 8
  %41 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %40, i32 0, i32 3
  %42 = call i32 @memset(i32* %41, i32 0, i32 4)
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.listener_config_t*, %struct.listener_config_t** %11, align 8
  %45 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.listener_config_t*, %struct.listener_config_t** %11, align 8
  %47 = getelementptr inbounds %struct.listener_config_t, %struct.listener_config_t* %46, i32 0, i32 2
  %48 = call i32 @memset(i32* %47, i32 0, i32 4)
  %49 = load %struct.listener_config_t**, %struct.listener_config_t*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = mul i64 8, %52
  %54 = trunc i64 %53 to i32
  %55 = call %struct.listener_config_t** @h2o_mem_realloc(%struct.listener_config_t** %49, i32 %54)
  store %struct.listener_config_t** %55, %struct.listener_config_t*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  %56 = load %struct.listener_config_t*, %struct.listener_config_t** %11, align 8
  %57 = load %struct.listener_config_t**, %struct.listener_config_t*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds %struct.listener_config_t*, %struct.listener_config_t** %57, i64 %60
  store %struct.listener_config_t* %56, %struct.listener_config_t** %61, align 8
  %62 = load %struct.listener_config_t*, %struct.listener_config_t** %11, align 8
  ret %struct.listener_config_t* %62
}

declare dso_local i8* @h2o_mem_alloc(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.listener_config_t** @h2o_mem_realloc(%struct.listener_config_t**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

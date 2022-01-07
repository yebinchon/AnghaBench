; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_util.c_h2o_accept_setup_memcached_ssl_resumption.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_util.c_h2o_accept_setup_memcached_ssl_resumption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32 }

@async_resumption_context = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@memcached_resumption_get = common dso_local global i32 0, align 4
@memcached_resumption_new = common dso_local global i32 0, align 4
@create_memcached_accept_data = common dso_local global i32 0, align 4
@accept_data_callbacks = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@destroy_memcached_accept_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_accept_setup_memcached_ssl_resumption(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  store i32* %5, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @async_resumption_context, i32 0, i32 1, i32 0), align 8
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @async_resumption_context, i32 0, i32 0), align 8
  %7 = load i32, i32* @memcached_resumption_get, align 4
  %8 = load i32, i32* @memcached_resumption_new, align 4
  %9 = call i32 @h2o_socket_ssl_async_resumption_init(i32 %7, i32 %8)
  %10 = load i32, i32* @create_memcached_accept_data, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @accept_data_callbacks, i32 0, i32 1), align 4
  %11 = load i32, i32* @destroy_memcached_accept_data, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @accept_data_callbacks, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @h2o_socket_ssl_async_resumption_init(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_socket.c_nl_socket_alloc.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_socket.c_nl_socket_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_sock = type { i32 }
%struct.nl_cb = type { i32 }

@NL_CB_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nl_sock* @nl_socket_alloc() #0 {
  %1 = alloca %struct.nl_sock*, align 8
  %2 = alloca %struct.nl_cb*, align 8
  %3 = load i32, i32* @NL_CB_DEFAULT, align 4
  %4 = call %struct.nl_cb* @nl_cb_alloc(i32 %3)
  store %struct.nl_cb* %4, %struct.nl_cb** %2, align 8
  %5 = load %struct.nl_cb*, %struct.nl_cb** %2, align 8
  %6 = icmp ne %struct.nl_cb* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.nl_sock* null, %struct.nl_sock** %1, align 8
  br label %11

8:                                                ; preds = %0
  %9 = load %struct.nl_cb*, %struct.nl_cb** %2, align 8
  %10 = call %struct.nl_sock* @__alloc_socket(%struct.nl_cb* %9)
  store %struct.nl_sock* %10, %struct.nl_sock** %1, align 8
  br label %11

11:                                               ; preds = %8, %7
  %12 = load %struct.nl_sock*, %struct.nl_sock** %1, align 8
  ret %struct.nl_sock* %12
}

declare dso_local %struct.nl_cb* @nl_cb_alloc(i32) #1

declare dso_local %struct.nl_sock* @__alloc_socket(%struct.nl_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

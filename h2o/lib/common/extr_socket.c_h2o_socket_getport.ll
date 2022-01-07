; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_socket.c_h2o_socket_getport.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_socket.c_h2o_socket_getport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_socket_getport(%struct.sockaddr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  %4 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %5 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %19 [
    i32 129, label %7
    i32 128, label %13
  ]

7:                                                ; preds = %1
  %8 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %9 = bitcast %struct.sockaddr* %8 to %struct.sockaddr_in*
  %10 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @htons(i32 %11)
  store i32 %12, i32* %2, align 4
  br label %20

13:                                               ; preds = %1
  %14 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %15 = bitcast %struct.sockaddr* %14 to %struct.sockaddr_in6*
  %16 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @htons(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %20

19:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %13, %7
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

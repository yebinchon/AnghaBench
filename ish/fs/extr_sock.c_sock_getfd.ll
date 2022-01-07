; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_sock.c_sock_getfd.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_sock.c_sock_getfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32* }

@socket_fdops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fd* (i32)* @sock_getfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fd* @sock_getfd(i32 %0) #0 {
  %2 = alloca %struct.fd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.fd* @f_get(i32 %5)
  store %struct.fd* %6, %struct.fd** %4, align 8
  %7 = load %struct.fd*, %struct.fd** %4, align 8
  %8 = icmp eq %struct.fd* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.fd*, %struct.fd** %4, align 8
  %11 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, @socket_fdops
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store %struct.fd* null, %struct.fd** %2, align 8
  br label %17

15:                                               ; preds = %9
  %16 = load %struct.fd*, %struct.fd** %4, align 8
  store %struct.fd* %16, %struct.fd** %2, align 8
  br label %17

17:                                               ; preds = %15, %14
  %18 = load %struct.fd*, %struct.fd** %2, align 8
  ret %struct.fd* %18
}

declare dso_local %struct.fd* @f_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

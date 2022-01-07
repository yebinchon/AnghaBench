; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_init.c_open_fd_from_actual_fd.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_init.c_open_fd_from_actual_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32, i32* }

@realfs_fdops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fd* (i32)* @open_fd_from_actual_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fd* @open_fd_from_actual_fd(i32 %0) #0 {
  %2 = alloca %struct.fd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call %struct.fd* @adhoc_fd_create(i32* @realfs_fdops)
  store %struct.fd* %5, %struct.fd** %4, align 8
  %6 = load %struct.fd*, %struct.fd** %4, align 8
  %7 = icmp eq %struct.fd* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.fd* null, %struct.fd** %2, align 8
  br label %16

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.fd*, %struct.fd** %4, align 8
  %12 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.fd*, %struct.fd** %4, align 8
  %14 = getelementptr inbounds %struct.fd, %struct.fd* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.fd*, %struct.fd** %4, align 8
  store %struct.fd* %15, %struct.fd** %2, align 8
  br label %16

16:                                               ; preds = %9, %8
  %17 = load %struct.fd*, %struct.fd** %2, align 8
  ret %struct.fd* %17
}

declare dso_local %struct.fd* @adhoc_fd_create(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

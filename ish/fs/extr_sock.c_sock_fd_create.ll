; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_sock.c_sock_fd_create.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_sock.c_sock_fd_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@socket_fdops = common dso_local global i32 0, align 4
@_ENOMEM = common dso_local global i32 0, align 4
@S_IFSOCK = common dso_local global i32 0, align 4
@SOCKET_TYPE_MASK = common dso_local global i32 0, align 4
@AF_LOCAL_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @sock_fd_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_fd_create(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fd*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call %struct.fd* @adhoc_fd_create(i32* @socket_fdops)
  store %struct.fd* %11, %struct.fd** %10, align 8
  %12 = load %struct.fd*, %struct.fd** %10, align 8
  %13 = icmp eq %struct.fd* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @_ENOMEM, align 4
  store i32 %15, i32* %5, align 4
  br label %58

16:                                               ; preds = %4
  %17 = load i32, i32* @S_IFSOCK, align 4
  %18 = or i32 %17, 438
  %19 = load %struct.fd*, %struct.fd** %10, align 8
  %20 = getelementptr inbounds %struct.fd, %struct.fd* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.fd*, %struct.fd** %10, align 8
  %24 = getelementptr inbounds %struct.fd, %struct.fd* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.fd*, %struct.fd** %10, align 8
  %27 = getelementptr inbounds %struct.fd, %struct.fd* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SOCKET_TYPE_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.fd*, %struct.fd** %10, align 8
  %33 = getelementptr inbounds %struct.fd, %struct.fd* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.fd*, %struct.fd** %10, align 8
  %37 = getelementptr inbounds %struct.fd, %struct.fd* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @AF_LOCAL_, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %16
  %43 = load %struct.fd*, %struct.fd** %10, align 8
  %44 = getelementptr inbounds %struct.fd, %struct.fd* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  %46 = call i32 @cond_init(i32* %45)
  %47 = load %struct.fd*, %struct.fd** %10, align 8
  %48 = getelementptr inbounds %struct.fd, %struct.fd* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = call i32 @list_init(i32* %49)
  br label %51

51:                                               ; preds = %42, %16
  %52 = load %struct.fd*, %struct.fd** %10, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @SOCKET_TYPE_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = call i32 @f_install(%struct.fd* %52, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %51, %14
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.fd* @adhoc_fd_create(i32*) #1

declare dso_local i32 @cond_init(i32*) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @f_install(%struct.fd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

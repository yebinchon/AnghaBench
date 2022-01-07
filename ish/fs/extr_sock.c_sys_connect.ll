; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_connect.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32*, i32 }
%struct.sockaddr_max_ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"connect(%d, 0x%x, %d)\00", align 1
@_EBADF = common dso_local global i32 0, align 4
@AF_LOCAL_ = common dso_local global i64 0, align 8
@peer_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_connect(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fd*, align 8
  %9 = alloca %struct.sockaddr_max_, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @STRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.fd* @sock_getfd(i32 %16)
  store %struct.fd* %17, %struct.fd** %8, align 8
  %18 = load %struct.fd*, %struct.fd** %8, align 8
  %19 = icmp eq %struct.fd* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @_EBADF, align 4
  store i32 %21, i32* %4, align 4
  br label %84

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @sockaddr_read(i32 %23, %struct.sockaddr_max_* %9, i32* %7)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %84

29:                                               ; preds = %22
  %30 = load %struct.fd*, %struct.fd** %8, align 8
  %31 = getelementptr inbounds %struct.fd, %struct.fd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = bitcast %struct.sockaddr_max_* %9 to i8*
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @connect(i32 %32, i8* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 (...) @errno_map()
  store i32 %39, i32* %4, align 4
  br label %84

40:                                               ; preds = %29
  %41 = load %struct.fd*, %struct.fd** %8, align 8
  %42 = getelementptr inbounds %struct.fd, %struct.fd* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AF_LOCAL_, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %82

47:                                               ; preds = %40
  %48 = load %struct.fd*, %struct.fd** %8, align 8
  %49 = getelementptr inbounds %struct.fd, %struct.fd* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = call i32 @fill_cred(i32* %50)
  %52 = load %struct.fd*, %struct.fd** %8, align 8
  %53 = getelementptr inbounds %struct.fd, %struct.fd* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.fd*, %struct.fd** %8, align 8
  %60 = getelementptr inbounds %struct.fd, %struct.fd* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @write(i32 %61, %struct.fd** %8, i32 8)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp eq i64 %64, 8
  br i1 %65, label %66, label %81

66:                                               ; preds = %47
  %67 = call i32 @lock(i32* @peer_lock)
  br label %68

68:                                               ; preds = %74, %66
  %69 = load %struct.fd*, %struct.fd** %8, align 8
  %70 = getelementptr inbounds %struct.fd, %struct.fd* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.fd*, %struct.fd** %8, align 8
  %76 = getelementptr inbounds %struct.fd, %struct.fd* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = call i32 @wait_for(i32* %77, i32* @peer_lock, i32* null)
  br label %68

79:                                               ; preds = %68
  %80 = call i32 @unlock(i32* @peer_lock)
  br label %81

81:                                               ; preds = %79, %47
  br label %82

82:                                               ; preds = %81, %40
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %38, %27, %20
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @STRACE(i8*, i32, i32, i32) #1

declare dso_local %struct.fd* @sock_getfd(i32) #1

declare dso_local i32 @sockaddr_read(i32, %struct.sockaddr_max_*, i32*) #1

declare dso_local i32 @connect(i32, i8*, i32) #1

declare dso_local i32 @errno_map(...) #1

declare dso_local i32 @fill_cred(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write(i32, %struct.fd**, i32) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @wait_for(i32*, i32*, i32*) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

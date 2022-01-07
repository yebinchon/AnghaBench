; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_bind.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.inode_data*, i32* }
%struct.inode_data = type { i32 }
%struct.sockaddr_max_ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"bind(%d, 0x%x, %d)\00", align 1
@_EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_bind(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fd*, align 8
  %9 = alloca %struct.sockaddr_max_, align 4
  %10 = alloca %struct.inode_data*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @STRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.fd* @sock_getfd(i32 %16)
  store %struct.fd* %17, %struct.fd** %8, align 8
  %18 = load %struct.fd*, %struct.fd** %8, align 8
  %19 = icmp eq %struct.fd* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @_EBADF, align 4
  store i32 %21, i32* %4, align 4
  br label %63

22:                                               ; preds = %3
  store %struct.inode_data* null, %struct.inode_data** %10, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.fd*, %struct.fd** %8, align 8
  %25 = call i32 @sockaddr_read_bind(i32 %23, %struct.sockaddr_max_* %9, i32* %7, %struct.fd* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %63

30:                                               ; preds = %22
  %31 = load %struct.fd*, %struct.fd** %8, align 8
  %32 = getelementptr inbounds %struct.fd, %struct.fd* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = bitcast %struct.sockaddr_max_* %9 to i8*
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @bind(i32 %33, i8* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %30
  %40 = load %struct.fd*, %struct.fd** %8, align 8
  %41 = getelementptr inbounds %struct.fd, %struct.fd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.inode_data*, %struct.inode_data** %42, align 8
  %44 = call i32 @inode_release_if_exist(%struct.inode_data* %43)
  %45 = load %struct.fd*, %struct.fd** %8, align 8
  %46 = getelementptr inbounds %struct.fd, %struct.fd* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = load %struct.fd*, %struct.fd** %8, align 8
  %52 = getelementptr inbounds %struct.fd, %struct.fd* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @unix_abstract_release(i32* %54)
  br label %56

56:                                               ; preds = %50, %39
  %57 = call i32 (...) @errno_map()
  store i32 %57, i32* %4, align 4
  br label %63

58:                                               ; preds = %30
  %59 = load %struct.inode_data*, %struct.inode_data** %10, align 8
  %60 = load %struct.fd*, %struct.fd** %8, align 8
  %61 = getelementptr inbounds %struct.fd, %struct.fd* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store %struct.inode_data* %59, %struct.inode_data** %62, align 8
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %58, %56, %28, %20
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @STRACE(i8*, i32, i32, i32) #1

declare dso_local %struct.fd* @sock_getfd(i32) #1

declare dso_local i32 @sockaddr_read_bind(i32, %struct.sockaddr_max_*, i32*, %struct.fd*) #1

declare dso_local i32 @bind(i32, i8*, i32) #1

declare dso_local i32 @inode_release_if_exist(%struct.inode_data*) #1

declare dso_local i32 @unix_abstract_release(i32*) #1

declare dso_local i32 @errno_map(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

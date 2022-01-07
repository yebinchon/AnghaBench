; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_poll.c_poll_add_fd.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_poll.c_poll_add_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poll = type { i32, i32 }
%struct.fd = type { i32, i32 }
%union.poll_fd_info = type { i32 }
%struct.poll_fd = type { i32, i32, i32, %union.poll_fd_info, %struct.poll*, %struct.fd* }

@_ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @poll_add_fd(%struct.poll* %0, %struct.fd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %union.poll_fd_info, align 4
  %6 = alloca %struct.poll*, align 8
  %7 = alloca %struct.fd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.poll_fd*, align 8
  %11 = getelementptr inbounds %union.poll_fd_info, %union.poll_fd_info* %5, i32 0, i32 0
  store i32 %3, i32* %11, align 4
  store %struct.poll* %0, %struct.poll** %6, align 8
  store %struct.fd* %1, %struct.fd** %7, align 8
  store i32 %2, i32* %8, align 4
  %12 = load %struct.fd*, %struct.fd** %7, align 8
  %13 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %14 = call i32 @lock(i32* %13)
  %15 = load %struct.poll*, %struct.poll** %6, align 8
  %16 = getelementptr inbounds %struct.poll, %struct.poll* %15, i32 0, i32 0
  %17 = call i32 @lock(i32* %16)
  %18 = call %struct.poll_fd* @malloc(i32 32)
  store %struct.poll_fd* %18, %struct.poll_fd** %10, align 8
  %19 = load %struct.poll_fd*, %struct.poll_fd** %10, align 8
  %20 = icmp eq %struct.poll_fd* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @_ENOMEM, align 4
  store i32 %22, i32* %9, align 4
  br label %47

23:                                               ; preds = %4
  %24 = load %struct.fd*, %struct.fd** %7, align 8
  %25 = load %struct.poll_fd*, %struct.poll_fd** %10, align 8
  %26 = getelementptr inbounds %struct.poll_fd, %struct.poll_fd* %25, i32 0, i32 5
  store %struct.fd* %24, %struct.fd** %26, align 8
  %27 = load %struct.poll*, %struct.poll** %6, align 8
  %28 = load %struct.poll_fd*, %struct.poll_fd** %10, align 8
  %29 = getelementptr inbounds %struct.poll_fd, %struct.poll_fd* %28, i32 0, i32 4
  store %struct.poll* %27, %struct.poll** %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.poll_fd*, %struct.poll_fd** %10, align 8
  %32 = getelementptr inbounds %struct.poll_fd, %struct.poll_fd* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.poll_fd*, %struct.poll_fd** %10, align 8
  %34 = getelementptr inbounds %struct.poll_fd, %struct.poll_fd* %33, i32 0, i32 3
  %35 = bitcast %union.poll_fd_info* %34 to i8*
  %36 = bitcast %union.poll_fd_info* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  %37 = load %struct.fd*, %struct.fd** %7, align 8
  %38 = getelementptr inbounds %struct.fd, %struct.fd* %37, i32 0, i32 1
  %39 = load %struct.poll_fd*, %struct.poll_fd** %10, align 8
  %40 = getelementptr inbounds %struct.poll_fd, %struct.poll_fd* %39, i32 0, i32 2
  %41 = call i32 @list_add(i32* %38, i32* %40)
  %42 = load %struct.poll*, %struct.poll** %6, align 8
  %43 = getelementptr inbounds %struct.poll, %struct.poll* %42, i32 0, i32 1
  %44 = load %struct.poll_fd*, %struct.poll_fd** %10, align 8
  %45 = getelementptr inbounds %struct.poll_fd, %struct.poll_fd* %44, i32 0, i32 1
  %46 = call i32 @list_add(i32* %43, i32* %45)
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %23, %21
  %48 = load %struct.poll*, %struct.poll** %6, align 8
  %49 = getelementptr inbounds %struct.poll, %struct.poll* %48, i32 0, i32 0
  %50 = call i32 @unlock(i32* %49)
  %51 = load %struct.fd*, %struct.fd** %7, align 8
  %52 = getelementptr inbounds %struct.fd, %struct.fd* %51, i32 0, i32 0
  %53 = call i32 @unlock(i32* %52)
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local i32 @lock(i32*) #1

declare dso_local %struct.poll_fd* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

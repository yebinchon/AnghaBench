; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_poll.c_poll_mod_fd.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_poll.c_poll_mod_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poll = type { i32 }
%struct.fd = type { i32 }
%union.poll_fd_info = type { i32 }
%struct.poll_fd = type { i32, %union.poll_fd_info }

@_ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @poll_mod_fd(%struct.poll* %0, %struct.fd* %1, i32 %2, i32 %3) #0 {
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
  %18 = load %struct.poll*, %struct.poll** %6, align 8
  %19 = load %struct.fd*, %struct.fd** %7, align 8
  %20 = call %struct.poll_fd* @poll_find_fd(%struct.poll* %18, %struct.fd* %19)
  store %struct.poll_fd* %20, %struct.poll_fd** %10, align 8
  %21 = load %struct.poll_fd*, %struct.poll_fd** %10, align 8
  %22 = icmp eq %struct.poll_fd* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @_ENOENT, align 4
  store i32 %24, i32* %9, align 4
  br label %33

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.poll_fd*, %struct.poll_fd** %10, align 8
  %28 = getelementptr inbounds %struct.poll_fd, %struct.poll_fd* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.poll_fd*, %struct.poll_fd** %10, align 8
  %30 = getelementptr inbounds %struct.poll_fd, %struct.poll_fd* %29, i32 0, i32 1
  %31 = bitcast %union.poll_fd_info* %30 to i8*
  %32 = bitcast %union.poll_fd_info* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %25, %23
  %34 = load %struct.poll*, %struct.poll** %6, align 8
  %35 = getelementptr inbounds %struct.poll, %struct.poll* %34, i32 0, i32 0
  %36 = call i32 @unlock(i32* %35)
  %37 = load %struct.fd*, %struct.fd** %7, align 8
  %38 = getelementptr inbounds %struct.fd, %struct.fd* %37, i32 0, i32 0
  %39 = call i32 @unlock(i32* %38)
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

declare dso_local i32 @lock(i32*) #1

declare dso_local %struct.poll_fd* @poll_find_fd(%struct.poll*, %struct.fd*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-mutexes.c_thread_rwlock_trylock_peer.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-mutexes.c_thread_rwlock_trylock_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mutex = common dso_local global i32 0, align 4
@UV_EBUSY = common dso_local global i64 0, align 8
@rwlock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @thread_rwlock_trylock_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_rwlock_trylock_peer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 @uv_mutex_lock(i32* @mutex)
  %4 = load i64, i64* @UV_EBUSY, align 8
  %5 = call i64 @uv_rwlock_tryrdlock(i32* @rwlock)
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load i64, i64* @UV_EBUSY, align 8
  %10 = call i64 @uv_rwlock_trywrlock(i32* @rwlock)
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = call i32 (...) @synchronize()
  %15 = call i64 @uv_rwlock_tryrdlock(i32* @rwlock)
  %16 = icmp eq i64 0, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = call i32 @uv_rwlock_rdunlock(i32* @rwlock)
  %20 = load i64, i64* @UV_EBUSY, align 8
  %21 = call i64 @uv_rwlock_trywrlock(i32* @rwlock)
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = call i32 (...) @synchronize()
  %26 = call i64 @uv_rwlock_trywrlock(i32* @rwlock)
  %27 = icmp eq i64 0, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = call i32 (...) @synchronize()
  %31 = call i32 @uv_rwlock_wrunlock(i32* @rwlock)
  %32 = call i64 @uv_rwlock_tryrdlock(i32* @rwlock)
  %33 = icmp eq i64 0, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = call i32 (...) @synchronize()
  %37 = call i32 @uv_rwlock_rdunlock(i32* @rwlock)
  %38 = call i32 (...) @synchronize_nowait()
  %39 = call i32 @uv_mutex_unlock(i32* @mutex)
  ret void
}

declare dso_local i32 @uv_mutex_lock(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_rwlock_tryrdlock(i32*) #1

declare dso_local i64 @uv_rwlock_trywrlock(i32*) #1

declare dso_local i32 @synchronize(...) #1

declare dso_local i32 @uv_rwlock_rdunlock(i32*) #1

declare dso_local i32 @uv_rwlock_wrunlock(i32*) #1

declare dso_local i32 @synchronize_nowait(...) #1

declare dso_local i32 @uv_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

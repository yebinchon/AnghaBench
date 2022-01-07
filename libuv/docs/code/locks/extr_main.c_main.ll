; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/locks/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/locks/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@blocker = common dso_local global i32 0, align 4
@shared_num = common dso_local global i64 0, align 8
@numlock = common dso_local global i32 0, align 4
@__const.main.thread_nums = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 1], align 4
@reader = common dso_local global i32 0, align 4
@writer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x i32], align 4
  %3 = alloca [3 x i32], align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 @uv_barrier_init(i32* @blocker, i32 4)
  store i64 0, i64* @shared_num, align 8
  %5 = call i32 @uv_rwlock_init(i32* @numlock)
  %6 = bitcast [3 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast ([3 x i32]* @__const.main.thread_nums to i8*), i64 12, i1 false)
  %7 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %8 = load i32, i32* @reader, align 4
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %10 = call i32 @uv_thread_create(i32* %7, i32 %8, i32* %9)
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 1
  %12 = load i32, i32* @reader, align 4
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  %14 = call i32 @uv_thread_create(i32* %11, i32 %12, i32* %13)
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 2
  %16 = load i32, i32* @writer, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  %18 = call i32 @uv_thread_create(i32* %15, i32 %16, i32* %17)
  %19 = call i32 @uv_barrier_wait(i32* @blocker)
  %20 = call i32 @uv_barrier_destroy(i32* @blocker)
  %21 = call i32 @uv_rwlock_destroy(i32* @numlock)
  ret i32 0
}

declare dso_local i32 @uv_barrier_init(i32*, i32) #1

declare dso_local i32 @uv_rwlock_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @uv_thread_create(i32*, i32, i32*) #1

declare dso_local i32 @uv_barrier_wait(i32*) #1

declare dso_local i32 @uv_barrier_destroy(i32*) #1

declare dso_local i32 @uv_rwlock_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

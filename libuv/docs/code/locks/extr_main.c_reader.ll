; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/locks/extr_main.c_reader.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/locks/extr_main.c_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numlock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Reader %d: acquired lock\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Reader %d: shared num = %d\0A\00", align 1
@shared_num = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Reader %d: released lock\0A\00", align 1
@blocker = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reader(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to i32*
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 20
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = call i32 @uv_rwlock_rdlock(i32* @numlock)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @shared_num, align 4
  %17 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %16)
  %18 = call i32 @uv_rwlock_rdunlock(i32* @numlock)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %11
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %8

24:                                               ; preds = %8
  %25 = call i32 @uv_barrier_wait(i32* @blocker)
  ret void
}

declare dso_local i32 @uv_rwlock_rdlock(i32*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @uv_rwlock_rdunlock(i32*) #1

declare dso_local i32 @uv_barrier_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

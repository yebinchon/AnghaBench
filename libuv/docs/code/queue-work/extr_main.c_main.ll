; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/queue-work/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/queue-work/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@loop = common dso_local global i32 0, align 4
@FIB_UNTIL = common dso_local global i32 0, align 4
@fib = common dso_local global i32 0, align 4
@after_fib = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call i32 (...) @uv_default_loop()
  store i32 %6, i32* @loop, align 4
  %7 = load i32, i32* @FIB_UNTIL, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  %11 = load i32, i32* @FIB_UNTIL, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca %struct.TYPE_3__, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %38, %0
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @FIB_UNTIL, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %10, i64 %21
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %10, i64 %24
  %26 = bitcast i32* %25 to i8*
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i8* %26, i8** %30, align 8
  %31 = load i32, i32* @loop, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %33
  %35 = load i32, i32* @fib, align 4
  %36 = load i32, i32* @after_fib, align 4
  %37 = call i32 @uv_queue_work(i32 %31, %struct.TYPE_3__* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %18
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %14

41:                                               ; preds = %14
  %42 = load i32, i32* @loop, align 4
  %43 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %44 = call i32 @uv_run(i32 %42, i32 %43)
  store i32 %44, i32* %1, align 4
  %45 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32 @uv_default_loop(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @uv_queue_work(i32, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @uv_run(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

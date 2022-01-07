; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_process-stdio.c_uv__create_nul_handle.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_process-stdio.c_uv__create_nul_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 78, i32 85, i32 76, i32 0], align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__create_nul_handle(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 16, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i32* null, i32** %9, align 8
  %10 = load i32, i32* @TRUE, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @FILE_SHARE_READ, align 4
  %14 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @OPEN_EXISTING, align 4
  %17 = call i64 @CreateFileW(i8* bitcast ([4 x i32]* @.str to i8*), i32 %12, i32 %15, %struct.TYPE_3__* %7, i32 %16, i32 0, i32* null)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 (...) @GetLastError()
  store i32 %22, i32* %3, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = load i64*, i64** %4, align 8
  store i64 %24, i64* %25, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %21
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @CreateFileW(i8*, i32, i32, %struct.TYPE_3__*, i32, i32, i32*) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

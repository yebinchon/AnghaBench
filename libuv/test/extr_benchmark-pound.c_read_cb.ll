; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-pound.c_read_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-pound.c_read_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@close_cb = common dso_local global i32 0, align 4
@UV_EOF = common dso_local global i64 0, align 8
@UV_ECONNRESET = common dso_local global i64 0, align 8
@conns_failed = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"read error %s\0A\00", align 1
@p = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*)* @read_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_cb(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @close_cb, align 4
  %13 = call i32 @uv_close(i32* %11, i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @UV_EOF, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %35

21:                                               ; preds = %16
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @UV_ECONNRESET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @conns_failed, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @conns_failed, align 4
  br label %34

28:                                               ; preds = %21
  %29 = load i32, i32* @stderr, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i8* @uv_err_name(i64 %30)
  %32 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = call i32 @ASSERT(i32 0)
  br label %34

34:                                               ; preds = %28, %25
  br label %35

35:                                               ; preds = %34, %20
  br label %36

36:                                               ; preds = %35, %3
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_close(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @uv_err_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

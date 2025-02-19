; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_sunos.c_uv_resident_set_memory.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_sunos.c_uv_resident_set_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"/proc/self/psinfo\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_resident_set_memory(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %7 = load i32, i32* @O_RDONLY, align 4
  %8 = call i32 @open(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 @UV__ERR(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load i32, i32* @UV_EINVAL, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @read(i32 %16, %struct.TYPE_3__* %4, i32 8)
  %18 = sext i32 %17 to i64
  %19 = icmp eq i64 %18, 8
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = mul i64 %22, 1024
  %24 = load i64*, i64** %3, align 8
  store i64 %23, i64* %24, align 8
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %20, %14
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @uv__close(i32 %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @UV__ERR(i32) #1

declare dso_local i32 @read(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @uv__close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

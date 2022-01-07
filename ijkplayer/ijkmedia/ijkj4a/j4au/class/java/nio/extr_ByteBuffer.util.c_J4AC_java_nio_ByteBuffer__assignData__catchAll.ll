; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4au/class/java/nio/extr_ByteBuffer.util.c_J4AC_java_nio_ByteBuffer__assignData__catchAll.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4au/class/java/nio/extr_ByteBuffer.util.c_J4AC_java_nio_ByteBuffer__assignData__catchAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @J4AC_java_nio_ByteBuffer__assignData__catchAll(i32* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @J4AC_java_nio_ByteBuffer__limit(i32* %12, i32 %13, i64 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @J4A_ExceptionCheck__catchAll(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %4
  store i32 -1, i32* %5, align 4
  br label %37

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @J4A_DeleteLocalRef__p(i32* %24, i32* %10)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32* @J4AC_java_nio_ByteBuffer__getDirectBufferAddress__catchAll(i32* %26, i32 %27)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %37

32:                                               ; preds = %23
  %33 = load i32*, i32** %11, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @memcpy(i32* %33, i8* %34, i64 %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %31, %22
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @J4AC_java_nio_ByteBuffer__limit(i32*, i32, i64) #1

declare dso_local i64 @J4A_ExceptionCheck__catchAll(i32*) #1

declare dso_local i32 @J4A_DeleteLocalRef__p(i32*, i32*) #1

declare dso_local i32* @J4AC_java_nio_ByteBuffer__getDirectBufferAddress__catchAll(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

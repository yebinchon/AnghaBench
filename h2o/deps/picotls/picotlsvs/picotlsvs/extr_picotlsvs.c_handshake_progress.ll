; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/picotlsvs/picotlsvs/extr_picotlsvs.c_handshake_progress.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/picotlsvs/picotlsvs/extr_picotlsvs.c_handshake_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PTLS_ERROR_IN_PROGRESS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Could only process %d bytes out of %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handshake_progress(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = call i32 @ptls_buffer_init(%struct.TYPE_7__* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %14

14:                                               ; preds = %31, %4
  %15 = load i64, i64* %10, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @PTLS_ERROR_IN_PROGRESS, align 4
  %26 = icmp eq i32 %24, %25
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi i1 [ true, %20 ], [ %26, %23 ]
  br label %29

29:                                               ; preds = %27, %14
  %30 = phi i1 [ false, %14 ], [ %28, %27 ]
  br i1 %30, label %31, label %49

31:                                               ; preds = %29
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = sub i64 %34, %35
  store i64 %36, i64* %9, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %41, %42
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @ptls_handshake(i32* %37, %struct.TYPE_7__* %38, i64 %43, i64* %9, i32* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %10, align 8
  br label %14

49:                                               ; preds = %29
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load i32, i32* @stderr, align 4
  %57 = load i64, i64* %10, align 8
  %58 = trunc i64 %57 to i32
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %62)
  br label %64

64:                                               ; preds = %55, %49
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = call i32 @ptls_buffer_dispose(%struct.TYPE_7__* %65)
  %67 = load i32, i32* %11, align 4
  ret i32 %67
}

declare dso_local i32 @ptls_buffer_init(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @ptls_handshake(i32*, %struct.TYPE_7__*, i64, i64*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @ptls_buffer_dispose(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

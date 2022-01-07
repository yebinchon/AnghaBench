; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpcc_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpcc_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"rpcc_execute: fd=%d, op=%d, len=%d\0A\00", align 1
@precise_now = common dso_local global i32 0, align 4
@qr_ans = common dso_local global i32 0, align 4
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcc_execute(%struct.connection* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.connection*, %struct.connection** %4, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* @precise_now, align 4
  %20 = load %struct.connection*, %struct.connection** %4, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %91 [
    i32 129, label %23
    i32 128, label %23
    i32 130, label %90
  ]

23:                                               ; preds = %3, %3
  %24 = load i32, i32* %6, align 4
  %25 = srem i32 %24, 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = sdiv i32 %29, 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp sge i32 %31, 6
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.connection*, %struct.connection** %4, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 0
  %37 = call i32 @nbit_set(i32* %9, i32* %36)
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %39 = call i32 (i32*, ...) @nbit_read_in(i32* %9, i32* %38, i64 20)
  %40 = sext i32 %39 to i64
  %41 = icmp eq i64 %40, 20
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %45 = bitcast i32* %44 to i64*
  %46 = load i64, i64* %45, align 4
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i32, i32* @qr_ans, align 4
  %49 = call i32* @get_qres(i64 %47, i32 %48)
  store i32* %49, i32** %8, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %23
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @got_result(i64 %53)
  br label %91

55:                                               ; preds = %23
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 129
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @qres_error(i32* %59)
  br label %91

61:                                               ; preds = %55
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %62, 5
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = trunc i64 %67 to i32
  %69 = call i8* @malloc(i32 %68)
  store i8* %69, i8** %10, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = mul nsw i32 %71, 4
  %73 = call i32 (i32*, ...) @nbit_read_in(i32* %9, i8* %70, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = mul nsw i32 %74, 4
  %76 = icmp eq i32 %73, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = call i32 @nbit_clear(i32* %9)
  %80 = load i32*, i32** %8, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = mul nsw i32 %82, 4
  %84 = call i32 @qres_save(i32* %80, i8* %81, i32 %83)
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %61
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @free(i8* %87)
  br label %89

89:                                               ; preds = %86, %61
  br label %91

90:                                               ; preds = %3
  br label %91

91:                                               ; preds = %3, %90, %89, %58, %52
  %92 = load i32, i32* @SKIP_ALL_BYTES, align 4
  ret i32 %92
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nbit_set(i32*, i32*) #1

declare dso_local i32 @nbit_read_in(i32*, ...) #1

declare dso_local i32* @get_qres(i64, i32) #1

declare dso_local i32 @got_result(i64) #1

declare dso_local i32 @qres_error(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @nbit_clear(i32*) #1

declare dso_local i32 @qres_save(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_load.c_read_lineno_record_1.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_load.c_read_lineno_record_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MRB_DUMP_GENERAL_FAILURE = common dso_local global i32 0, align 4
@MRB_DUMP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i64*)* @read_lineno_record_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_lineno_record_1(i32* %0, i32* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i64*, i64** %9, align 8
  store i64 0, i64* %13, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  store i32* %15, i32** %7, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, 4
  store i64 %18, i64* %16, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @bin_to_uint16(i32* %19)
  store i64 %20, i64* %11, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  store i32* %22, i32** %7, align 8
  %23 = load i64*, i64** %9, align 8
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, 4
  store i64 %25, i64* %23, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 %26
  store i32* %28, i32** %7, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, %29
  store i64 %32, i64* %30, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @bin_to_uint32(i32* %33)
  store i64 %34, i64* %12, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  store i32* %36, i32** %7, align 8
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 4
  store i64 %39, i64* %37, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call i64 @SIZE_ERROR_MUL(i64 %40, i32 4)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %4
  %44 = load i32, i32* @MRB_DUMP_GENERAL_FAILURE, align 4
  store i32 %44, i32* %5, align 4
  br label %61

45:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %46

46:                                               ; preds = %56, %45
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  store i32* %52, i32** %7, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %50
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %10, align 8
  br label %46

59:                                               ; preds = %46
  %60 = load i32, i32* @MRB_DUMP_OK, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %43
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @bin_to_uint16(i32*) #1

declare dso_local i64 @bin_to_uint32(i32*) #1

declare dso_local i64 @SIZE_ERROR_MUL(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c___tl_store_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c___tl_store_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_out_methods = type { i32, i32*, i64, i64 (i64)*, i32 (...)* }

@TL_OUT_METHODS = common dso_local global %struct.tl_out_methods* null, align 8
@TL_OUT = common dso_local global i8* null, align 8
@TL_OUT_EXTRA = common dso_local global i8* null, align 8
@TL_OUT_TYPE = common dso_local global i32 0, align 4
@tl_type_none = common dso_local global i32 0, align 4
@TLF_ALLOW_PREPEND = common dso_local global i32 0, align 4
@TL_OUT_SIZE = common dso_local global i32* null, align 8
@TL_ERROR = common dso_local global i64 0, align 8
@TL_ERRNUM = common dso_local global i64 0, align 8
@TL_OUT_POS = common dso_local global i64 0, align 8
@TL_OUT_QID = common dso_local global i64 0, align 8
@TL_OUT_REMAINING = common dso_local global i32 0, align 4
@TL_IN_TYPE = common dso_local global i64 0, align 8
@TL_COPY_THROUGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, %struct.tl_out_methods*, i32, i32, i64)* @__tl_store_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tl_store_init(i8* %0, i8* %1, i32 %2, %struct.tl_out_methods* %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tl_out_methods*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.tl_out_methods* %3, %struct.tl_out_methods** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %15 = load %struct.tl_out_methods*, %struct.tl_out_methods** @TL_OUT_METHODS, align 8
  %16 = icmp ne %struct.tl_out_methods* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %7
  %18 = load %struct.tl_out_methods*, %struct.tl_out_methods** @TL_OUT_METHODS, align 8
  %19 = getelementptr inbounds %struct.tl_out_methods, %struct.tl_out_methods* %18, i32 0, i32 4
  %20 = load i32 (...)*, i32 (...)** %19, align 8
  %21 = icmp ne i32 (...)* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.tl_out_methods*, %struct.tl_out_methods** @TL_OUT_METHODS, align 8
  %24 = getelementptr inbounds %struct.tl_out_methods, %struct.tl_out_methods* %23, i32 0, i32 4
  %25 = load i32 (...)*, i32 (...)** %24, align 8
  %26 = call i32 (...) %25()
  br label %27

27:                                               ; preds = %22, %17, %7
  %28 = load i8*, i8** %8, align 8
  store i8* %28, i8** @TL_OUT, align 8
  %29 = load i8*, i8** %9, align 8
  store i8* %29, i8** @TL_OUT_EXTRA, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.tl_out_methods*, %struct.tl_out_methods** %11, align 8
  store %struct.tl_out_methods* %33, %struct.tl_out_methods** @TL_OUT_METHODS, align 8
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* @TL_OUT_TYPE, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @tl_type_none, align 4
  store i32 %36, i32* @TL_OUT_TYPE, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load %struct.tl_out_methods*, %struct.tl_out_methods** @TL_OUT_METHODS, align 8
  %39 = getelementptr inbounds %struct.tl_out_methods, %struct.tl_out_methods* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @TLF_ALLOW_PREPEND, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %37
  %45 = load %struct.tl_out_methods*, %struct.tl_out_methods** @TL_OUT_METHODS, align 8
  %46 = getelementptr inbounds %struct.tl_out_methods, %struct.tl_out_methods* %45, i32 0, i32 3
  %47 = load i64 (i64)*, i64 (i64)** %46, align 8
  %48 = load %struct.tl_out_methods*, %struct.tl_out_methods** @TL_OUT_METHODS, align 8
  %49 = getelementptr inbounds %struct.tl_out_methods, %struct.tl_out_methods* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 12, %50
  %52 = call i64 %47(i64 %51)
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** @TL_OUT_SIZE, align 8
  br label %54

54:                                               ; preds = %44, %37
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* @TL_ERROR, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i64, i64* @TL_ERROR, align 8
  %62 = call i32 @free(i64 %61)
  store i64 0, i64* @TL_ERROR, align 8
  store i64 0, i64* @TL_ERRNUM, align 8
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %54
  store i64 0, i64* @TL_OUT_POS, align 8
  %65 = load i64, i64* %14, align 8
  store i64 %65, i64* @TL_OUT_QID, align 8
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* @TL_OUT_REMAINING, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load %struct.tl_out_methods*, %struct.tl_out_methods** @TL_OUT_METHODS, align 8
  %71 = icmp ne %struct.tl_out_methods* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.tl_out_methods*, %struct.tl_out_methods** @TL_OUT_METHODS, align 8
  %74 = getelementptr inbounds %struct.tl_out_methods, %struct.tl_out_methods* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @TL_IN_TYPE, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  br label %80

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %72
  %81 = phi i32 [ %78, %72 ], [ 0, %79 ]
  store i32 %81, i32* @TL_COPY_THROUGH, align 4
  br label %83

82:                                               ; preds = %64
  store i32 0, i32* @TL_COPY_THROUGH, align 4
  br label %83

83:                                               ; preds = %82, %80
  ret i32 0
}

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

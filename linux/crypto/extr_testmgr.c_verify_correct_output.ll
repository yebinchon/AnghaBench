; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_verify_correct_output.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_verify_correct_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_sglist = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TESTMGR_POISON_LEN = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_sglist*, i8*, i32, i32, i32)* @verify_correct_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_correct_output(%struct.test_sglist* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.test_sglist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.test_sglist* %0, %struct.test_sglist** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %93, %5
  %18 = load i32, i32* %12, align 4
  %19 = load %struct.test_sglist*, %struct.test_sglist** %7, align 8
  %20 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %96

23:                                               ; preds = %17
  %24 = load %struct.test_sglist*, %struct.test_sglist** %7, align 8
  %25 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %24, i32 0, i32 1
  %26 = load %struct.scatterlist*, %struct.scatterlist** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %26, i64 %28
  store %struct.scatterlist* %29, %struct.scatterlist** %13, align 8
  %30 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %31 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %14, align 4
  %33 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %34 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %23
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sub i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %93

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %15, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %14, align 4
  %52 = sub i32 %51, %50
  store i32 %52, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %46, %23
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @min(i32 %54, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %58 = call i32 @sg_page(%struct.scatterlist* %57)
  %59 = call i8* @page_address(i32 %58)
  %60 = load i32, i32* %15, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8* %62, i8** %16, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i64 @memcmp(i8* %63, i8* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %53
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %106

71:                                               ; preds = %53
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i8*, i8** %16, align 8
  %76 = load i32, i32* %14, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i32, i32* @TESTMGR_POISON_LEN, align 4
  %80 = call i32 @testmgr_is_poison(i8* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* @EOVERFLOW, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %106

85:                                               ; preds = %74, %71
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %9, align 4
  %88 = sub i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = zext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %8, align 8
  br label %93

93:                                               ; preds = %85, %42
  %94 = load i32, i32* %12, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %17

96:                                               ; preds = %17
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i64 @WARN_ON(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %106

105:                                              ; preds = %96
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %105, %102, %82, %68
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @testmgr_is_poison(i8*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

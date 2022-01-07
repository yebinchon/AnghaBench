; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-number-to-int32.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-number-to-int32.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }

@NAN = common dso_local global i32 0, align 4
@INFINITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x %struct.TYPE_4__], align 16
  %3 = alloca i32, align 4
  %4 = alloca [22 x %struct.TYPE_4__], align 16
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call i32 (...) @TEST_INIT()
  %7 = getelementptr inbounds [16 x %struct.TYPE_4__], [16 x %struct.TYPE_4__]* %2, i64 0, i64 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i64 1, i64* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i64 1, i64* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i64 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* @NAN, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %16, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* @NAN, align 4
  %24 = sub nsw i32 0, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %22, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* @INFINITY, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %29, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i32 0, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* @INFINITY, align 4
  %37 = sub nsw i32 0, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %35, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 0, i32* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i64 1, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i64 1, i64* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i32 0, i32* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i64 -1, i64* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i64 4294967295, i64* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i32 0, i32* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i64 4294967295, i64* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i64 4294967295, i64* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store i32 0, i32* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 -4294967295, i64* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i64 1, i64* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  store i32 0, i32* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i64 4294967296, i64* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i32 0, i32* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i64 -4294967296, i64* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i32 0, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i64 4294967297, i64* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i64 1, i64* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i32 0, i32* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i64 -4294967297, i64* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i64 4294967295, i64* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i32 0, i32* %80, align 8
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %100, %0
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp ult i64 %83, 16
  br i1 %84, label %85, label %103

85:                                               ; preds = %81
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [16 x %struct.TYPE_4__], [16 x %struct.TYPE_4__]* %2, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @ecma_number_to_uint32(i32 %90)
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [16 x %struct.TYPE_4__], [16 x %struct.TYPE_4__]* %2, i64 0, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %91, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @TEST_ASSERT(i32 %98)
  br label %100

100:                                              ; preds = %85
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %3, align 4
  br label %81

103:                                              ; preds = %81
  %104 = getelementptr inbounds [22 x %struct.TYPE_4__], [22 x %struct.TYPE_4__]* %4, i64 0, i64 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i64 1, i64* %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i64 1, i64* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  store i32 0, i32* %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i64 0, i64* %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  store i32 0, i32* %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* @NAN, align 4
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %113, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i64 0, i64* %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  store i32 0, i32* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* @NAN, align 4
  %121 = sub nsw i32 0, %120
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %119, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i64 0, i64* %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  store i32 0, i32* %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* @INFINITY, align 4
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %126, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  store i64 0, i64* %129, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  store i32 0, i32* %130, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* @INFINITY, align 4
  %134 = sub nsw i32 0, %133
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %132, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  store i64 0, i64* %136, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  store i32 0, i32* %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 1
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  store i64 0, i64* %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  store i64 0, i64* %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  store i32 0, i32* %141, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store i64 0, i64* %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  store i64 0, i64* %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  store i32 0, i32* %145, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  store i64 1, i64* %147, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  store i64 1, i64* %148, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  store i32 0, i32* %149, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i64 -1, i64* %151, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  store i64 -1, i64* %152, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  store i32 0, i32* %153, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 1
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  store i64 4294967295, i64* %155, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  store i64 -1, i64* %156, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 2
  store i32 0, i32* %157, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  store i64 -4294967295, i64* %159, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  store i64 1, i64* %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  store i32 0, i32* %161, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 1
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  store i64 4294967296, i64* %163, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  store i64 0, i64* %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  store i32 0, i32* %165, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i64 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  store i64 -4294967296, i64* %167, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  store i64 0, i64* %168, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  store i32 0, i32* %169, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 1
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  store i64 4294967297, i64* %171, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  store i64 1, i64* %172, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 2
  store i32 0, i32* %173, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 1
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  store i64 -4294967297, i64* %175, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  store i64 -1, i64* %176, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  store i32 0, i32* %177, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i64 1
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  store i64 2147483648, i64* %179, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  store i64 -2147483648, i64* %180, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  store i32 0, i32* %181, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i64 1
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  store i64 -2147483648, i64* %183, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  store i64 -2147483648, i64* %184, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 2
  store i32 0, i32* %185, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i64 1
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  store i64 2147483647, i64* %187, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  store i64 2147483647, i64* %188, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  store i32 0, i32* %189, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 1
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  store i64 -2147483647, i64* %191, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  store i64 -2147483647, i64* %192, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  store i32 0, i32* %193, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i64 1
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  store i64 -2147483649, i64* %195, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  store i64 2147483647, i64* %196, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 2
  store i32 0, i32* %197, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i64 1
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  store i64 2147483649, i64* %199, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 1
  store i64 -2147483647, i64* %200, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 2
  store i32 0, i32* %201, align 8
  store i32 0, i32* %5, align 4
  br label %202

202:                                              ; preds = %221, %103
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = icmp ult i64 %204, 22
  br i1 %205, label %206, label %224

206:                                              ; preds = %202
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [22 x %struct.TYPE_4__], [22 x %struct.TYPE_4__]* %4, i64 0, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i64 @ecma_number_to_int32(i32 %211)
  %213 = load i32, i32* %5, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [22 x %struct.TYPE_4__], [22 x %struct.TYPE_4__]* %4, i64 0, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %212, %217
  %219 = zext i1 %218 to i32
  %220 = call i32 @TEST_ASSERT(i32 %219)
  br label %221

221:                                              ; preds = %206
  %222 = load i32, i32* %5, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %5, align 4
  br label %202

224:                                              ; preds = %202
  ret i32 0
}

declare dso_local i32 @TEST_INIT(...) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i64 @ecma_number_to_uint32(i32) #1

declare dso_local i64 @ecma_number_to_int32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

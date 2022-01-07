; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_h2o_hpack_encode_string.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_h2o_hpack_encode_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @h2o_hpack_encode_string(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [8 x i8], align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i64 @H2O_LIKELY(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %65

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @h2o_hpack_encode_huffman(i8* %18, i8* %19, i64 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @SIZE_MAX, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @H2O_LIKELY(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %16
  %29 = load i64, i64* %8, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @encode_int_is_onebyte(i32 %30, i32 7)
  %32 = call i64 @H2O_LIKELY(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i64, i64* %8, align 8
  %36 = or i64 128, %35
  %37 = trunc i64 %36 to i8
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 %37, i8* %39, align 1
  store i64 1, i64* %9, align 8
  br label %60

40:                                               ; preds = %28
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  store i8 -128, i8* %41, align 1
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %43 = load i64, i64* %8, align 8
  %44 = call i8* @h2o_hpack_encode_int(i8* %42, i64 %43, i32 7)
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  store i64 %48, i64* %9, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @memmove(i8* %51, i8* %53, i64 %54)
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @memcpy(i8* %56, i8* %57, i64 %58)
  br label %60

60:                                               ; preds = %40, %34
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %61, %62
  store i64 %63, i64* %4, align 8
  br label %70

64:                                               ; preds = %16
  br label %65

65:                                               ; preds = %64, %3
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i64 @encode_as_is(i8* %66, i8* %67, i64 %68)
  store i64 %69, i64* %4, align 8
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i64, i64* %4, align 8
  ret i64 %71
}

declare dso_local i64 @H2O_LIKELY(i32) #1

declare dso_local i64 @h2o_hpack_encode_huffman(i8*, i8*, i64) #1

declare dso_local i32 @encode_int_is_onebyte(i32, i32) #1

declare dso_local i8* @h2o_hpack_encode_int(i8*, i64, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @encode_as_is(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

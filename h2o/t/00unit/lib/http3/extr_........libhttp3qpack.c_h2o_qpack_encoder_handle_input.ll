; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_h2o_qpack_encoder_handle_input.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_h2o_qpack_encoder_handle_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H2O_HTTP3_ERROR_INCOMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_qpack_encoder_handle_input(i32* %0, i32** %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8** %3, i8*** %8, align 8
  %14 = load i32**, i32*** %6, align 8
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %59, %4
  %17 = load i32*, i32** %9, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i1 [ false, %16 ], [ %22, %20 ]
  br i1 %24, label %25, label %62

25:                                               ; preds = %23
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 6
  switch i32 %28, label %39 [
    i32 0, label %29
    i32 1, label %49
  ]

29:                                               ; preds = %25
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @decode_int(i32* %11, i32** %9, i32* %30, i32 6)
  store i32 %31, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %63

34:                                               ; preds = %29
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i8**, i8*** %8, align 8
  %38 = call i32 @handle_table_state_synchronize(i32* %35, i32 %36, i8** %37)
  store i32 %38, i32* %10, align 4
  br label %59

39:                                               ; preds = %25
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @decode_int(i32* %12, i32** %9, i32* %40, i32 7)
  store i32 %41, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %63

44:                                               ; preds = %39
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i8**, i8*** %8, align 8
  %48 = call i32 @handle_header_ack(i32* %45, i32 %46, i8** %47)
  store i32 %48, i32* %10, align 4
  br label %59

49:                                               ; preds = %25
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @decode_int(i32* %13, i32** %9, i32* %50, i32 6)
  store i32 %51, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %63

54:                                               ; preds = %49
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i8**, i8*** %8, align 8
  %58 = call i32 @handle_stream_cancellation(i32* %55, i32 %56, i8** %57)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %54, %44, %34
  %60 = load i32*, i32** %9, align 8
  %61 = load i32**, i32*** %6, align 8
  store i32* %60, i32** %61, align 8
  br label %16

62:                                               ; preds = %23
  br label %63

63:                                               ; preds = %62, %53, %43, %33
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @H2O_HTTP3_ERROR_INCOMPLETE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %67, %63
  %69 = load i32, i32* %10, align 4
  ret i32 %69
}

declare dso_local i32 @decode_int(i32*, i32**, i32*, i32) #1

declare dso_local i32 @handle_table_state_synchronize(i32*, i32, i8**) #1

declare dso_local i32 @handle_header_ack(i32*, i32, i8**) #1

declare dso_local i32 @handle_stream_cancellation(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

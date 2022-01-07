; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_frame.c_h2o_http2_encode_frame_header.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_frame.c_h2o_http2_encode_frame_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"invalid length\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @h2o_http2_encode_frame_header(i8** %0, i64 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i64, i64* %7, align 8
  %12 = icmp ugt i64 %11, 16777215
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = call i32 @h2o_fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %5
  %16 = load i8**, i8*** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i8** @h2o_http2_encode24u(i8** %16, i32 %18)
  store i8** %19, i8*** %6, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i8**, i8*** %6, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %6, align 8
  store i8* %20, i8** %21, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %25, i8*** %6, align 8
  store i8* %23, i8** %24, align 8
  %26 = load i8**, i8*** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i8** @h2o_http2_encode32u(i8** %26, i32 %27)
  store i8** %28, i8*** %6, align 8
  %29 = load i8**, i8*** %6, align 8
  ret i8** %29
}

declare dso_local i32 @h2o_fatal(i8*) #1

declare dso_local i8** @h2o_http2_encode24u(i8**, i32) #1

declare dso_local i8** @h2o_http2_encode32u(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

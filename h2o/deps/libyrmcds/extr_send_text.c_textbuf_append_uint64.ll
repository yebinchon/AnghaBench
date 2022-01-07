; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send_text.c_textbuf_append_uint64.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send_text.c_textbuf_append_uint64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @textbuf_append_uint64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @textbuf_append_uint64(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [20 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %9 = getelementptr inbounds i8, i8* %8, i64 20
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %21, %2
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 -1
  store i8* %12, i8** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = srem i32 %13, 10
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sdiv i32 %15, 10
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 48, %17
  %19 = trunc i32 %18 to i8
  %20 = load i8*, i8** %6, align 8
  store i8 %19, i8* %20, align 1
  br label %21

21:                                               ; preds = %10
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %10, label %24

24:                                               ; preds = %21
  %25 = load i32*, i32** %3, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %28 = load i8*, i8** %6, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = add nsw i64 %31, 20
  %33 = call i32 @textbuf_append_string(i32* %25, i8* %26, i64 %32)
  ret void
}

declare dso_local i32 @textbuf_append_string(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

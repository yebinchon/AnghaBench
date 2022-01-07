; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_flatten_sized_text.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_flatten_sized_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flatten_sized_text.pattern = internal constant [1681 x i8] c"hello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0Ahello world\0A\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i64)* @flatten_sized_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flatten_sized_text(i32* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = urem i64 %10, 12
  %12 = getelementptr inbounds i8, i8* getelementptr inbounds ([1681 x i8], [1681 x i8]* @flatten_sized_text.pattern, i64 0, i64 0), i64 %11
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = ptrtoint i8* %15 to i64
  %17 = sub i64 %16, ptrtoint ([1681 x i8]* @flatten_sized_text.pattern to i64)
  %18 = icmp ule i64 %17, 1680
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @memcpy(i8* %21, i8* %22, i64 %23)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

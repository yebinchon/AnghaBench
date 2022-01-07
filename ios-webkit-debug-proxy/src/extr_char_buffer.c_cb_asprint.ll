; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_char_buffer.c_cb_asprint.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_char_buffer.c_cb_asprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cb_asprint(i8** %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @cb_sprint(i8* null, i8* %13, i32 %14, i32 %15, i32 %16)
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = add i64 %19, 1
  %21 = mul i64 %20, 1
  %22 = call i64 @malloc(i64 %21)
  %23 = inttoptr i64 %22 to i8*
  %24 = load i8**, i8*** %7, align 8
  store i8* %23, i8** %24, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %37

29:                                               ; preds = %5
  %30 = load i8**, i8*** %7, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @cb_sprint(i8* %31, i8* %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %29, %28
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @cb_sprint(i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

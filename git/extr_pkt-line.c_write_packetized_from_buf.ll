; ModuleID = '/home/carl/AnghaBench/git/extr_pkt-line.c_write_packetized_from_buf.c'
source_filename = "/home/carl/AnghaBench/git/extr_pkt-line.c_write_packetized_from_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LARGE_PACKET_DATA_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_packetized_from_buf(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %30, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %8, align 8
  %17 = sub i64 %15, %16
  %18 = load i64, i64* @LARGE_PACKET_DATA_MAX, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i64, i64* @LARGE_PACKET_DATA_MAX, align 8
  store i64 %21, i64* %9, align 8
  br label %26

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %8, align 8
  %25 = sub i64 %23, %24
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %22, %20
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %40

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @packet_write_gently(i32 %31, i8* %34, i64 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %8, align 8
  br label %10

40:                                               ; preds = %29, %10
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @packet_flush_gently(i32 %44)
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @packet_write_gently(i32, i8*, i64) #1

declare dso_local i32 @packet_flush_gently(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

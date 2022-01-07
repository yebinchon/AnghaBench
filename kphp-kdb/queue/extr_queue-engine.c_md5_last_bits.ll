; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_md5_last_bits.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_md5_last_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md5_last_bits(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strlen(i8* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* %4, align 4
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %10 = call i32 @md5_hex(i8* %7, i32 %8, i8* %9)
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 29
  %12 = load i8, i8* %11, align 1
  %13 = call i32 @conv_hex_digit(i8 signext %12)
  %14 = mul nsw i32 %13, 256
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 30
  %16 = load i8, i8* %15, align 2
  %17 = call i32 @conv_hex_digit(i8 signext %16)
  %18 = mul nsw i32 %17, 16
  %19 = add nsw i32 %14, %18
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 31
  %21 = load i8, i8* %20, align 1
  %22 = call i32 @conv_hex_digit(i8 signext %21)
  %23 = add nsw i32 %19, %22
  ret i32 %23
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @md5_hex(i8*, i32, i8*) #1

declare dso_local i32 @conv_hex_digit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

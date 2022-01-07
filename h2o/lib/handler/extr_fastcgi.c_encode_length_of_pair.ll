; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_fastcgi.c_encode_length_of_pair.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_fastcgi.c_encode_length_of_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @encode_length_of_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @encode_length_of_pair(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ult i64 %5, 127
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i64, i64* %4, align 8
  %9 = trunc i64 %8 to i8
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %3, align 8
  store i8 %9, i8* %10, align 1
  br label %35

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = lshr i64 %13, 24
  %15 = trunc i64 %14 to i8
  %16 = zext i8 %15 to i32
  %17 = or i32 %16, 128
  %18 = trunc i32 %17 to i8
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %3, align 8
  store i8 %18, i8* %19, align 1
  %21 = load i64, i64* %4, align 8
  %22 = lshr i64 %21, 16
  %23 = trunc i64 %22 to i8
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  store i8 %23, i8* %24, align 1
  %26 = load i64, i64* %4, align 8
  %27 = lshr i64 %26, 8
  %28 = trunc i64 %27 to i8
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %3, align 8
  store i8 %28, i8* %29, align 1
  %31 = load i64, i64* %4, align 8
  %32 = trunc i64 %31 to i8
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %3, align 8
  store i8 %32, i8* %33, align 1
  br label %35

35:                                               ; preds = %12, %7
  %36 = load i8*, i8** %3, align 8
  ret i8* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_parser.c_extract_protocol.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_parser.c_extract_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"HTTP/1.0\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"HTTP/1.1\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"HTTP/2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @extract_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @extract_protocol(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strncmp(i8* %5, i8* %6, i32 8)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strncmp(i8* %11, i8* %12, i32 8)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strncmp(i8* %17, i8* %18, i32 6)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %24

22:                                               ; preds = %16, %10, %1
  %23 = load i8*, i8** %4, align 8
  store i8* %23, i8** %2, align 8
  br label %25

24:                                               ; preds = %16
  store i8* null, i8** %2, align 8
  br label %25

25:                                               ; preds = %24, %22
  %26 = load i8*, i8** %2, align 8
  ret i8* %26
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

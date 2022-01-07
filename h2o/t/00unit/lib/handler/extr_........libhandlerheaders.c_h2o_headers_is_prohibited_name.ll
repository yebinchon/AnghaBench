; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerheaders.c_h2o_headers_is_prohibited_name.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerheaders.c_h2o_headers_is_prohibited_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H2O_TOKEN_CONNECTION = common dso_local global i32* null, align 8
@H2O_TOKEN_CONTENT_LENGTH = common dso_local global i32* null, align 8
@H2O_TOKEN_TRANSFER_ENCODING = common dso_local global i32* null, align 8
@H2O_TOKEN_DATE = common dso_local global i32* null, align 8
@H2O_TOKEN_SERVER = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_headers_is_prohibited_name(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32*, i32** @H2O_TOKEN_CONNECTION, align 8
  %6 = icmp eq i32* %4, %5
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = load i32*, i32** @H2O_TOKEN_CONTENT_LENGTH, align 8
  %10 = icmp eq i32* %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** @H2O_TOKEN_TRANSFER_ENCODING, align 8
  %14 = icmp eq i32* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %7, %1
  store i32 1, i32* %2, align 4
  br label %26

16:                                               ; preds = %11
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** @H2O_TOKEN_DATE, align 8
  %19 = icmp eq i32* %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** @H2O_TOKEN_SERVER, align 8
  %23 = icmp eq i32* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16
  store i32 1, i32* %2, align 4
  br label %26

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %15
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

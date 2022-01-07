; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c___tl_nbit_raw_msg_copy_through.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c___tl_nbit_raw_msg_copy_through.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_STD_BUFFER = common dso_local global i32 0, align 4
@TL_OUT_RAW_MSG = common dso_local global i32 0, align 4
@TL_IN_NBIT = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @__tl_nbit_raw_msg_copy_through to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tl_nbit_raw_msg_copy_through(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %24, %12
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @MSG_STD_BUFFER, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @MSG_STD_BUFFER, align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @TL_OUT_RAW_MSG, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i8* @rwm_postpone_alloc(i32 %26, i32 %27)
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32*, i32** @TL_IN_NBIT, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @nbit_read_in(i32* %32, i8* %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %3, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %13

43:                                               ; preds = %13
  br label %77

44:                                               ; preds = %2
  %45 = load i32*, i32** @TL_IN_NBIT, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %58, %44
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @MSG_STD_BUFFER, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @MSG_STD_BUFFER, align 4
  br label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @TL_OUT_RAW_MSG, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i8* @rwm_postpone_alloc(i32 %60, i32 %61)
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = ptrtoint i8* %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @nbit_read_in(i32* %7, i8* %66, i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %3, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %3, align 4
  br label %47

76:                                               ; preds = %47
  br label %77

77:                                               ; preds = %76, %43
  ret void
}

declare dso_local i8* @rwm_postpone_alloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nbit_read_in(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

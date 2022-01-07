; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c___tl_conn_raw_msg_copy_through.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c___tl_conn_raw_msg_copy_through.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MSG_STD_BUFFER = common dso_local global i32 0, align 4
@TL_OUT_RAW_MSG = common dso_local global i32 0, align 4
@TL_IN_CONN = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @__tl_conn_raw_msg_copy_through to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tl_conn_raw_msg_copy_through(i32 %0, i32 %1) #0 {
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
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %24, %12
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %44

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
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TL_IN_CONN, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @read_in(i32* %33, i8* %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %3, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %13

44:                                               ; preds = %13
  br label %80

45:                                               ; preds = %2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TL_IN_CONN, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @nbit_set(i32* %7, i32* %47)
  br label %49

49:                                               ; preds = %60, %45
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %49
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @MSG_STD_BUFFER, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @MSG_STD_BUFFER, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @TL_OUT_RAW_MSG, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i8* @rwm_postpone_alloc(i32 %62, i32 %63)
  store i8* %64, i8** %9, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @nbit_read_in(i32* %7, i8* %68, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %3, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %3, align 4
  br label %49

78:                                               ; preds = %49
  %79 = call i32 @nbit_clear(i32* %7)
  br label %80

80:                                               ; preds = %78, %44
  ret void
}

declare dso_local i8* @rwm_postpone_alloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i8*, i32) #1

declare dso_local i32 @nbit_set(i32*, i32*) #1

declare dso_local i32 @nbit_read_in(i32*, i8*, i32) #1

declare dso_local i32 @nbit_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

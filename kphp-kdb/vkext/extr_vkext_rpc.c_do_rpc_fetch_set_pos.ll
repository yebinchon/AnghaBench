; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_do_rpc_fetch_set_pos.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_do_rpc_fetch_set_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@fetch = common dso_local global i32 0, align 4
@inbuf = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Trying to fetch from empty buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Trying to set bad position\0A\00", align 1
@RPC_BUFFER_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_rpc_fetch_set_pos(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* @fetch, align 4
  %7 = call i32 @ADD_CNT(i32 %6)
  %8 = load i32, i32* @fetch, align 4
  %9 = call i32 @START_TIMER(i32 %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inbuf, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = call i8* @strdup(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %14 = load i8**, i8*** %5, align 8
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* @fetch, align 4
  %16 = call i32 @END_TIMER(i32 %15)
  store i32 0, i32* %3, align 4
  br label %55

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inbuf, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inbuf, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %20, %17
  %32 = call i8* @strdup(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i8**, i8*** %5, align 8
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @fetch, align 4
  %35 = call i32 @END_TIMER(i32 %34)
  store i32 0, i32* %3, align 4
  br label %55

36:                                               ; preds = %20
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inbuf, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RPC_BUFFER_MAGIC, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i8**, i8*** %5, align 8
  store i8* null, i8** %44, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inbuf, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inbuf, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* @fetch, align 4
  %54 = call i32 @END_TIMER(i32 %53)
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %36, %31, %12
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @ADD_CNT(i32) #1

declare dso_local i32 @START_TIMER(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @END_TIMER(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

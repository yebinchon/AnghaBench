; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_do_rpc_fetch_double.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_do_rpc_fetch_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@fetch = common dso_local global i32 0, align 4
@inbuf = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Trying to fetch from empty buffer\0A\00", align 1
@RPC_BUFFER_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Can not fetch double from inbuf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @do_rpc_fetch_double(i8** %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i8**, align 8
  %4 = alloca double, align 8
  store i8** %0, i8*** %3, align 8
  %5 = load i32, i32* @fetch, align 4
  %6 = call i32 @ADD_CNT(i32 %5)
  %7 = load i32, i32* @fetch, align 4
  %8 = call i32 @START_TIMER(i32 %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @inbuf, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = call i8* @strdup(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %13 = load i8**, i8*** %3, align 8
  store i8* %12, i8** %13, align 8
  store double 0.000000e+00, double* %2, align 8
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @inbuf, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RPC_BUFFER_MAGIC, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @inbuf, align 8
  %23 = call i64 @buffer_read_double(%struct.TYPE_3__* %22, double* %4)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = call i8* @strdup(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i8**, i8*** %3, align 8
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* @fetch, align 4
  %29 = call i32 @END_TIMER(i32 %28)
  store double 0.000000e+00, double* %2, align 8
  br label %35

30:                                               ; preds = %14
  %31 = load i32, i32* @fetch, align 4
  %32 = call i32 @END_TIMER(i32 %31)
  %33 = load i8**, i8*** %3, align 8
  store i8* null, i8** %33, align 8
  %34 = load double, double* %4, align 8
  store double %34, double* %2, align 8
  br label %35

35:                                               ; preds = %30, %25, %11
  %36 = load double, double* %2, align 8
  ret double %36
}

declare dso_local i32 @ADD_CNT(i32) #1

declare dso_local i32 @START_TIMER(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @buffer_read_double(%struct.TYPE_3__*, double*) #1

declare dso_local i32 @END_TIMER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

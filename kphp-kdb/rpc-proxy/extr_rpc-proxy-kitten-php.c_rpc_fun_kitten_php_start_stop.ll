; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-kitten-php.c_rpc_fun_kitten_php_start_stop.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-kitten-php.c_rpc_fun_kitten_php_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.connection* }
%struct.connection = type { i32 }
%struct.TYPE_3__ = type { i32 }

@RPC_READY = common dso_local global i32 0, align 4
@RPC_STOP_READY = common dso_local global i32 0, align 4
@CQ = common dso_local global %struct.TYPE_4__* null, align 8
@tl_type_conn = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Kitten php %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"disconnected\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Kitten_php_ready: res = %d, fetch_error = %s, new_size = %d\0A\00", align 1
@tl = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@RPC_FUN_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_fun_kitten_php_start_stop(i8** %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.connection*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @RPC_READY, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @RPC_STOP_READY, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16, %2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CQ, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @tl_type_conn, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %47

27:                                               ; preds = %20
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CQ, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.connection*, %struct.connection** %29, align 8
  store %struct.connection* %30, %struct.connection** %7, align 8
  %31 = call i32 @tl_fetch_skip(i32 12)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @RPC_READY, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)
  %37 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.connection*, %struct.connection** %7, align 8
  %40 = call i32 @kitten_php_ready(i32 %38, %struct.connection* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tl, i32 0, i32 0), align 4
  %43 = call i32 (...) @kitten_php_current_count()
  %44 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32 %42, i32 %43)
  store i32 0, i32* %3, align 4
  br label %47

45:                                               ; preds = %16
  %46 = load i32, i32* @RPC_FUN_NEXT, align 4
  br label %47

47:                                               ; preds = %45, %27, %26
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @tl_fetch_skip(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @kitten_php_ready(i32, %struct.connection*) #1

declare dso_local i32 @kitten_php_current_count(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

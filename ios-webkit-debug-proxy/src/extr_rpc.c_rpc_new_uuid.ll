; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_new_uuid.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_rpc.c_rpc_new_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RPC_ERROR = common dso_local global i32 0, align 4
@rpc_new_uuid.seeded = internal global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%x%x-%x-%x-%x-%x%x%x\00", align 1
@RPC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_new_uuid(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  %4 = load i8**, i8*** %3, align 8
  %5 = icmp ne i8** %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @RPC_ERROR, align 4
  store i32 %7, i32* %2, align 4
  br label %34

8:                                                ; preds = %1
  %9 = load i32, i32* @rpc_new_uuid.seeded, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  store i32 1, i32* @rpc_new_uuid.seeded, align 4
  %12 = call i32 @time(i32* null)
  %13 = call i32 @srand(i32 %12)
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i8**, i8*** %3, align 8
  %16 = call i32 (...) @rand()
  %17 = call i32 (...) @rand()
  %18 = call i32 (...) @rand()
  %19 = call i32 (...) @rand()
  %20 = and i32 %19, 4095
  %21 = or i32 %20, 16384
  %22 = call i32 (...) @rand()
  %23 = srem i32 %22, 16383
  %24 = add nsw i32 %23, 32768
  %25 = call i32 (...) @rand()
  %26 = call i32 (...) @rand()
  %27 = call i32 (...) @rand()
  %28 = call i64 @asprintf(i8** %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18, i32 %21, i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %14
  %31 = load i32, i32* @RPC_ERROR, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %14
  %33 = load i32, i32* @RPC_SUCCESS, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %30, %6
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @asprintf(i8**, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

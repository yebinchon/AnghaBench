; ModuleID = '/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_free.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_base = type { i32, i32, i32, i32 }
%struct.evrpc = type { i32 }
%struct.evrpc_hook = type { i32 }
%struct.evrpc_hook_ctx = type { i32, i32, i32, i32 }

@next = common dso_local global i32 0, align 4
@EVRPC_INPUT = common dso_local global i32 0, align 4
@EVRPC_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evrpc_free(%struct.evrpc_base* %0) #0 {
  %2 = alloca %struct.evrpc_base*, align 8
  %3 = alloca %struct.evrpc*, align 8
  %4 = alloca %struct.evrpc_hook*, align 8
  %5 = alloca %struct.evrpc_hook_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.evrpc_base* %0, %struct.evrpc_base** %2, align 8
  br label %7

7:                                                ; preds = %13, %1
  %8 = load %struct.evrpc_base*, %struct.evrpc_base** %2, align 8
  %9 = getelementptr inbounds %struct.evrpc_base, %struct.evrpc_base* %8, i32 0, i32 3
  %10 = call i8* @TAILQ_FIRST(i32* %9)
  %11 = bitcast i8* %10 to %struct.evrpc*
  store %struct.evrpc* %11, %struct.evrpc** %3, align 8
  %12 = icmp ne %struct.evrpc* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %7
  %14 = load %struct.evrpc_base*, %struct.evrpc_base** %2, align 8
  %15 = bitcast %struct.evrpc_base* %14 to %struct.evrpc_hook_ctx*
  %16 = load %struct.evrpc*, %struct.evrpc** %3, align 8
  %17 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @evrpc_unregister_rpc(%struct.evrpc_hook_ctx* %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @EVUTIL_ASSERT(i32 %22)
  br label %7

24:                                               ; preds = %7
  br label %25

25:                                               ; preds = %31, %24
  %26 = load %struct.evrpc_base*, %struct.evrpc_base** %2, align 8
  %27 = getelementptr inbounds %struct.evrpc_base, %struct.evrpc_base* %26, i32 0, i32 2
  %28 = call i8* @TAILQ_FIRST(i32* %27)
  %29 = bitcast i8* %28 to %struct.evrpc_hook_ctx*
  store %struct.evrpc_hook_ctx* %29, %struct.evrpc_hook_ctx** %5, align 8
  %30 = icmp ne %struct.evrpc_hook_ctx* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.evrpc_base*, %struct.evrpc_base** %2, align 8
  %33 = getelementptr inbounds %struct.evrpc_base, %struct.evrpc_base* %32, i32 0, i32 2
  %34 = load %struct.evrpc_hook_ctx*, %struct.evrpc_hook_ctx** %5, align 8
  %35 = load i32, i32* @next, align 4
  %36 = call i32 @TAILQ_REMOVE(i32* %33, %struct.evrpc_hook_ctx* %34, i32 %35)
  %37 = load %struct.evrpc_hook_ctx*, %struct.evrpc_hook_ctx** %5, align 8
  %38 = call i32 @mm_free(%struct.evrpc_hook_ctx* %37)
  br label %25

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %46, %39
  %41 = load %struct.evrpc_base*, %struct.evrpc_base** %2, align 8
  %42 = getelementptr inbounds %struct.evrpc_base, %struct.evrpc_base* %41, i32 0, i32 1
  %43 = call i8* @TAILQ_FIRST(i32* %42)
  %44 = bitcast i8* %43 to %struct.evrpc_hook*
  store %struct.evrpc_hook* %44, %struct.evrpc_hook** %4, align 8
  %45 = icmp ne %struct.evrpc_hook* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.evrpc_base*, %struct.evrpc_base** %2, align 8
  %48 = bitcast %struct.evrpc_base* %47 to %struct.evrpc_hook_ctx*
  %49 = load i32, i32* @EVRPC_INPUT, align 4
  %50 = load %struct.evrpc_hook*, %struct.evrpc_hook** %4, align 8
  %51 = call i32 @evrpc_remove_hook(%struct.evrpc_hook_ctx* %48, i32 %49, %struct.evrpc_hook* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @EVUTIL_ASSERT(i32 %52)
  br label %40

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %61, %54
  %56 = load %struct.evrpc_base*, %struct.evrpc_base** %2, align 8
  %57 = getelementptr inbounds %struct.evrpc_base, %struct.evrpc_base* %56, i32 0, i32 0
  %58 = call i8* @TAILQ_FIRST(i32* %57)
  %59 = bitcast i8* %58 to %struct.evrpc_hook*
  store %struct.evrpc_hook* %59, %struct.evrpc_hook** %4, align 8
  %60 = icmp ne %struct.evrpc_hook* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load %struct.evrpc_base*, %struct.evrpc_base** %2, align 8
  %63 = bitcast %struct.evrpc_base* %62 to %struct.evrpc_hook_ctx*
  %64 = load i32, i32* @EVRPC_OUTPUT, align 4
  %65 = load %struct.evrpc_hook*, %struct.evrpc_hook** %4, align 8
  %66 = call i32 @evrpc_remove_hook(%struct.evrpc_hook_ctx* %63, i32 %64, %struct.evrpc_hook* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @EVUTIL_ASSERT(i32 %67)
  br label %55

69:                                               ; preds = %55
  %70 = load %struct.evrpc_base*, %struct.evrpc_base** %2, align 8
  %71 = bitcast %struct.evrpc_base* %70 to %struct.evrpc_hook_ctx*
  %72 = call i32 @mm_free(%struct.evrpc_hook_ctx* %71)
  ret void
}

declare dso_local i8* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @evrpc_unregister_rpc(%struct.evrpc_hook_ctx*, i32) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.evrpc_hook_ctx*, i32) #1

declare dso_local i32 @mm_free(%struct.evrpc_hook_ctx*) #1

declare dso_local i32 @evrpc_remove_hook(%struct.evrpc_hook_ctx*, i32, %struct.evrpc_hook*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

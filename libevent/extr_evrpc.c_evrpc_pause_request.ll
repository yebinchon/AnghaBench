; ModuleID = '/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_pause_request.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_pause_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_hooks_ = type { i32 }
%struct.evrpc_hook_ctx = type { void (i8*, i32)*, i8* }

@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, {}*)* @evrpc_pause_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evrpc_pause_request(i8* %0, i8* %1, {}* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca {}*, align 8
  %8 = alloca %struct.evrpc_hooks_*, align 8
  %9 = alloca %struct.evrpc_hook_ctx*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store {}* %2, {}** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.evrpc_hooks_*
  store %struct.evrpc_hooks_* %11, %struct.evrpc_hooks_** %8, align 8
  %12 = call %struct.evrpc_hook_ctx* @mm_malloc(i32 16)
  store %struct.evrpc_hook_ctx* %12, %struct.evrpc_hook_ctx** %9, align 8
  %13 = load %struct.evrpc_hook_ctx*, %struct.evrpc_hook_ctx** %9, align 8
  %14 = icmp eq %struct.evrpc_hook_ctx* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %29

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.evrpc_hook_ctx*, %struct.evrpc_hook_ctx** %9, align 8
  %19 = getelementptr inbounds %struct.evrpc_hook_ctx, %struct.evrpc_hook_ctx* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load {}*, {}** %7, align 8
  %21 = bitcast {}* %20 to void (i8*, i32)*
  %22 = load %struct.evrpc_hook_ctx*, %struct.evrpc_hook_ctx** %9, align 8
  %23 = getelementptr inbounds %struct.evrpc_hook_ctx, %struct.evrpc_hook_ctx* %22, i32 0, i32 0
  store void (i8*, i32)* %21, void (i8*, i32)** %23, align 8
  %24 = load %struct.evrpc_hooks_*, %struct.evrpc_hooks_** %8, align 8
  %25 = getelementptr inbounds %struct.evrpc_hooks_, %struct.evrpc_hooks_* %24, i32 0, i32 0
  %26 = load %struct.evrpc_hook_ctx*, %struct.evrpc_hook_ctx** %9, align 8
  %27 = load i32, i32* @next, align 4
  %28 = call i32 @TAILQ_INSERT_TAIL(i32* %25, %struct.evrpc_hook_ctx* %26, i32 %27)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %16, %15
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.evrpc_hook_ctx* @mm_malloc(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.evrpc_hook_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

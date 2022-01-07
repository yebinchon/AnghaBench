; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-async.c_opal_async_comp_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-async.c_opal_async_comp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.notifier_block = type { i32 }
%struct.opal_msg = type { i32* }

@OPAL_MSG_ASYNC_COMP = common dso_local global i64 0, align 8
@opal_async_comp_lock = common dso_local global i32 0, align 4
@opal_async_tokens = common dso_local global %struct.TYPE_2__* null, align 8
@ASYNC_TOKEN_COMPLETED = common dso_local global i32 0, align 4
@ASYNC_TOKEN_ABANDONED = common dso_local global i32 0, align 4
@opal_async_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @opal_async_comp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_async_comp_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.opal_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.opal_msg*
  store %struct.opal_msg* %13, %struct.opal_msg** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @OPAL_MSG_ASYNC_COMP, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %53

18:                                               ; preds = %3
  %19 = load %struct.opal_msg*, %struct.opal_msg** %8, align 8
  %20 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @be64_to_cpu(i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @spin_lock_irqsave(i32* @opal_async_comp_lock, i64 %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @opal_async_tokens, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @ASYNC_TOKEN_COMPLETED, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @opal_async_tokens, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* @opal_async_comp_lock, i64 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @ASYNC_TOKEN_ABANDONED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %18
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @opal_async_release_token(i64 %43)
  store i32 0, i32* %4, align 4
  br label %53

45:                                               ; preds = %18
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @opal_async_tokens, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.opal_msg*, %struct.opal_msg** %8, align 8
  %51 = call i32 @memcpy(i32* %49, %struct.opal_msg* %50, i32 8)
  %52 = call i32 @wake_up(i32* @opal_async_wait)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %45, %42, %17
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @opal_async_release_token(i64) #1

declare dso_local i32 @memcpy(i32*, %struct.opal_msg*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-memory-errors.c_opal_memory_err_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-memory-errors.c_opal_memory_err_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.OpalMsgNode = type { i32, i32 }

@OPAL_MSG_MEM_ERR = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"MEMORY_ERROR: out of memory, Opal message event nothandled\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@opal_mem_err_lock = common dso_local global i32 0, align 4
@opal_memory_err_list = common dso_local global i32 0, align 4
@mem_error_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @opal_memory_err_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_memory_err_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.OpalMsgNode*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @OPAL_MSG_MEM_ERR, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

14:                                               ; preds = %3
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.OpalMsgNode* @kzalloc(i32 8, i32 %15)
  store %struct.OpalMsgNode* %16, %struct.OpalMsgNode** %9, align 8
  %17 = load %struct.OpalMsgNode*, %struct.OpalMsgNode** %9, align 8
  %18 = icmp ne %struct.OpalMsgNode* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %36

23:                                               ; preds = %14
  %24 = load %struct.OpalMsgNode*, %struct.OpalMsgNode** %9, align 8
  %25 = getelementptr inbounds %struct.OpalMsgNode, %struct.OpalMsgNode* %24, i32 0, i32 1
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @memcpy(i32* %25, i8* %26, i32 4)
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_lock_irqsave(i32* @opal_mem_err_lock, i64 %28)
  %30 = load %struct.OpalMsgNode*, %struct.OpalMsgNode** %9, align 8
  %31 = getelementptr inbounds %struct.OpalMsgNode, %struct.OpalMsgNode* %30, i32 0, i32 0
  %32 = call i32 @list_add(i32* %31, i32* @opal_memory_err_list)
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* @opal_mem_err_lock, i64 %33)
  %35 = call i32 @schedule_work(i32* @mem_error_work)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %23, %19, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.OpalMsgNode* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

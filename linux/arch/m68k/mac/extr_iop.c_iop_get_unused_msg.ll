; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/mac/extr_iop.c_iop_get_unused_msg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/mac/extr_iop.c_iop_get_unused_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_msg = type { i64 }

@NUM_IOP_MSGS = common dso_local global i32 0, align 4
@iop_msg_pool = common dso_local global %struct.iop_msg* null, align 8
@IOP_MSGSTATUS_UNUSED = common dso_local global i64 0, align 8
@IOP_MSGSTATUS_WAITING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iop_msg* ()* @iop_get_unused_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iop_msg* @iop_get_unused_msg() #0 {
  %1 = alloca %struct.iop_msg*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @local_irq_save(i64 %4)
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %33, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @NUM_IOP_MSGS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = load %struct.iop_msg*, %struct.iop_msg** @iop_msg_pool, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.iop_msg, %struct.iop_msg* %11, i64 %13
  %15 = getelementptr inbounds %struct.iop_msg, %struct.iop_msg* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IOP_MSGSTATUS_UNUSED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %10
  %20 = load i64, i64* @IOP_MSGSTATUS_WAITING, align 8
  %21 = load %struct.iop_msg*, %struct.iop_msg** @iop_msg_pool, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.iop_msg, %struct.iop_msg* %21, i64 %23
  %25 = getelementptr inbounds %struct.iop_msg, %struct.iop_msg* %24, i32 0, i32 0
  store i64 %20, i64* %25, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @local_irq_restore(i64 %26)
  %28 = load %struct.iop_msg*, %struct.iop_msg** @iop_msg_pool, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.iop_msg, %struct.iop_msg* %28, i64 %30
  store %struct.iop_msg* %31, %struct.iop_msg** %1, align 8
  br label %39

32:                                               ; preds = %10
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %6

36:                                               ; preds = %6
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @local_irq_restore(i64 %37)
  store %struct.iop_msg* null, %struct.iop_msg** %1, align 8
  br label %39

39:                                               ; preds = %36, %19
  %40 = load %struct.iop_msg*, %struct.iop_msg** %1, align 8
  ret %struct.iop_msg* %40
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

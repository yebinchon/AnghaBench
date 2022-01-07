; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_ipl_parm.c_store_ipl_parmblock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_ipl_parm.c_store_ipl_parmblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@DIAG308_STORE = common dso_local global i32 0, align 4
@ipl_block = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@DIAG308_RC_OK = common dso_local global i32 0, align 4
@IPL_MAX_SUPPORTED_VERSION = common dso_local global i64 0, align 8
@ipl_block_valid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_ipl_parmblock() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @DIAG308_STORE, align 4
  %3 = call i32 @__diag308(i32 %2, %struct.TYPE_5__* @ipl_block)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @DIAG308_RC_OK, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ipl_block, i32 0, i32 0, i32 0), align 8
  %9 = load i64, i64* @IPL_MAX_SUPPORTED_VERSION, align 8
  %10 = icmp sle i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 1, i32* @ipl_block_valid, align 4
  br label %12

12:                                               ; preds = %11, %7, %0
  ret void
}

declare dso_local i32 @__diag308(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

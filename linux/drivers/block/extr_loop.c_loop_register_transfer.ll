; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_register_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_register_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_func_table = type { i32 }

@MAX_LO_CRYPT = common dso_local global i32 0, align 4
@xfer_funcs = common dso_local global %struct.loop_func_table** null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @loop_register_transfer(%struct.loop_func_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.loop_func_table*, align 8
  %4 = alloca i32, align 4
  store %struct.loop_func_table* %0, %struct.loop_func_table** %3, align 8
  %5 = load %struct.loop_func_table*, %struct.loop_func_table** %3, align 8
  %6 = getelementptr inbounds %struct.loop_func_table, %struct.loop_func_table* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MAX_LO_CRYPT, align 4
  %10 = icmp uge i32 %8, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.loop_func_table**, %struct.loop_func_table*** @xfer_funcs, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.loop_func_table*, %struct.loop_func_table** %12, i64 %14
  %16 = load %struct.loop_func_table*, %struct.loop_func_table** %15, align 8
  %17 = icmp ne %struct.loop_func_table* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %11, %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %27

21:                                               ; preds = %11
  %22 = load %struct.loop_func_table*, %struct.loop_func_table** %3, align 8
  %23 = load %struct.loop_func_table**, %struct.loop_func_table*** @xfer_funcs, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.loop_func_table*, %struct.loop_func_table** %23, i64 %25
  store %struct.loop_func_table* %22, %struct.loop_func_table** %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

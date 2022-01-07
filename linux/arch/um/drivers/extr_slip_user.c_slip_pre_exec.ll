; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_slip_user.c_slip_pre_exec.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_slip_user.c_slip_pre_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slip_pre_exec_data = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @slip_pre_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slip_pre_exec(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.slip_pre_exec_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.slip_pre_exec_data*
  store %struct.slip_pre_exec_data* %5, %struct.slip_pre_exec_data** %3, align 8
  %6 = load %struct.slip_pre_exec_data*, %struct.slip_pre_exec_data** %3, align 8
  %7 = getelementptr inbounds %struct.slip_pre_exec_data, %struct.slip_pre_exec_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.slip_pre_exec_data*, %struct.slip_pre_exec_data** %3, align 8
  %12 = getelementptr inbounds %struct.slip_pre_exec_data, %struct.slip_pre_exec_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @dup2(i64 %13, i32 0)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.slip_pre_exec_data*, %struct.slip_pre_exec_data** %3, align 8
  %17 = getelementptr inbounds %struct.slip_pre_exec_data, %struct.slip_pre_exec_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @dup2(i64 %18, i32 1)
  %20 = load %struct.slip_pre_exec_data*, %struct.slip_pre_exec_data** %3, align 8
  %21 = getelementptr inbounds %struct.slip_pre_exec_data, %struct.slip_pre_exec_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.slip_pre_exec_data*, %struct.slip_pre_exec_data** %3, align 8
  %26 = getelementptr inbounds %struct.slip_pre_exec_data, %struct.slip_pre_exec_data* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @close(i64 %27)
  br label %29

29:                                               ; preds = %24, %15
  ret void
}

declare dso_local i32 @dup2(i64, i32) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

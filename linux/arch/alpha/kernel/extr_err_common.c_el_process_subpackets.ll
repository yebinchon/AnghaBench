; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_common.c_el_process_subpackets.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_common.c_el_process_subpackets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.el_subpacket = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"%sPROCESSING SUBPACKET %d\0A\00", align 1
@err_print_prefix = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @el_process_subpackets(%struct.el_subpacket* %0, i32 %1) #0 {
  %3 = alloca %struct.el_subpacket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.el_subpacket*, align 8
  %6 = alloca i32, align 4
  store %struct.el_subpacket* %0, %struct.el_subpacket** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %8 = ptrtoint %struct.el_subpacket* %7 to i64
  %9 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  %10 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %8, %11
  %13 = inttoptr i64 %12 to %struct.el_subpacket*
  store %struct.el_subpacket* %13, %struct.el_subpacket** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %29, %2
  %15 = load %struct.el_subpacket*, %struct.el_subpacket** %5, align 8
  %16 = icmp ne %struct.el_subpacket* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %32

23:                                               ; preds = %21
  %24 = load i32, i32* @err_print_prefix, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.el_subpacket*, %struct.el_subpacket** %5, align 8
  %28 = call %struct.el_subpacket* @el_process_subpacket(%struct.el_subpacket* %27)
  store %struct.el_subpacket* %28, %struct.el_subpacket** %5, align 8
  br label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %14

32:                                               ; preds = %21
  ret void
}

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local %struct.el_subpacket* @el_process_subpacket(%struct.el_subpacket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

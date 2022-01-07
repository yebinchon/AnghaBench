; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_genpool.c_mce_gen_pool_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_genpool.c_mce_gen_pool_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce = type { i32 }
%struct.mce_evt_llist = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@mce_evt_pool = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MCE records pool full!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mce_event_llist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mce_gen_pool_add(%struct.mce* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mce*, align 8
  %4 = alloca %struct.mce_evt_llist*, align 8
  store %struct.mce* %0, %struct.mce** %3, align 8
  %5 = load %struct.mce*, %struct.mce** %3, align 8
  %6 = call i64 @filter_mce(%struct.mce* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load i32, i32* @mce_evt_pool, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %11
  %18 = load i32, i32* @mce_evt_pool, align 4
  %19 = call i64 @gen_pool_alloc(i32 %18, i32 8)
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.mce_evt_llist*
  store %struct.mce_evt_llist* %21, %struct.mce_evt_llist** %4, align 8
  %22 = load %struct.mce_evt_llist*, %struct.mce_evt_llist** %4, align 8
  %23 = icmp ne %struct.mce_evt_llist* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %17
  %29 = load %struct.mce_evt_llist*, %struct.mce_evt_llist** %4, align 8
  %30 = getelementptr inbounds %struct.mce_evt_llist, %struct.mce_evt_llist* %29, i32 0, i32 1
  %31 = load %struct.mce*, %struct.mce** %3, align 8
  %32 = call i32 @memcpy(i32* %30, %struct.mce* %31, i32 4)
  %33 = load %struct.mce_evt_llist*, %struct.mce_evt_llist** %4, align 8
  %34 = getelementptr inbounds %struct.mce_evt_llist, %struct.mce_evt_llist* %33, i32 0, i32 0
  %35 = call i32 @llist_add(i32* %34, i32* @mce_event_llist)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %28, %24, %14, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @filter_mce(%struct.mce*) #1

declare dso_local i64 @gen_pool_alloc(i32, i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.mce*, i32) #1

declare dso_local i32 @llist_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

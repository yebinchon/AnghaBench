; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_add_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_add_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_3__, %struct.TYPE_4__, i32, i8* }
%struct.TYPE_3__ = type { i32, i8* }
%struct.TYPE_4__ = type { i32, i32, %struct.btmrvl_private* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can not allocate priv\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Allocate buffer for btmrvl_adapter failed!\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Starting kthread...\00", align 1
@btmrvl_service_main_thread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"btmrvl_main_service\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btmrvl_private* @btmrvl_add_card(i8* %0) #0 {
  %2 = alloca %struct.btmrvl_private*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.btmrvl_private*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i8* @kzalloc(i32 48, i32 %5)
  %7 = bitcast i8* %6 to %struct.btmrvl_private*
  store %struct.btmrvl_private* %7, %struct.btmrvl_private** %4, align 8
  %8 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %9 = icmp ne %struct.btmrvl_private* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @BT_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %67

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 1, i32 %13)
  %15 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %16 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %18 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %17, i32 0, i32 3
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %12
  %22 = call i32 @BT_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %64

23:                                               ; preds = %12
  %24 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %25 = call i32 @btmrvl_init_adapter(%struct.btmrvl_private* %24)
  %26 = call i32 @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %28 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %29 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store %struct.btmrvl_private* %27, %struct.btmrvl_private** %30, align 8
  %31 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %32 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %31, i32 0, i32 2
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %35 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load i32, i32* @btmrvl_service_main_thread, align 4
  %39 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %40 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %39, i32 0, i32 1
  %41 = call i32 @kthread_run(i32 %38, %struct.TYPE_4__* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %43 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %46 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @IS_ERR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %23
  br label %61

52:                                               ; preds = %23
  %53 = load i8*, i8** %3, align 8
  %54 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %55 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i8* %53, i8** %56, align 8
  %57 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %58 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  store %struct.btmrvl_private* %60, %struct.btmrvl_private** %2, align 8
  br label %68

61:                                               ; preds = %51
  %62 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %63 = call i32 @btmrvl_free_adapter(%struct.btmrvl_private* %62)
  br label %64

64:                                               ; preds = %61, %21
  %65 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %66 = call i32 @kfree(%struct.btmrvl_private* %65)
  br label %67

67:                                               ; preds = %64, %10
  store %struct.btmrvl_private* null, %struct.btmrvl_private** %2, align 8
  br label %68

68:                                               ; preds = %67, %52
  %69 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  ret %struct.btmrvl_private* %69
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @btmrvl_init_adapter(%struct.btmrvl_private*) #1

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kthread_run(i32, %struct.TYPE_4__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @btmrvl_free_adapter(%struct.btmrvl_private*) #1

declare dso_local i32 @kfree(%struct.btmrvl_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

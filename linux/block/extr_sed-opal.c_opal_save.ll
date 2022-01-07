; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_save.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_lock_unlock = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.opal_suspend_data = type { i32, %struct.opal_lock_unlock }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, %struct.opal_lock_unlock*)* @opal_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_save(%struct.opal_dev* %0, %struct.opal_lock_unlock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca %struct.opal_lock_unlock*, align 8
  %6 = alloca %struct.opal_suspend_data*, align 8
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store %struct.opal_lock_unlock* %1, %struct.opal_lock_unlock** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.opal_suspend_data* @kzalloc(i32 8, i32 %7)
  store %struct.opal_suspend_data* %8, %struct.opal_suspend_data** %6, align 8
  %9 = load %struct.opal_suspend_data*, %struct.opal_suspend_data** %6, align 8
  %10 = icmp ne %struct.opal_suspend_data* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.opal_suspend_data*, %struct.opal_suspend_data** %6, align 8
  %16 = getelementptr inbounds %struct.opal_suspend_data, %struct.opal_suspend_data* %15, i32 0, i32 1
  %17 = load %struct.opal_lock_unlock*, %struct.opal_lock_unlock** %5, align 8
  %18 = bitcast %struct.opal_lock_unlock* %16 to i8*
  %19 = bitcast %struct.opal_lock_unlock* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load %struct.opal_lock_unlock*, %struct.opal_lock_unlock** %5, align 8
  %21 = getelementptr inbounds %struct.opal_lock_unlock, %struct.opal_lock_unlock* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.opal_suspend_data*, %struct.opal_suspend_data** %6, align 8
  %26 = getelementptr inbounds %struct.opal_suspend_data, %struct.opal_suspend_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %28 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %31 = call i32 @setup_opal_dev(%struct.opal_dev* %30)
  %32 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %33 = load %struct.opal_suspend_data*, %struct.opal_suspend_data** %6, align 8
  %34 = call i32 @add_suspend_info(%struct.opal_dev* %32, %struct.opal_suspend_data* %33)
  %35 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %36 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %14, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.opal_suspend_data* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @setup_opal_dev(%struct.opal_dev*) #1

declare dso_local i32 @add_suspend_info(%struct.opal_dev*, %struct.opal_suspend_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

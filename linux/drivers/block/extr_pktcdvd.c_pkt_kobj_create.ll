; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_kobj_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_kobj_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_kobj = type { i32, %struct.pktcdvd_device* }
%struct.pktcdvd_device = type { i32 }
%struct.kobject = type { i32 }
%struct.kobj_type = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pktcdvd_kobj* (%struct.pktcdvd_device*, i8*, %struct.kobject*, %struct.kobj_type*)* @pkt_kobj_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pktcdvd_kobj* @pkt_kobj_create(%struct.pktcdvd_device* %0, i8* %1, %struct.kobject* %2, %struct.kobj_type* %3) #0 {
  %5 = alloca %struct.pktcdvd_kobj*, align 8
  %6 = alloca %struct.pktcdvd_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca %struct.kobj_type*, align 8
  %10 = alloca %struct.pktcdvd_kobj*, align 8
  %11 = alloca i32, align 4
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.kobject* %2, %struct.kobject** %8, align 8
  store %struct.kobj_type* %3, %struct.kobj_type** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.pktcdvd_kobj* @kzalloc(i32 16, i32 %12)
  store %struct.pktcdvd_kobj* %13, %struct.pktcdvd_kobj** %10, align 8
  %14 = load %struct.pktcdvd_kobj*, %struct.pktcdvd_kobj** %10, align 8
  %15 = icmp ne %struct.pktcdvd_kobj* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store %struct.pktcdvd_kobj* null, %struct.pktcdvd_kobj** %5, align 8
  br label %39

17:                                               ; preds = %4
  %18 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %19 = load %struct.pktcdvd_kobj*, %struct.pktcdvd_kobj** %10, align 8
  %20 = getelementptr inbounds %struct.pktcdvd_kobj, %struct.pktcdvd_kobj* %19, i32 0, i32 1
  store %struct.pktcdvd_device* %18, %struct.pktcdvd_device** %20, align 8
  %21 = load %struct.pktcdvd_kobj*, %struct.pktcdvd_kobj** %10, align 8
  %22 = getelementptr inbounds %struct.pktcdvd_kobj, %struct.pktcdvd_kobj* %21, i32 0, i32 0
  %23 = load %struct.kobj_type*, %struct.kobj_type** %9, align 8
  %24 = load %struct.kobject*, %struct.kobject** %8, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @kobject_init_and_add(i32* %22, %struct.kobj_type* %23, %struct.kobject* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load %struct.pktcdvd_kobj*, %struct.pktcdvd_kobj** %10, align 8
  %31 = getelementptr inbounds %struct.pktcdvd_kobj, %struct.pktcdvd_kobj* %30, i32 0, i32 0
  %32 = call i32 @kobject_put(i32* %31)
  store %struct.pktcdvd_kobj* null, %struct.pktcdvd_kobj** %5, align 8
  br label %39

33:                                               ; preds = %17
  %34 = load %struct.pktcdvd_kobj*, %struct.pktcdvd_kobj** %10, align 8
  %35 = getelementptr inbounds %struct.pktcdvd_kobj, %struct.pktcdvd_kobj* %34, i32 0, i32 0
  %36 = load i32, i32* @KOBJ_ADD, align 4
  %37 = call i32 @kobject_uevent(i32* %35, i32 %36)
  %38 = load %struct.pktcdvd_kobj*, %struct.pktcdvd_kobj** %10, align 8
  store %struct.pktcdvd_kobj* %38, %struct.pktcdvd_kobj** %5, align 8
  br label %39

39:                                               ; preds = %33, %29, %16
  %40 = load %struct.pktcdvd_kobj*, %struct.pktcdvd_kobj** %5, align 8
  ret %struct.pktcdvd_kobj* %40
}

declare dso_local %struct.pktcdvd_kobj* @kzalloc(i32, i32) #1

declare dso_local i32 @kobject_init_and_add(i32*, %struct.kobj_type*, %struct.kobject*, i8*, i8*) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

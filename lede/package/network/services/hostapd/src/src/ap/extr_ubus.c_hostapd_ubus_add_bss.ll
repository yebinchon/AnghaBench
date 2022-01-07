; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_ubus_add_bss.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_ubus_add_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.hostapd_data = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, %struct.ubus_object }
%struct.ubus_object = type { i8*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"hostapd.%s\00", align 1
@avl_compare_macaddr = common dso_local global i32 0, align 4
@bss_object_type = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ctx = common dso_local global i32 0, align 4
@MESH_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostapd_ubus_add_bss(%struct.hostapd_data* %0) #0 {
  %2 = alloca %struct.hostapd_data*, align 8
  %3 = alloca %struct.ubus_object*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %2, align 8
  %6 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %7 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store %struct.ubus_object* %8, %struct.ubus_object** %3, align 8
  %9 = call i32 (...) @hostapd_ubus_init()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %14 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @asprintf(i8** %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %42

21:                                               ; preds = %12
  %22 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %23 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* @avl_compare_macaddr, align 4
  %26 = call i32 @avl_init(i32* %24, i32 %25, i32 0, i32* null)
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %29 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %31 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %30, i32 0, i32 3
  store %struct.TYPE_6__* @bss_object_type, %struct.TYPE_6__** %31, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bss_object_type, i32 0, i32 1), align 4
  %33 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %34 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bss_object_type, i32 0, i32 0), align 4
  %36 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %37 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @ctx, align 4
  %39 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %40 = call i32 @ubus_add_object(i32 %38, %struct.ubus_object* %39)
  store i32 %40, i32* %5, align 4
  %41 = call i32 (...) @hostapd_ubus_ref_inc()
  br label %42

42:                                               ; preds = %21, %20, %11
  ret void
}

declare dso_local i32 @hostapd_ubus_init(...) #1

declare dso_local i64 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @avl_init(i32*, i32, i32, i32*) #1

declare dso_local i32 @ubus_add_object(i32, %struct.ubus_object*) #1

declare dso_local i32 @hostapd_ubus_ref_inc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

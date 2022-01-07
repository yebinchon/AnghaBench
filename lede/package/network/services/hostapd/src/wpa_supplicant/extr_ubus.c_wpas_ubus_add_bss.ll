; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/hostapd/src/wpa_supplicant/extr_ubus.c_wpas_ubus_add_bss.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/hostapd/src/wpa_supplicant/extr_ubus.c_wpas_ubus_add_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.wpa_supplicant = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ubus_object }
%struct.ubus_object = type { i8*, i32, i32, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [18 x i8] c"wpa_supplicant.%s\00", align 1
@bss_object_type = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ctx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_ubus_add_bss(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca %struct.ubus_object*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %6 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %7 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.ubus_object* %8, %struct.ubus_object** %3, align 8
  %9 = call i32 (...) @wpas_ubus_init()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @asprintf(i8** %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %35

19:                                               ; preds = %12
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %22 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %24 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %23, i32 0, i32 3
  store %struct.TYPE_4__* @bss_object_type, %struct.TYPE_4__** %24, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bss_object_type, i32 0, i32 1), align 4
  %26 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %27 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bss_object_type, i32 0, i32 0), align 4
  %29 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %30 = getelementptr inbounds %struct.ubus_object, %struct.ubus_object* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @ctx, align 4
  %32 = load %struct.ubus_object*, %struct.ubus_object** %3, align 8
  %33 = call i32 @ubus_add_object(i32 %31, %struct.ubus_object* %32)
  store i32 %33, i32* %5, align 4
  %34 = call i32 (...) @wpas_ubus_ref_inc()
  br label %35

35:                                               ; preds = %19, %18, %11
  ret void
}

declare dso_local i32 @wpas_ubus_init(...) #1

declare dso_local i64 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @ubus_add_object(i32, %struct.ubus_object*) #1

declare dso_local i32 @wpas_ubus_ref_inc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

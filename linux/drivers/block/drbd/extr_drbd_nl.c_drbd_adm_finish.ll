; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_config_context = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.genl_info = type { i32 }

@drbd_destroy_device = common dso_local global i32* null, align 8
@drbd_destroy_connection = common dso_local global i32 0, align 4
@drbd_destroy_resource = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_config_context*, %struct.genl_info*, i32)* @drbd_adm_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbd_adm_finish(%struct.drbd_config_context* %0, %struct.genl_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drbd_config_context*, align 8
  %6 = alloca %struct.genl_info*, align 8
  %7 = alloca i32, align 4
  store %struct.drbd_config_context* %0, %struct.drbd_config_context** %5, align 8
  store %struct.genl_info* %1, %struct.genl_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.drbd_config_context*, %struct.drbd_config_context** %5, align 8
  %9 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %8, i32 0, i32 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.drbd_config_context*, %struct.drbd_config_context** %5, align 8
  %14 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %13, i32 0, i32 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32*, i32** @drbd_destroy_device, align 8
  %18 = call i32 @kref_put(i32* %16, i32* %17)
  %19 = load %struct.drbd_config_context*, %struct.drbd_config_context** %5, align 8
  %20 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %19, i32 0, i32 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %20, align 8
  br label %21

21:                                               ; preds = %12, %3
  %22 = load %struct.drbd_config_context*, %struct.drbd_config_context** %5, align 8
  %23 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %22, i32 0, i32 3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.drbd_config_context*, %struct.drbd_config_context** %5, align 8
  %28 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @kref_put(i32* %30, i32* @drbd_destroy_connection)
  %32 = load %struct.drbd_config_context*, %struct.drbd_config_context** %5, align 8
  %33 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %32, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %33, align 8
  br label %34

34:                                               ; preds = %26, %21
  %35 = load %struct.drbd_config_context*, %struct.drbd_config_context** %5, align 8
  %36 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = icmp ne %struct.TYPE_6__* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.drbd_config_context*, %struct.drbd_config_context** %5, align 8
  %41 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32*, i32** @drbd_destroy_resource, align 8
  %45 = call i32 @kref_put(i32* %43, i32* %44)
  %46 = load %struct.drbd_config_context*, %struct.drbd_config_context** %5, align 8
  %47 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %46, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %47, align 8
  br label %48

48:                                               ; preds = %39, %34
  %49 = load %struct.drbd_config_context*, %struct.drbd_config_context** %5, align 8
  %50 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %67

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.drbd_config_context*, %struct.drbd_config_context** %5, align 8
  %59 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  %62 = load %struct.drbd_config_context*, %struct.drbd_config_context** %5, align 8
  %63 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %66 = call i32 @drbd_adm_send_reply(i32 %64, %struct.genl_info* %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %56, %53
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @kref_put(i32*, i32*) #1

declare dso_local i32 @drbd_adm_send_reply(i32, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_check_resource_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_check_resource_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_config_context = type { i8*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"resource name missing\00", align 1
@ERR_MANDATORY_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid resource name\00", align 1
@ERR_INVALID_REQUEST = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_config_context*)* @drbd_check_resource_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbd_check_resource_name(%struct.drbd_config_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drbd_config_context*, align 8
  %4 = alloca i8*, align 8
  store %struct.drbd_config_context* %0, %struct.drbd_config_context** %3, align 8
  %5 = load %struct.drbd_config_context*, %struct.drbd_config_context** %3, align 8
  %6 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.drbd_config_context*, %struct.drbd_config_context** %3, align 8
  %17 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @drbd_msg_put_info(i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ERR_MANDATORY_TAG, align 4
  store i32 %20, i32* %2, align 4
  br label %33

21:                                               ; preds = %10
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @strchr(i8* %22, i8 signext 47)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.drbd_config_context*, %struct.drbd_config_context** %3, align 8
  %27 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @drbd_msg_put_info(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ERR_INVALID_REQUEST, align 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @NO_ERROR, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %25, %15
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @drbd_msg_put_info(i32, i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_init_stdout_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_init_stdout_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.sysc = type { i32 }

@stdout_path = common dso_local global %struct.device_node* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"stdout-path\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysc*)* @sysc_init_stdout_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysc_init_stdout_path(%struct.sysc* %0) #0 {
  %2 = alloca %struct.sysc*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i8*, align 8
  store %struct.sysc* %0, %struct.sysc** %2, align 8
  store %struct.device_node* null, %struct.device_node** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** @stdout_path, align 8
  %6 = call i64 @IS_ERR(%struct.device_node* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %36

9:                                                ; preds = %1
  %10 = load %struct.device_node*, %struct.device_node** @stdout_path, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %36

13:                                               ; preds = %9
  %14 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %14, %struct.device_node** %3, align 8
  %15 = load %struct.device_node*, %struct.device_node** %3, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %32

18:                                               ; preds = %13
  %19 = load %struct.device_node*, %struct.device_node** %3, align 8
  %20 = call i8* @of_get_property(%struct.device_node* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %32

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = call %struct.device_node* @of_find_node_by_path(i8* %25)
  store %struct.device_node* %26, %struct.device_node** %3, align 8
  %27 = load %struct.device_node*, %struct.device_node** %3, align 8
  %28 = icmp ne %struct.device_node* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %32

30:                                               ; preds = %24
  %31 = load %struct.device_node*, %struct.device_node** %3, align 8
  store %struct.device_node* %31, %struct.device_node** @stdout_path, align 8
  br label %36

32:                                               ; preds = %29, %23, %17
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.device_node* @ERR_PTR(i32 %34)
  store %struct.device_node* %35, %struct.device_node** @stdout_path, align 8
  br label %36

36:                                               ; preds = %32, %30, %12, %8
  ret void
}

declare dso_local i64 @IS_ERR(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_print_st_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_print_st_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32 }
%union.drbd_state = type { i32 }

@SS_IN_TRANSIENT_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"State change failed: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" state\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"wanted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_st_err(%struct.drbd_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %union.drbd_state, align 4
  %6 = alloca %union.drbd_state, align 4
  %7 = alloca %struct.drbd_device*, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  %10 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  store i32 %2, i32* %10, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @SS_IN_TRANSIENT_STATE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %28

15:                                               ; preds = %4
  %16 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @drbd_set_st_err_str(i32 %17)
  %19 = call i32 @drbd_err(%struct.drbd_device* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %21 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @print_st(%struct.drbd_device* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %25 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @print_st(%struct.drbd_device* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*, i32) #1

declare dso_local i32 @drbd_set_st_err_str(i32) #1

declare dso_local i32 @print_st(%struct.drbd_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_request_supply_msgs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_request_supply_msgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_user = type { i32 }
%struct.ipmi_addr = type { i32 }
%struct.kernel_ipmi_msg = type { i32 }
%struct.ipmi_recv_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipmi_request_supply_msgs(%struct.ipmi_user* %0, %struct.ipmi_addr* %1, i64 %2, %struct.kernel_ipmi_msg* %3, i8* %4, i8* %5, %struct.ipmi_recv_msg* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipmi_user*, align 8
  %11 = alloca %struct.ipmi_addr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.kernel_ipmi_msg*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ipmi_recv_msg*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ipmi_user* %0, %struct.ipmi_user** %10, align 8
  store %struct.ipmi_addr* %1, %struct.ipmi_addr** %11, align 8
  store i64 %2, i64* %12, align 8
  store %struct.kernel_ipmi_msg* %3, %struct.kernel_ipmi_msg** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store %struct.ipmi_recv_msg* %6, %struct.ipmi_recv_msg** %16, align 8
  store i32 %7, i32* %17, align 4
  store i8 0, i8* %18, align 1
  store i8 0, i8* %19, align 1
  %22 = load %struct.ipmi_user*, %struct.ipmi_user** %10, align 8
  %23 = icmp ne %struct.ipmi_user* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  br label %63

27:                                               ; preds = %8
  %28 = load %struct.ipmi_user*, %struct.ipmi_user** %10, align 8
  %29 = call %struct.ipmi_user* @acquire_ipmi_user(%struct.ipmi_user* %28, i32* %21)
  store %struct.ipmi_user* %29, %struct.ipmi_user** %10, align 8
  %30 = load %struct.ipmi_user*, %struct.ipmi_user** %10, align 8
  %31 = icmp ne %struct.ipmi_user* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %63

35:                                               ; preds = %27
  %36 = load %struct.ipmi_user*, %struct.ipmi_user** %10, align 8
  %37 = getelementptr inbounds %struct.ipmi_user, %struct.ipmi_user* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ipmi_addr*, %struct.ipmi_addr** %11, align 8
  %40 = call i32 @check_addr(i32 %38, %struct.ipmi_addr* %39, i8* %18, i8* %19)
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %35
  %44 = load %struct.ipmi_user*, %struct.ipmi_user** %10, align 8
  %45 = load %struct.ipmi_user*, %struct.ipmi_user** %10, align 8
  %46 = getelementptr inbounds %struct.ipmi_user, %struct.ipmi_user* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ipmi_addr*, %struct.ipmi_addr** %11, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %13, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %16, align 8
  %54 = load i32, i32* %17, align 4
  %55 = load i8, i8* %18, align 1
  %56 = load i8, i8* %19, align 1
  %57 = call i32 @i_ipmi_request(%struct.ipmi_user* %44, i32 %47, %struct.ipmi_addr* %48, i64 %49, %struct.kernel_ipmi_msg* %50, i8* %51, i8* %52, %struct.ipmi_recv_msg* %53, i32 %54, i8 zeroext %55, i8 zeroext %56, i32 -1, i32 0)
  store i32 %57, i32* %20, align 4
  br label %58

58:                                               ; preds = %43, %35
  %59 = load %struct.ipmi_user*, %struct.ipmi_user** %10, align 8
  %60 = load i32, i32* %21, align 4
  %61 = call i32 @release_ipmi_user(%struct.ipmi_user* %59, i32 %60)
  %62 = load i32, i32* %20, align 4
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %58, %32, %24
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local %struct.ipmi_user* @acquire_ipmi_user(%struct.ipmi_user*, i32*) #1

declare dso_local i32 @check_addr(i32, %struct.ipmi_addr*, i8*, i8*) #1

declare dso_local i32 @i_ipmi_request(%struct.ipmi_user*, i32, %struct.ipmi_addr*, i64, %struct.kernel_ipmi_msg*, i8*, i8*, %struct.ipmi_recv_msg*, i32, i8 zeroext, i8 zeroext, i32, i32) #1

declare dso_local i32 @release_ipmi_user(%struct.ipmi_user*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

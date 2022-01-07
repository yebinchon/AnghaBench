; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c_set_param_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c_set_param_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i32 }

@watchdog_user = common dso_local global i64 0, align 8
@IPMI_SET_TIMEOUT_HB_IF_NECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @set_param_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_param_str(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.kernel_param*, align 8
  %5 = alloca i32 (i8*, i32*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [16 x i8], align 16
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %4, align 8
  %9 = load %struct.kernel_param*, %struct.kernel_param** %4, align 8
  %10 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i32 (i8*, i32*)*
  store i32 (i8*, i32*)* %13, i32 (i8*, i32*)** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strncpy(i8* %14, i8* %15, i32 15)
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 15
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %19 = call i8* @strstrip(i8* %18)
  store i8* %19, i8** %8, align 8
  %20 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %5, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 %20(i8* %21, i32* null)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %34

26:                                               ; preds = %2
  %27 = call i32 (...) @check_parms()
  %28 = load i64, i64* @watchdog_user, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @IPMI_SET_TIMEOUT_HB_IF_NECESSARY, align 4
  %32 = call i32 @ipmi_set_timeout(i32 %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %26
  br label %34

34:                                               ; preds = %33, %25
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @strstrip(i8*) #1

declare dso_local i32 @check_parms(...) #1

declare dso_local i32 @ipmi_set_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

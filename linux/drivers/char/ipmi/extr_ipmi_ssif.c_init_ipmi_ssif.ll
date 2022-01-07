; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_init_ipmi_ssif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_init_ipmi_ssif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@initialized = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"IPMI SSIF Interface driver\0A\00", align 1
@num_addrs = common dso_local global i32 0, align 4
@addr = common dso_local global i32* null, align 8
@adapter_name = common dso_local global i32* null, align 8
@dbg = common dso_local global i32* null, align 8
@slave_addrs = common dso_local global i32* null, align 8
@SI_HARDCODED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Couldn't add hardcoded device at addr 0x%x\0A\00", align 1
@ssif_tryacpi = common dso_local global i64 0, align 8
@ssif_acpi_match = common dso_local global i32 0, align 4
@ssif_i2c_driver = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ssif_trydmi = common dso_local global i64 0, align 8
@ipmi_driver = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Unable to register driver: %d\0A\00", align 1
@platform_registered = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_ipmi_ssif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_ipmi_ssif() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @initialized, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %75

7:                                                ; preds = %0
  %8 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %46, %7
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @num_addrs, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %9
  %14 = load i32*, i32** @addr, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** @adapter_name, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** @dbg, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** @slave_addrs, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SI_HARDCODED, align 4
  %35 = call i32 @new_ssif_client(i32 %18, i32 %23, i32 %28, i32 %33, i32 %34, i32* null)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %13
  %39 = load i32*, i32** @addr, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %38, %13
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %9

49:                                               ; preds = %9
  %50 = load i64, i64* @ssif_tryacpi, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @ssif_acpi_match, align 4
  %54 = call i32 @ACPI_PTR(i32 %53)
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ssif_i2c_driver, i32 0, i32 1, i32 0), align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i64, i64* @ssif_trydmi, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = call i32 @platform_driver_register(i32* @ipmi_driver)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %66

65:                                               ; preds = %58
  store i32 1, i32* @platform_registered, align 4
  br label %66

66:                                               ; preds = %65, %62
  br label %67

67:                                               ; preds = %66, %55
  %68 = call i32 (...) @ssif_address_list()
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ssif_i2c_driver, i32 0, i32 0), align 4
  %69 = call i32 @i2c_add_driver(%struct.TYPE_5__* @ssif_i2c_driver)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i32 1, i32* @initialized, align 4
  br label %73

73:                                               ; preds = %72, %67
  %74 = load i32, i32* %3, align 4
  store i32 %74, i32* %1, align 4
  br label %75

75:                                               ; preds = %73, %6
  %76 = load i32, i32* %1, align 4
  ret i32 %76
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @new_ssif_client(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @ACPI_PTR(i32) #1

declare dso_local i32 @platform_driver_register(i32*) #1

declare dso_local i32 @ssif_address_list(...) #1

declare dso_local i32 @i2c_add_driver(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

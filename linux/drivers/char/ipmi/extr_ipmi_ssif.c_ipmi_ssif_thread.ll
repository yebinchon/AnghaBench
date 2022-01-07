; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_ipmi_ssif_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_ipmi_ssif_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssif_info = type { i64, i32*, i32 (%struct.ssif_info*, i32, i32*, i32)*, i32, i32, i32, i64 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ipmi_ssif_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_ssif_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ssif_info*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ssif_info*
  store %struct.ssif_info* %6, %struct.ssif_info** %3, align 8
  br label %7

7:                                                ; preds = %89, %25, %1
  %8 = call i32 (...) @kthread_should_stop()
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %90

11:                                               ; preds = %7
  %12 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %13 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %12, i32 0, i32 5
  %14 = call i32 @wait_for_completion_interruptible(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %16 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %90

20:                                               ; preds = %11
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ERESTARTSYS, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %7

26:                                               ; preds = %20
  %27 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %28 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %27, i32 0, i32 5
  %29 = call i32 @init_completion(i32* %28)
  %30 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %31 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @I2C_SMBUS_WRITE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %26
  %36 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %37 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %40 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %43 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %48 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = call i32 @i2c_smbus_write_block_data(i32 %38, i32 %41, i32 %46, i32* %50)
  store i32 %51, i32* %4, align 4
  %52 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %53 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %52, i32 0, i32 2
  %54 = load i32 (%struct.ssif_info*, i32, i32*, i32)*, i32 (%struct.ssif_info*, i32, i32*, i32)** %53, align 8
  %55 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 %54(%struct.ssif_info* %55, i32 %56, i32* null, i32 0)
  br label %89

58:                                               ; preds = %26
  %59 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %60 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %63 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %66 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @i2c_smbus_read_block_data(i32 %61, i32 %64, i32* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %58
  %72 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %73 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %72, i32 0, i32 2
  %74 = load i32 (%struct.ssif_info*, i32, i32*, i32)*, i32 (%struct.ssif_info*, i32, i32*, i32)** %73, align 8
  %75 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 %74(%struct.ssif_info* %75, i32 %76, i32* null, i32 0)
  br label %88

78:                                               ; preds = %58
  %79 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %80 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %79, i32 0, i32 2
  %81 = load i32 (%struct.ssif_info*, i32, i32*, i32)*, i32 (%struct.ssif_info*, i32, i32*, i32)** %80, align 8
  %82 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %83 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %84 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 %81(%struct.ssif_info* %82, i32 0, i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %78, %71
  br label %89

89:                                               ; preds = %88, %35
  br label %7

90:                                               ; preds = %19, %7
  ret i32 0
}

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @i2c_smbus_write_block_data(i32, i32, i32, i32*) #1

declare dso_local i32 @i2c_smbus_read_block_data(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

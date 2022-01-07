; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_dbg.c_acpi_aml_read_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_dbg.c_acpi_aml_read_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@acpi_aml_initialized = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@acpi_aml_io = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @acpi_aml_read_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_aml_read_cmd(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @acpi_aml_initialized, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  br label %12

12:                                               ; preds = %53, %2
  %13 = load i64, i64* %4, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %28, %15
  %17 = call i32 (...) @acpi_aml_readb_kern()
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_aml_io, i32 0, i32 0), align 4
  %24 = call i32 (...) @acpi_aml_kern_readable()
  %25 = call i32 @wait_event_interruptible(i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %16

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %54

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 %36, i8* %40, align 1
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  %43 = load i64, i64* %4, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = getelementptr inbounds i8, i8* %51, i64 -1
  store i8 0, i8* %52, align 1
  br label %54

53:                                               ; preds = %34
  br label %12

54:                                               ; preds = %47, %33, %12
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  br label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  ret i32 %62
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @acpi_aml_readb_kern(...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @acpi_aml_kern_readable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

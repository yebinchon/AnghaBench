; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_port_io.c_ipmi_si_port_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_port_io.c_ipmi_si_port_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_sm_io = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@port_inb = common dso_local global i32 0, align 4
@port_outb = common dso_local global i32 0, align 4
@port_inw = common dso_local global i32 0, align 4
@port_outw = common dso_local global i32 0, align 4
@port_inl = common dso_local global i32 0, align 4
@port_outl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid register size: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SI_DEVICE_NAME = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@port_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipmi_si_port_setup(%struct.si_sm_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.si_sm_io*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.si_sm_io* %0, %struct.si_sm_io** %3, align 8
  %6 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %7 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %98

14:                                               ; preds = %1
  %15 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %16 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %39 [
    i32 1, label %18
    i32 2, label %25
    i32 4, label %32
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* @port_inb, align 4
  %20 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %21 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @port_outb, align 4
  %23 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %24 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  br label %49

25:                                               ; preds = %14
  %26 = load i32, i32* @port_inw, align 4
  %27 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %28 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @port_outw, align 4
  %30 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %31 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  br label %49

32:                                               ; preds = %14
  %33 = load i32, i32* @port_inl, align 4
  %34 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %35 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @port_outl, align 4
  %37 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %38 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  br label %49

39:                                               ; preds = %14
  %40 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %41 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %44 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %98

49:                                               ; preds = %32, %25, %18
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %91, %49
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %53 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %94

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %60 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = add i32 %57, %62
  %64 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %65 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SI_DEVICE_NAME, align 4
  %68 = call i32* @request_region(i32 %63, i32 %66, i32 %67)
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %90

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %75, %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %5, align 4
  %74 = icmp ne i32 %72, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %79 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %77, %80
  %82 = add i32 %76, %81
  %83 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %84 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @release_region(i32 %82, i32 %85)
  br label %71

87:                                               ; preds = %71
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %98

90:                                               ; preds = %56
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %50

94:                                               ; preds = %50
  %95 = load i32, i32* @port_cleanup, align 4
  %96 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %97 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %87, %39, %11
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32* @request_region(i32, i32, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

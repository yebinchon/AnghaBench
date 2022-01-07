; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_mem_io.c_ipmi_si_mem_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_mem_io.c_ipmi_si_mem_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_sm_io = type { i64, i32, i32, i32, i32, i32*, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@intf_mem_inb = common dso_local global i32 0, align 4
@intf_mem_outb = common dso_local global i32 0, align 4
@intf_mem_inw = common dso_local global i32 0, align 4
@intf_mem_outw = common dso_local global i32 0, align 4
@intf_mem_inl = common dso_local global i32 0, align 4
@intf_mem_outl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid register size: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SI_DEVICE_NAME = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@mem_cleanup = common dso_local global i32 0, align 4
@mem_inq = common dso_local global i32 0, align 4
@mem_outq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipmi_si_mem_setup(%struct.si_sm_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.si_sm_io*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.si_sm_io* %0, %struct.si_sm_io** %3, align 8
  %7 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %8 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %119

15:                                               ; preds = %1
  %16 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %17 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %40 [
    i32 1, label %19
    i32 2, label %26
    i32 4, label %33
  ]

19:                                               ; preds = %15
  %20 = load i32, i32* @intf_mem_inb, align 4
  %21 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %22 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @intf_mem_outb, align 4
  %24 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %25 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  br label %50

26:                                               ; preds = %15
  %27 = load i32, i32* @intf_mem_inw, align 4
  %28 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %29 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @intf_mem_outw, align 4
  %31 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %32 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  br label %50

33:                                               ; preds = %15
  %34 = load i32, i32* @intf_mem_inl, align 4
  %35 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %36 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @intf_mem_outl, align 4
  %38 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %39 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  br label %50

40:                                               ; preds = %15
  %41 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %42 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %45 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_warn(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %119

50:                                               ; preds = %33, %26, %19
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %79, %50
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %54 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %51
  %58 = load i64, i64* %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %61 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %59, %62
  %64 = sext i32 %63 to i64
  %65 = add i64 %58, %64
  %66 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %67 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SI_DEVICE_NAME, align 4
  %70 = call i32* @request_mem_region(i64 %65, i32 %68, i32 %69)
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %57
  %73 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @mem_region_cleanup(%struct.si_sm_io* %73, i32 %74)
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %119

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %51

82:                                               ; preds = %51
  %83 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %84 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %87 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %85, %88
  %90 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %91 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %94 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %92, %95
  %97 = sub nsw i32 %89, %96
  store i32 %97, i32* %5, align 4
  %98 = load i64, i64* %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32* @ioremap(i64 %98, i32 %99)
  %101 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %102 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %101, i32 0, i32 5
  store i32* %100, i32** %102, align 8
  %103 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %104 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %103, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %82
  %108 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %109 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %110 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @mem_region_cleanup(%struct.si_sm_io* %108, i32 %111)
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %119

115:                                              ; preds = %82
  %116 = load i32, i32* @mem_cleanup, align 4
  %117 = load %struct.si_sm_io*, %struct.si_sm_io** %3, align 8
  %118 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %115, %107, %72, %40, %12
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32* @request_mem_region(i64, i32, i32) #1

declare dso_local i32 @mem_region_cleanup(%struct.si_sm_io*, i32) #1

declare dso_local i32* @ioremap(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_native_configure_queue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_native_configure_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_q = type { i32, i32*, i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error %lld getting queue info prio %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@OPAL_XIVE_EQ_ALWAYS_NOTIFY = common dso_local global i32 0, align 4
@OPAL_XIVE_EQ_ENABLED = common dso_local global i32 0, align 4
@OPAL_XIVE_EQ_ESCALATE = common dso_local global i32 0, align 4
@OPAL_BUSY = common dso_local global i32 0, align 4
@OPAL_BUSY_DELAY_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Error %lld setting queue for prio %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xive_native_configure_queue(i32 %0, %struct.xive_q* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xive_q*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.xive_q* %1, %struct.xive_q** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %6
  %22 = load i32*, i32** %11, align 8
  %23 = icmp ne i32* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %113

31:                                               ; preds = %21
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @__pa(i32* %32)
  store i32 %33, i32* %18, align 4
  br label %35

34:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = sub nsw i32 %39, 2
  %41 = shl i32 1, %40
  %42 = sub i32 %41, 1
  br label %44

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %38
  %45 = phi i32 [ %42, %38 ], [ 0, %43 ]
  %46 = load %struct.xive_q*, %struct.xive_q** %9, align 8
  %47 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.xive_q*, %struct.xive_q** %9, align 8
  %49 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = load %struct.xive_q*, %struct.xive_q** %9, align 8
  %51 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @opal_xive_get_queue_info(i32 %52, i32 %53, i32* null, i32* null, i32* %15, i32* %16, i32* null)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %14, align 4
  br label %111

63:                                               ; preds = %44
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @be64_to_cpu(i32 %64)
  %66 = load %struct.xive_q*, %struct.xive_q** %9, align 8
  %67 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @OPAL_XIVE_EQ_ALWAYS_NOTIFY, align 4
  %69 = load i32, i32* @OPAL_XIVE_EQ_ENABLED, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %63
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @be32_to_cpu(i32 %74)
  %76 = load %struct.xive_q*, %struct.xive_q** %9, align 8
  %77 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @OPAL_XIVE_EQ_ESCALATE, align 4
  %79 = load i32, i32* %17, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %17, align 4
  br label %81

81:                                               ; preds = %73, %63
  br label %82

82:                                               ; preds = %93, %81
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @opal_xive_set_queue_info(i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @OPAL_BUSY, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %96

93:                                               ; preds = %82
  %94 = load i32, i32* @OPAL_BUSY_DELAY_MS, align 4
  %95 = call i32 @msleep(i32 %94)
  br label %82

96:                                               ; preds = %92
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %101)
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %14, align 4
  br label %110

105:                                              ; preds = %96
  %106 = call i32 (...) @wmb()
  %107 = load i32*, i32** %11, align 8
  %108 = load %struct.xive_q*, %struct.xive_q** %9, align 8
  %109 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %108, i32 0, i32 1
  store i32* %107, i32** %109, align 8
  br label %110

110:                                              ; preds = %105, %99
  br label %111

111:                                              ; preds = %110, %57
  %112 = load i32, i32* %14, align 4
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %111, %28
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32 @opal_xive_get_queue_info(i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @opal_xive_set_queue_info(i32, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

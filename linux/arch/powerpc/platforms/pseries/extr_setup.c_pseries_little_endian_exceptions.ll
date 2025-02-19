; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_setup.c_pseries_little_endian_exceptions.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_setup.c_pseries_little_endian_exceptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i32)* }

@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"H_SET_MODE LE exception fail\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Could not enable little endian exceptions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pseries_little_endian_exceptions() #0 {
  %1 = alloca i64, align 8
  br label %2

2:                                                ; preds = %0, %8
  %3 = call i64 (...) @enable_little_endian_exceptions()
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = call i32 @H_IS_LONG_BUSY(i64 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %12

8:                                                ; preds = %2
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @get_longbusy_msecs(i64 %9)
  %11 = call i32 @mdelay(i32 %10)
  br label %2

12:                                               ; preds = %7
  %13 = load i64, i64* %1, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32 (i8*, i32)*, i32 (i8*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %17 = call i32 %16(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 0)
  %18 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %12
  ret void
}

declare dso_local i64 @enable_little_endian_exceptions(...) #1

declare dso_local i32 @H_IS_LONG_BUSY(i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @get_longbusy_msecs(i64) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_setup.c_pseries_big_endian_exceptions.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_setup.c_pseries_big_endian_exceptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"Could not enable big endian exceptions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pseries_big_endian_exceptions() #0 {
  %1 = alloca i64, align 8
  br label %2

2:                                                ; preds = %0, %8
  %3 = call i64 (...) @enable_big_endian_exceptions()
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
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = call i32 (...) @kdump_in_progress()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15, %12
  ret void
}

declare dso_local i64 @enable_big_endian_exceptions(...) #1

declare dso_local i32 @H_IS_LONG_BUSY(i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @get_longbusy_msecs(i64) #1

declare dso_local i32 @kdump_in_progress(...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

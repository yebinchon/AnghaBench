; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/atari/extr_debug.c_ata_par_out.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/atari/extr_debug.c_ata_par_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i8 }

@loops_per_jiffy = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@st_mfp = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@sound_ym = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @ata_par_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_par_out(i8 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  store i8 %0, i8* %3, align 1
  %6 = load i32, i32* @loops_per_jiffy, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @loops_per_jiffy, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @HZ, align 4
  %12 = sdiv i32 10000000, %11
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i32 [ %9, %8 ], [ %12, %10 ]
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %26, %13
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @st_mfp, i32 0, i32 0), align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ false, %16 ], [ %23, %20 ]
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  br label %16

27:                                               ; preds = %24
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %44

31:                                               ; preds = %27
  store i32 15, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sound_ym, i32 0, i32 0), align 4
  %32 = load i8, i8* %3, align 1
  store i8 %32, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sound_ym, i32 0, i32 1), align 4
  store i32 14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sound_ym, i32 0, i32 0), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sound_ym, i32 0, i32 0), align 4
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %4, align 1
  %35 = load i8, i8* %4, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, -33
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sound_ym, i32 0, i32 1), align 4
  %39 = call i32 (...) @MFPDELAY()
  %40 = load i8, i8* %4, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %41, 32
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sound_ym, i32 0, i32 1), align 4
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %31, %30
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @MFPDELAY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

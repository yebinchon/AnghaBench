; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip22-time.c_dosample.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip22-time.c_dosample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@SGINT_TCWORD_CNT2 = common dso_local global i32 0, align 4
@SGINT_TCWORD_CALL = common dso_local global i32 0, align 4
@SGINT_TCWORD_MRGEN = common dso_local global i32 0, align 4
@sgint = common dso_local global %struct.TYPE_2__* null, align 8
@SGINT_TCSAMP_COUNTER = common dso_local global i32 0, align 4
@SGINT_TCWORD_CLAT = common dso_local global i32 0, align 4
@SGINT_TCWORD_MSWST = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @dosample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dosample() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @SGINT_TCWORD_CNT2, align 4
  %5 = load i32, i32* @SGINT_TCWORD_CALL, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @SGINT_TCWORD_MRGEN, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgint, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @SGINT_TCSAMP_COUNTER, align 4
  %12 = and i32 %11, 255
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgint, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @SGINT_TCSAMP_COUNTER, align 4
  %16 = ashr i32 %15, 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgint, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = call i32 (...) @read_c0_count()
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %34, %0
  %21 = load i32, i32* @SGINT_TCWORD_CNT2, align 4
  %22 = load i32, i32* @SGINT_TCWORD_CLAT, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgint, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @writeb(i32 %23, i32* %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgint, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i64 @readb(i32* %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgint, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = call i64 @readb(i32* %31)
  store i64 %32, i64* %3, align 8
  %33 = call i32 (...) @read_c0_count()
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %20
  %35 = load i64, i64* %3, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %20, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @SGINT_TCWORD_CNT2, align 4
  %39 = load i32, i32* @SGINT_TCWORD_CALL, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SGINT_TCWORD_MSWST, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgint, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @writeb(i32 %42, i32* %44)
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* %1, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load i32, i32* @HZ, align 4
  %50 = sdiv i32 500000, %49
  %51 = sdiv i32 %48, %50
  %52 = load i32, i32* @HZ, align 4
  %53 = sdiv i32 500000, %52
  %54 = mul nsw i32 %51, %53
  %55 = sext i32 %54 to i64
  ret i64 %55
}

declare dso_local i32 @read_c0_count(...) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i64 @readb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

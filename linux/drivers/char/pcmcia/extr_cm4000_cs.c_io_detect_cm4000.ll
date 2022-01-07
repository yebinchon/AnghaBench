; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4000_cs.c_io_detect_cm4000.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4000_cs.c_io_detect_cm4000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm4000_dev = type { i32, i32 }

@IS_ATR_VALID = common dso_local global i32 0, align 4
@IS_CMM_ABSENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cm4000_dev*)* @io_detect_cm4000 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_detect_cm4000(i32 %0, %struct.cm4000_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cm4000_dev*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cm4000_dev* %1, %struct.cm4000_dev** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @REG_FLAGS0(i32 %6)
  %8 = call i32 @inb(i32 %7)
  %9 = and i32 %8, 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i32, i32* @IS_ATR_VALID, align 4
  %13 = load %struct.cm4000_dev*, %struct.cm4000_dev** %5, align 8
  %14 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %13, i32 0, i32 1
  %15 = call i32 @clear_bit(i32 %12, i32* %14)
  %16 = load i32, i32* @IS_CMM_ABSENT, align 4
  %17 = load %struct.cm4000_dev*, %struct.cm4000_dev** %5, align 8
  %18 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %17, i32 0, i32 1
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  store i32 0, i32* %3, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load %struct.cm4000_dev*, %struct.cm4000_dev** %5, align 8
  %22 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, 64
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @REG_FLAGS1(i32 %25)
  %27 = call i32 @xoutb(i32 %24, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @REG_FLAGS0(i32 %28)
  %30 = call i32 @inb(i32 %29)
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %20
  %34 = load i32, i32* @IS_ATR_VALID, align 4
  %35 = load %struct.cm4000_dev*, %struct.cm4000_dev** %5, align 8
  %36 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %35, i32 0, i32 1
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  %38 = load i32, i32* @IS_CMM_ABSENT, align 4
  %39 = load %struct.cm4000_dev*, %struct.cm4000_dev** %5, align 8
  %40 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %39, i32 0, i32 1
  %41 = call i32 @set_bit(i32 %38, i32* %40)
  store i32 0, i32* %3, align 4
  br label %49

42:                                               ; preds = %20
  %43 = load %struct.cm4000_dev*, %struct.cm4000_dev** %5, align 8
  %44 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @REG_FLAGS1(i32 %46)
  %48 = call i32 @xoutb(i32 %45, i32 %47)
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %42, %33, %11
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @REG_FLAGS0(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @xoutb(i32, i32) #1

declare dso_local i32 @REG_FLAGS1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

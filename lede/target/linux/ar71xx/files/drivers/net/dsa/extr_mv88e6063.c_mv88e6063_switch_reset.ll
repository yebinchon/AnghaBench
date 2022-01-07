; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/dsa/extr_mv88e6063.c_mv88e6063_switch_reset.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/dsa/extr_mv88e6063.c_mv88e6063_switch_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32 }

@NUM_PORTS = common dso_local global i32 0, align 4
@REG_GLOBAL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @mv88e6063_switch_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6063_switch_reset(%struct.dsa_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %19, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NUM_PORTS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @REG_PORT(i32 %11)
  %13 = call i32 @REG_READ(i32 %12, i32 4)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @REG_PORT(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 65532
  %18 = call i32 @REG_WRITE(i32 %15, i32 4, i32 %17)
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %6

22:                                               ; preds = %6
  %23 = call i32 @msleep(i32 2)
  %24 = load i32, i32* @REG_GLOBAL, align 4
  %25 = call i32 @REG_WRITE(i32 %24, i32 10, i32 41264)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %38, %22
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 1000
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32, i32* @REG_GLOBAL, align 4
  %31 = call i32 @REG_READ(i32 %30, i32 0)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 32768
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %41

36:                                               ; preds = %29
  %37 = call i32 @msleep(i32 1)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %26

41:                                               ; preds = %35, %26
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, 1000
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @REG_READ(i32, i32) #1

declare dso_local i32 @REG_PORT(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

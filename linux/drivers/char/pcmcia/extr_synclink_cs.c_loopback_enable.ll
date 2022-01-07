; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_synclink_cs.c_loopback_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_synclink_cs.c_loopback_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@CHA = common dso_local global i64 0, align 8
@CCR1 = common dso_local global i64 0, align 8
@BIT2 = common dso_local global i8 0, align 1
@BIT1 = common dso_local global i8 0, align 1
@BIT0 = common dso_local global i8 0, align 1
@CCR2 = common dso_local global i64 0, align 8
@BIT4 = common dso_local global i8 0, align 1
@BIT5 = common dso_local global i8 0, align 1
@MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @loopback_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loopback_enable(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8, align 1
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = load i64, i64* @CHA, align 8
  %6 = load i64, i64* @CCR1, align 8
  %7 = add nsw i64 %5, %6
  %8 = call zeroext i8 @read_reg(%struct.TYPE_8__* %4, i64 %7)
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @BIT2, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @BIT1, align 1
  %13 = zext i8 %12 to i32
  %14 = or i32 %11, %13
  %15 = load i8, i8* @BIT0, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %14, %16
  %18 = or i32 %9, %17
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %3, align 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = load i64, i64* @CHA, align 8
  %22 = load i64, i64* @CCR1, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i8, i8* %3, align 1
  %25 = call i32 @write_reg(%struct.TYPE_8__* %20, i64 %23, i8 zeroext %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = load i64, i64* @CHA, align 8
  %28 = load i64, i64* @CCR2, align 8
  %29 = add nsw i64 %27, %28
  %30 = call zeroext i8 @read_reg(%struct.TYPE_8__* %26, i64 %29)
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @BIT4, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @BIT5, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %33, %35
  %37 = or i32 %31, %36
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %3, align 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = load i64, i64* @CHA, align 8
  %41 = load i64, i64* @CCR2, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i8, i8* %3, align 1
  %44 = call i32 @write_reg(%struct.TYPE_8__* %39, i64 %42, i8 zeroext %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = load i64, i64* @CHA, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mgslpc_set_rate(%struct.TYPE_8__* %51, i64 %52, i32 %56)
  br label %62

58:                                               ; preds = %1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %60 = load i64, i64* @CHA, align 8
  %61 = call i32 @mgslpc_set_rate(%struct.TYPE_8__* %59, i64 %60, i32 1843200)
  br label %62

62:                                               ; preds = %58, %50
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = load i64, i64* @CHA, align 8
  %65 = load i64, i64* @MODE, align 8
  %66 = add nsw i64 %64, %65
  %67 = call zeroext i8 @read_reg(%struct.TYPE_8__* %63, i64 %66)
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* @BIT0, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %68, %70
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %3, align 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %74 = load i64, i64* @CHA, align 8
  %75 = load i64, i64* @MODE, align 8
  %76 = add nsw i64 %74, %75
  %77 = load i8, i8* %3, align 1
  %78 = call i32 @write_reg(%struct.TYPE_8__* %73, i64 %76, i8 zeroext %77)
  ret void
}

declare dso_local zeroext i8 @read_reg(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @write_reg(%struct.TYPE_8__*, i64, i8 zeroext) #1

declare dso_local i32 @mgslpc_set_rate(%struct.TYPE_8__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

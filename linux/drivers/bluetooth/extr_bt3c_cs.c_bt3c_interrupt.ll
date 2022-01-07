; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bt3c_cs.c_bt3c_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bt3c_cs.c_bt3c_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt3c_info = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Very strange (stat=0x%04x)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Antenna %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@XMIT_SENDING = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bt3c_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt3c_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bt3c_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.bt3c_info*
  store %struct.bt3c_info* %13, %struct.bt3c_info** %6, align 8
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.bt3c_info*, %struct.bt3c_info** %6, align 8
  %16 = icmp ne %struct.bt3c_info* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.bt3c_info*, %struct.bt3c_info** %6, align 8
  %19 = getelementptr inbounds %struct.bt3c_info, %struct.bt3c_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17, %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %109

24:                                               ; preds = %17
  %25 = load %struct.bt3c_info*, %struct.bt3c_info** %6, align 8
  %26 = getelementptr inbounds %struct.bt3c_info, %struct.bt3c_info* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %29, i64 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load %struct.bt3c_info*, %struct.bt3c_info** %6, align 8
  %35 = getelementptr inbounds %struct.bt3c_info, %struct.bt3c_info* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* @CONTROL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @inb(i64 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 128
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %104

45:                                               ; preds = %24
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @bt3c_read(i32 %46, i32 28673)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, 255
  %50 = icmp eq i32 %49, 127
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %102

54:                                               ; preds = %45
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, 255
  %57 = icmp ne i32 %56, 255
  br i1 %57, label %58, label %101

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %59, 32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @bt3c_read(i32 %63, i32 28674)
  %65 = and i32 %64, 16
  store i32 %65, i32* %11, align 4
  %66 = load %struct.bt3c_info*, %struct.bt3c_info** %6, align 8
  %67 = getelementptr inbounds %struct.bt3c_info, %struct.bt3c_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %73 = call i32 @bt_dev_info(i32 %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %62, %58
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, 1
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load %struct.bt3c_info*, %struct.bt3c_info** %6, align 8
  %80 = call i32 @bt3c_receive(%struct.bt3c_info* %79)
  br label %81

81:                                               ; preds = %78, %74
  %82 = load i32, i32* %10, align 4
  %83 = and i32 %82, 2
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load i32, i32* @XMIT_SENDING, align 4
  %87 = load %struct.bt3c_info*, %struct.bt3c_info** %6, align 8
  %88 = getelementptr inbounds %struct.bt3c_info, %struct.bt3c_info* %87, i32 0, i32 1
  %89 = call i32 @clear_bit(i32 %86, i32* %88)
  %90 = load %struct.bt3c_info*, %struct.bt3c_info** %6, align 8
  %91 = call i32 @bt3c_write_wakeup(%struct.bt3c_info* %90)
  br label %92

92:                                               ; preds = %85, %81
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @bt3c_io_write(i32 %93, i32 28673, i32 0)
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %7, align 4
  %97 = zext i32 %96 to i64
  %98 = load i64, i64* @CONTROL, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @outb(i32 %95, i64 %99)
  br label %101

101:                                              ; preds = %92, %54
  br label %102

102:                                              ; preds = %101, %51
  %103 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %102, %24
  %105 = load %struct.bt3c_info*, %struct.bt3c_info** %6, align 8
  %106 = getelementptr inbounds %struct.bt3c_info, %struct.bt3c_info* %105, i32 0, i32 0
  %107 = call i32 @spin_unlock(i32* %106)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %104, %22
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @bt3c_read(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @bt_dev_info(i32, i8*, i8*) #1

declare dso_local i32 @bt3c_receive(%struct.bt3c_info*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @bt3c_write_wakeup(%struct.bt3c_info*) #1

declare dso_local i32 @bt3c_io_write(i32, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

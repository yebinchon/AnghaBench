; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bluecard_cs.c_bluecard_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bluecard_cs.c_bluecard_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bluecard_info = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@CARD_READY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@REG_CONTROL_INTERRUPT = common dso_local global i32 0, align 4
@REG_CONTROL = common dso_local global i64 0, align 8
@REG_INTERRUPT = common dso_local global i64 0, align 8
@REG_COMMAND_RX_BUF_ONE = common dso_local global i32 0, align 4
@REG_COMMAND = common dso_local global i64 0, align 8
@REG_COMMAND_RX_BUF_TWO = common dso_local global i32 0, align 4
@XMIT_BUF_ONE_READY = common dso_local global i32 0, align 4
@XMIT_BUF_TWO_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bluecard_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bluecard_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bluecard_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.bluecard_info*
  store %struct.bluecard_info* %10, %struct.bluecard_info** %6, align 8
  %11 = load %struct.bluecard_info*, %struct.bluecard_info** %6, align 8
  %12 = icmp ne %struct.bluecard_info* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.bluecard_info*, %struct.bluecard_info** %6, align 8
  %15 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %158

20:                                               ; preds = %13
  %21 = load i32, i32* @CARD_READY, align 4
  %22 = load %struct.bluecard_info*, %struct.bluecard_info** %6, align 8
  %23 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %22, i32 0, i32 4
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %27, i32* %3, align 4
  br label %158

28:                                               ; preds = %20
  %29 = load %struct.bluecard_info*, %struct.bluecard_info** %6, align 8
  %30 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %33, i64 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.bluecard_info*, %struct.bluecard_info** %6, align 8
  %39 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %38, i32 0, i32 1
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load i32, i32* @REG_CONTROL_INTERRUPT, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.bluecard_info*, %struct.bluecard_info** %6, align 8
  %44 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.bluecard_info*, %struct.bluecard_info** %6, align 8
  %48 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = load i64, i64* @REG_CONTROL, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @outb(i32 %49, i64 %53)
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* @REG_INTERRUPT, align 8
  %58 = add nsw i64 %56, %57
  %59 = call zeroext i8 @inb(i64 %58)
  store i8 %59, i8* %8, align 1
  %60 = load i8, i8* %8, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %140

63:                                               ; preds = %28
  %64 = load i8, i8* %8, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ne i32 %65, 255
  br i1 %66, label %67, label %140

67:                                               ; preds = %63
  %68 = load i8, i8* %8, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load %struct.bluecard_info*, %struct.bluecard_info** %6, align 8
  %74 = call i32 @bluecard_receive(%struct.bluecard_info* %73, i32 0)
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = load i64, i64* @REG_INTERRUPT, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @outb(i32 4, i64 %78)
  %80 = load i32, i32* @REG_COMMAND_RX_BUF_ONE, align 4
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = load i64, i64* @REG_COMMAND, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @outb(i32 %80, i64 %84)
  br label %86

86:                                               ; preds = %72, %67
  %87 = load i8, i8* %8, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %86
  %92 = load %struct.bluecard_info*, %struct.bluecard_info** %6, align 8
  %93 = call i32 @bluecard_receive(%struct.bluecard_info* %92, i32 16)
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* @REG_INTERRUPT, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @outb(i32 8, i64 %97)
  %99 = load i32, i32* @REG_COMMAND_RX_BUF_TWO, align 4
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = load i64, i64* @REG_COMMAND, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @outb(i32 %99, i64 %103)
  br label %105

105:                                              ; preds = %91, %86
  %106 = load i8, i8* %8, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %107, 1
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load i32, i32* @XMIT_BUF_ONE_READY, align 4
  %112 = load %struct.bluecard_info*, %struct.bluecard_info** %6, align 8
  %113 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %112, i32 0, i32 2
  %114 = call i32 @set_bit(i32 %111, i32* %113)
  %115 = load i32, i32* %7, align 4
  %116 = zext i32 %115 to i64
  %117 = load i64, i64* @REG_INTERRUPT, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @outb(i32 1, i64 %118)
  %120 = load %struct.bluecard_info*, %struct.bluecard_info** %6, align 8
  %121 = call i32 @bluecard_write_wakeup(%struct.bluecard_info* %120)
  br label %122

122:                                              ; preds = %110, %105
  %123 = load i8, i8* %8, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, 2
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %122
  %128 = load i32, i32* @XMIT_BUF_TWO_READY, align 4
  %129 = load %struct.bluecard_info*, %struct.bluecard_info** %6, align 8
  %130 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %129, i32 0, i32 2
  %131 = call i32 @set_bit(i32 %128, i32* %130)
  %132 = load i32, i32* %7, align 4
  %133 = zext i32 %132 to i64
  %134 = load i64, i64* @REG_INTERRUPT, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @outb(i32 2, i64 %135)
  %137 = load %struct.bluecard_info*, %struct.bluecard_info** %6, align 8
  %138 = call i32 @bluecard_write_wakeup(%struct.bluecard_info* %137)
  br label %139

139:                                              ; preds = %127, %122
  br label %140

140:                                              ; preds = %139, %63, %28
  %141 = load i32, i32* @REG_CONTROL_INTERRUPT, align 4
  %142 = load %struct.bluecard_info*, %struct.bluecard_info** %6, align 8
  %143 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load %struct.bluecard_info*, %struct.bluecard_info** %6, align 8
  %147 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = zext i32 %149 to i64
  %151 = load i64, i64* @REG_CONTROL, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @outb(i32 %148, i64 %152)
  %154 = load %struct.bluecard_info*, %struct.bluecard_info** %6, align 8
  %155 = getelementptr inbounds %struct.bluecard_info, %struct.bluecard_info* %154, i32 0, i32 1
  %156 = call i32 @spin_unlock(i32* %155)
  %157 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %140, %26, %18
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @bluecard_receive(%struct.bluecard_info*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bluecard_write_wakeup(%struct.bluecard_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

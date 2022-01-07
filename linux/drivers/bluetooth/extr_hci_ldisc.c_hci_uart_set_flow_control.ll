; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_set_flow_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_set_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i64, %struct.tty_struct* }
%struct.tty_struct = type { %struct.ktermios, %struct.TYPE_4__* }
%struct.ktermios = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)* }

@CRTSCTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Disabling hardware flow control: %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Current tiocm 0x%x\00", align 1
@TIOCM_OUT2 = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_OUT1 = common dso_local global i32 0, align 4
@TIOCM_LOOP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Clearing RTS: %s\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Setting RTS: %s\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Enabling hardware flow control: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_uart_set_flow_control(%struct.hci_uart* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.ktermios, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %11 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %10, i32 0, i32 1
  %12 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  store %struct.tty_struct* %12, %struct.tty_struct** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %14 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %19 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @serdev_device_set_flow_control(i64 %20, i32 %24)
  %26 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %27 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @serdev_device_set_rts(i64 %28, i32 %32)
  br label %183

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %111

37:                                               ; preds = %34
  %38 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %39 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %38, i32 0, i32 0
  %40 = bitcast %struct.ktermios* %6 to i8*
  %41 = bitcast %struct.ktermios* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 8 %41, i64 4, i1 false)
  %42 = load i32, i32* @CRTSCTS, align 4
  %43 = xor i32 %42, -1
  %44 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %48 = call i32 @tty_set_termios(%struct.tty_struct* %47, %struct.ktermios* %6)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %53 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %55 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %59, align 8
  %61 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %62 = call i32 %60(%struct.tty_struct* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @TIOCM_OUT2, align 4
  %66 = load i32, i32* @TIOCM_RTS, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = xor i32 %71, -1
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* @TIOCM_DTR, align 4
  %74 = load i32, i32* @TIOCM_RTS, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @TIOCM_OUT1, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @TIOCM_OUT2, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @TIOCM_LOOP, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %8, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* @TIOCM_DTR, align 4
  %85 = load i32, i32* @TIOCM_RTS, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @TIOCM_OUT1, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @TIOCM_OUT2, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @TIOCM_LOOP, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %96 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, i32, i32)** %100, align 8
  %102 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 %101(%struct.tty_struct* %102, i32 %103, i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %110 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %109)
  br label %183

111:                                              ; preds = %34
  %112 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %113 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %117, align 8
  %119 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %120 = call i32 %118(%struct.tty_struct* %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @TIOCM_OUT2, align 4
  %124 = load i32, i32* @TIOCM_RTS, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* %8, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = xor i32 %128, -1
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* @TIOCM_DTR, align 4
  %131 = load i32, i32* @TIOCM_RTS, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @TIOCM_OUT1, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @TIOCM_OUT2, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @TIOCM_LOOP, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* %8, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* @TIOCM_DTR, align 4
  %142 = load i32, i32* @TIOCM_RTS, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @TIOCM_OUT1, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @TIOCM_OUT2, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @TIOCM_LOOP, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* %9, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %9, align 4
  %152 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %153 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %152, i32 0, i32 1
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, i32, i32)** %157, align 8
  %159 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i32 %158(%struct.tty_struct* %159, i32 %160, i32 %161)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %167 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %166)
  %168 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %169 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %168, i32 0, i32 0
  %170 = bitcast %struct.ktermios* %6 to i8*
  %171 = bitcast %struct.ktermios* %169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %170, i8* align 8 %171, i64 4, i1 false)
  %172 = load i32, i32* @CRTSCTS, align 4
  %173 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %6, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %172
  store i32 %175, i32* %173, align 4
  %176 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %177 = call i32 @tty_set_termios(%struct.tty_struct* %176, %struct.ktermios* %6)
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %182 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %181)
  br label %183

183:                                              ; preds = %17, %111, %37
  ret void
}

declare dso_local i32 @serdev_device_set_flow_control(i64, i32) #1

declare dso_local i32 @serdev_device_set_rts(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tty_set_termios(%struct.tty_struct*, %struct.ktermios*) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

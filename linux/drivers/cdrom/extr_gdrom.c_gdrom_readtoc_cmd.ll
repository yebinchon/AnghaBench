; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_gdrom.c_gdrom_readtoc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_gdrom.c_gdrom_readtoc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.gdromtoc = type { i32 }
%struct.packet_command = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EBUSY = common dso_local global i32 0, align 4
@command_queue = common dso_local global i32 0, align 4
@GDROM_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GDROM_DATA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdromtoc*, i32)* @gdrom_readtoc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdrom_readtoc_cmd(%struct.gdromtoc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gdromtoc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.packet_command*, align 8
  %8 = alloca i32, align 4
  store %struct.gdromtoc* %0, %struct.gdromtoc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.packet_command* @kzalloc(i32 16, i32 %9)
  store %struct.packet_command* %10, %struct.packet_command** %7, align 8
  %11 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %12 = icmp ne %struct.packet_command* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %79

16:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  %17 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %18 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 20, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %23 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 8
  %28 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %29 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 255
  %34 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %35 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %40 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gd, i32 0, i32 0), align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %16
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %75

46:                                               ; preds = %16
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gd, i32 0, i32 0), align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gd, i32 0, i32 2), align 4
  %48 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %49 = call i32 @gdrom_packetcommand(i32 %47, %struct.packet_command* %48)
  %50 = load i32, i32* @command_queue, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gd, i32 0, i32 0), align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* @GDROM_DEFAULT_TIMEOUT, align 4
  %55 = call i32 @wait_event_interruptible_timeout(i32 %50, i32 %53, i32 %54)
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gd, i32 0, i32 0), align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  br label %74

61:                                               ; preds = %46
  %62 = load i32, i32* @GDROM_DATA_REG, align 4
  %63 = load %struct.gdromtoc*, %struct.gdromtoc** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sdiv i32 %64, 2
  %66 = call i32 @insw(i32 %62, %struct.gdromtoc* %63, i32 %65)
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gd, i32 0, i32 1), align 4
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %61
  br label %74

74:                                               ; preds = %73, %58
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gd, i32 0, i32 0), align 4
  br label %75

75:                                               ; preds = %74, %43
  %76 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %77 = call i32 @kfree(%struct.packet_command* %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %13
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.packet_command* @kzalloc(i32, i32) #1

declare dso_local i32 @gdrom_packetcommand(i32, %struct.packet_command*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @insw(i32, %struct.gdromtoc*, i32) #1

declare dso_local i32 @kfree(%struct.packet_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

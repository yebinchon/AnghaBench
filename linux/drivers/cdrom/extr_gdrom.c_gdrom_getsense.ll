; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_gdrom.c_gdrom_getsense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_gdrom.c_gdrom_getsense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.packet_command = type { i32*, i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gd = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@EBUSY = common dso_local global i32 0, align 4
@command_queue = common dso_local global i32 0, align 4
@GDROM_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@GDROM_DATA_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Drive not ready - command aborted\0A\00", align 1
@sense_texts = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Unknown sense key: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16*)* @gdrom_getsense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdrom_getsense(i16* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  %4 = alloca %struct.packet_command*, align 8
  %5 = alloca [5 x i16], align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  %8 = load i32, i32* @EIO, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.packet_command* @kzalloc(i32 16, i32 %10)
  store %struct.packet_command* %11, %struct.packet_command** %4, align 8
  %12 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %13 = icmp ne %struct.packet_command* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %101

17:                                               ; preds = %1
  %18 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %19 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 19, i32* %21, align 4
  %22 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %23 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  store i32 10, i32* %25, align 4
  %26 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %27 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %26, i32 0, i32 1
  store i32 10, i32* %27, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gd, i32 0, i32 0), align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %17
  %31 = call i32 (...) @gdrom_wait_clrbusy()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %97

36:                                               ; preds = %30, %17
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gd, i32 0, i32 0), align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gd, i32 0, i32 1), align 4
  %38 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %39 = call i32 @gdrom_packetcommand(i32 %37, %struct.packet_command* %38)
  %40 = load i32, i32* @command_queue, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gd, i32 0, i32 0), align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* @GDROM_DEFAULT_TIMEOUT, align 4
  %45 = call i32 @wait_event_interruptible_timeout(i32 %40, i32 %43, i32 %44)
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gd, i32 0, i32 0), align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %96

49:                                               ; preds = %36
  %50 = load i32, i32* @GDROM_DATA_REG, align 4
  %51 = bitcast [5 x i16]* %5 to i16**
  %52 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %53 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sdiv i32 %54, 2
  %56 = call i32 @insw(i32 %50, i16** %51, i32 %55)
  %57 = getelementptr inbounds [5 x i16], [5 x i16]* %5, i64 0, i64 1
  %58 = load i16, i16* %57, align 2
  %59 = sext i16 %58 to i32
  %60 = and i32 %59, 40
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %96

64:                                               ; preds = %49
  %65 = getelementptr inbounds [5 x i16], [5 x i16]* %5, i64 0, i64 1
  %66 = load i16, i16* %65, align 2
  %67 = sext i16 %66 to i32
  %68 = and i32 %67, 15
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sense_texts, align 8
  %71 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %70)
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %64
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sense_texts, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %84

81:                                               ; preds = %64
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %73
  %85 = load i16*, i16** %3, align 8
  %86 = icmp ne i16* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i16*, i16** %3, align 8
  %89 = getelementptr inbounds [5 x i16], [5 x i16]* %5, i64 0, i64 4
  %90 = call i32 @memcpy(i16* %88, i16* %89, i32 2)
  br label %91

91:                                               ; preds = %87, %84
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 2
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %94, %91
  br label %96

96:                                               ; preds = %95, %62, %48
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gd, i32 0, i32 0), align 4
  br label %97

97:                                               ; preds = %96, %33
  %98 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %99 = call i32 @kfree(%struct.packet_command* %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %97, %14
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.packet_command* @kzalloc(i32, i32) #1

declare dso_local i32 @gdrom_wait_clrbusy(...) #1

declare dso_local i32 @gdrom_packetcommand(i32, %struct.packet_command*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @insw(i32, i16**, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @memcpy(i16*, i16*, i32) #1

declare dso_local i32 @kfree(%struct.packet_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

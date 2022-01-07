; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xillybus_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xillybus_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.xilly_channel* }
%struct.xilly_channel = type { i64, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@EIO = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@fpga_buf_ctrl_reg = common dso_local global i64 0, align 8
@FMODE_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Hardware failed to respond to close command, therefore left in messy state.\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @xillybus_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xillybus_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xilly_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 1
  %12 = load %struct.xilly_channel*, %struct.xilly_channel** %11, align 8
  store %struct.xilly_channel* %12, %struct.xilly_channel** %7, align 8
  %13 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %14 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %13, i32 0, i32 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %161

22:                                               ; preds = %2
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FMODE_WRITE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %22
  %30 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %31 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %30, i32 0, i32 11
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %34 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %38 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %29
  %42 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %43 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %44, 1
  %46 = or i32 %45, 83886080
  %47 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %48 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %47, i32 0, i32 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @fpga_buf_ctrl_reg, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @iowrite32(i32 %46, i64 %53)
  br label %55

55:                                               ; preds = %41, %29
  %56 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %57 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %56, i32 0, i32 11
  %58 = call i32 @mutex_unlock(i32* %57)
  br label %59

59:                                               ; preds = %55, %22
  %60 = load %struct.file*, %struct.file** %5, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @FMODE_READ, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %160

66:                                               ; preds = %59
  %67 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %68 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %67, i32 0, i32 7
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %71 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %71, align 8
  %74 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %75 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %156

78:                                               ; preds = %66
  %79 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %80 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 %81, 1
  %83 = or i32 1, %82
  %84 = or i32 %83, 83886080
  %85 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %86 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %85, i32 0, i32 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @fpga_buf_ctrl_reg, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @iowrite32(i32 %84, i64 %91)
  br label %93

93:                                               ; preds = %78, %154
  %94 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %95 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %94, i32 0, i32 10
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @spin_lock_irqsave(i32* %95, i64 %96)
  %98 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %99 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %8, align 4
  %101 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %102 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %9, align 4
  %104 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %105 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %104, i32 0, i32 5
  store i32 1, i32* %105, align 8
  %106 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %107 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %106, i32 0, i32 10
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %114 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %93
  store i32 0, i32* %8, align 4
  br label %118

118:                                              ; preds = %117, %93
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %155

123:                                              ; preds = %118
  %124 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %125 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %128 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i64 @wait_event_interruptible(i32 %126, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %123
  %136 = call i32 @msleep(i32 100)
  br label %137

137:                                              ; preds = %135, %123
  %138 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %139 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %137
  %143 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %144 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %143, i32 0, i32 7
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %147 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %146, i32 0, i32 8
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @dev_warn(i32 %150, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %152 = load i32, i32* @EINTR, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %3, align 4
  br label %161

154:                                              ; preds = %137
  br label %93

155:                                              ; preds = %122
  br label %156

156:                                              ; preds = %155, %66
  %157 = load %struct.xilly_channel*, %struct.xilly_channel** %7, align 8
  %158 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %157, i32 0, i32 7
  %159 = call i32 @mutex_unlock(i32* %158)
  br label %160

160:                                              ; preds = %156, %59
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %160, %142, %19
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

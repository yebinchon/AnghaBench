; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_chan_kern.c_chan_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_chan_kern.c_chan_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { %struct.chan*, %struct.tty_port, i32, %struct.chan* }
%struct.tty_port = type { i32 }
%struct.chan = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i8*, i32)* }

@TTY_NORMAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chan_interrupt(%struct.line* %0, i32 %1) #0 {
  %3 = alloca %struct.line*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca %struct.chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.line* %0, %struct.line** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.line*, %struct.line** %3, align 8
  %10 = getelementptr inbounds %struct.line, %struct.line* %9, i32 0, i32 1
  store %struct.tty_port* %10, %struct.tty_port** %5, align 8
  %11 = load %struct.line*, %struct.line** %3, align 8
  %12 = getelementptr inbounds %struct.line, %struct.line* %11, i32 0, i32 3
  %13 = load %struct.chan*, %struct.chan** %12, align 8
  store %struct.chan* %13, %struct.chan** %6, align 8
  %14 = load %struct.chan*, %struct.chan** %6, align 8
  %15 = icmp ne %struct.chan* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.chan*, %struct.chan** %6, align 8
  %18 = getelementptr inbounds %struct.chan, %struct.chan* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %20, align 8
  %22 = icmp ne i32 (i32, i8*, i32)* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16, %2
  br label %92

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %54, %24
  %26 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %27 = call i32 @tty_buffer_request_room(%struct.tty_port* %26, i32 1)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load %struct.line*, %struct.line** %3, align 8
  %31 = getelementptr inbounds %struct.line, %struct.line* %30, i32 0, i32 2
  %32 = call i32 @schedule_delayed_work(i32* %31, i32 1)
  br label %92

33:                                               ; preds = %25
  %34 = load %struct.chan*, %struct.chan** %6, align 8
  %35 = getelementptr inbounds %struct.chan, %struct.chan* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %37, align 8
  %39 = load %struct.chan*, %struct.chan** %6, align 8
  %40 = getelementptr inbounds %struct.chan, %struct.chan* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.chan*, %struct.chan** %6, align 8
  %43 = getelementptr inbounds %struct.chan, %struct.chan* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %38(i32 %41, i8* %8, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %50 = load i8, i8* %8, align 1
  %51 = load i32, i32* @TTY_NORMAL, align 4
  %52 = call i32 @tty_insert_flip_char(%struct.tty_port* %49, i8 signext %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %33
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %25, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %91

62:                                               ; preds = %57
  %63 = load %struct.chan*, %struct.chan** %6, align 8
  %64 = getelementptr inbounds %struct.chan, %struct.chan* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %62
  %68 = load %struct.line*, %struct.line** %3, align 8
  %69 = getelementptr inbounds %struct.line, %struct.line* %68, i32 0, i32 1
  %70 = call i32 @tty_port_tty_hangup(%struct.tty_port* %69, i32 0)
  %71 = load %struct.line*, %struct.line** %3, align 8
  %72 = getelementptr inbounds %struct.line, %struct.line* %71, i32 0, i32 0
  %73 = load %struct.chan*, %struct.chan** %72, align 8
  %74 = load %struct.chan*, %struct.chan** %6, align 8
  %75 = icmp ne %struct.chan* %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  %77 = load %struct.line*, %struct.line** %3, align 8
  %78 = getelementptr inbounds %struct.line, %struct.line* %77, i32 0, i32 0
  %79 = load %struct.chan*, %struct.chan** %78, align 8
  %80 = call i32 @close_one_chan(%struct.chan* %79, i32 1)
  br label %81

81:                                               ; preds = %76, %67
  br label %82

82:                                               ; preds = %81, %62
  %83 = load %struct.chan*, %struct.chan** %6, align 8
  %84 = call i32 @close_one_chan(%struct.chan* %83, i32 1)
  %85 = load %struct.chan*, %struct.chan** %6, align 8
  %86 = getelementptr inbounds %struct.chan, %struct.chan* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %95

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %57
  br label %92

92:                                               ; preds = %91, %29, %23
  %93 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %94 = call i32 @tty_flip_buffer_push(%struct.tty_port* %93)
  br label %95

95:                                               ; preds = %92, %89
  ret void
}

declare dso_local i32 @tty_buffer_request_room(%struct.tty_port*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i8 signext, i32) #1

declare dso_local i32 @tty_port_tty_hangup(%struct.tty_port*, i32) #1

declare dso_local i32 @close_one_chan(%struct.chan*, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

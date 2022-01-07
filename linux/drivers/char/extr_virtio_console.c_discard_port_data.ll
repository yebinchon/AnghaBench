; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_discard_port_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_discard_port_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, i32*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.port_buffer = type { i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"Errors adding %d buffers back to vq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @discard_port_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @discard_port_data(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca %struct.port_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.port* %0, %struct.port** %2, align 8
  %5 = load %struct.port*, %struct.port** %2, align 8
  %6 = getelementptr inbounds %struct.port, %struct.port* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %56

10:                                               ; preds = %1
  %11 = load %struct.port*, %struct.port** %2, align 8
  %12 = call %struct.port_buffer* @get_inbuf(%struct.port* %11)
  store %struct.port_buffer* %12, %struct.port_buffer** %3, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %42, %10
  %14 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %15 = icmp ne %struct.port_buffer* %14, null
  br i1 %15, label %16, label %47

16:                                               ; preds = %13
  %17 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %18 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %21 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  %24 = load %struct.port*, %struct.port** %2, align 8
  %25 = getelementptr inbounds %struct.port, %struct.port* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %23
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = load %struct.port*, %struct.port** %2, align 8
  %32 = getelementptr inbounds %struct.port, %struct.port* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %35 = call i64 @add_inbuf(i32 %33, %struct.port_buffer* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %16
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %4, align 4
  %40 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %41 = call i32 @free_buf(%struct.port_buffer* %40, i32 0)
  br label %42

42:                                               ; preds = %37, %16
  %43 = load %struct.port*, %struct.port** %2, align 8
  %44 = getelementptr inbounds %struct.port, %struct.port* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.port*, %struct.port** %2, align 8
  %46 = call %struct.port_buffer* @get_inbuf(%struct.port* %45)
  store %struct.port_buffer* %46, %struct.port_buffer** %3, align 8
  br label %13

47:                                               ; preds = %13
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.port*, %struct.port** %2, align 8
  %52 = getelementptr inbounds %struct.port, %struct.port* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @dev_warn(i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %9, %50, %47
  ret void
}

declare dso_local %struct.port_buffer* @get_inbuf(%struct.port*) #1

declare dso_local i64 @add_inbuf(i32, %struct.port_buffer*) #1

declare dso_local i32 @free_buf(%struct.port_buffer*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

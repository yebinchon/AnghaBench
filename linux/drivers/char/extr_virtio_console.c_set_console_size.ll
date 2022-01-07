; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_set_console_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_set_console_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*, i8*, i8*)* @set_console_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_console_size(%struct.port* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.port* %0, %struct.port** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.port*, %struct.port** %4, align 8
  %8 = icmp ne %struct.port* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load %struct.port*, %struct.port** %4, align 8
  %11 = call i32 @is_console_port(%struct.port* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %3
  br label %25

14:                                               ; preds = %9
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.port*, %struct.port** %4, align 8
  %17 = getelementptr inbounds %struct.port, %struct.port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i8* %15, i8** %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.port*, %struct.port** %4, align 8
  %22 = getelementptr inbounds %struct.port, %struct.port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i8* %20, i8** %24, align 8
  br label %25

25:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @is_console_port(%struct.port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

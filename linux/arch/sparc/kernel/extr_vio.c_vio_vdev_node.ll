; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_vio.c_vio_vdev_node.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_vio.c_vio_vdev_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdesc_handle = type { i32 }
%struct.vio_dev = type { i32, i64 }

@MDESC_NODE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vio_vdev_node(%struct.mdesc_handle* %0, %struct.vio_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mdesc_handle*, align 8
  %5 = alloca %struct.vio_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.mdesc_handle* %0, %struct.mdesc_handle** %4, align 8
  store %struct.vio_dev* %1, %struct.vio_dev** %5, align 8
  %7 = load %struct.vio_dev*, %struct.vio_dev** %5, align 8
  %8 = icmp eq %struct.vio_dev* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @MDESC_NODE_NULL, align 4
  store i32 %10, i32* %3, align 4
  br label %21

11:                                               ; preds = %2
  %12 = load %struct.mdesc_handle*, %struct.mdesc_handle** %4, align 8
  %13 = load %struct.vio_dev*, %struct.vio_dev** %5, align 8
  %14 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.vio_dev*, %struct.vio_dev** %5, align 8
  %18 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %17, i32 0, i32 0
  %19 = call i32 @mdesc_get_node(%struct.mdesc_handle* %12, i8* %16, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %11, %9
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @mdesc_get_node(%struct.mdesc_handle*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

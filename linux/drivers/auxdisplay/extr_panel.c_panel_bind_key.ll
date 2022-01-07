; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_panel_bind_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_panel_bind_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.logical_input = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@scan_mask_i = common dso_local global i32 0, align 4
@scan_mask_o = common dso_local global i32 0, align 4
@INPUT_TYPE_KBD = common dso_local global i32 0, align 4
@INPUT_ST_LOW = common dso_local global i32 0, align 4
@logical_inputs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.logical_input* (i8*, i8*, i8*, i8*)* @panel_bind_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.logical_input* @panel_bind_key(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.logical_input*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.logical_input*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.logical_input* @kzalloc(i32 40, i32 %11)
  store %struct.logical_input* %12, %struct.logical_input** %10, align 8
  %13 = load %struct.logical_input*, %struct.logical_input** %10, align 8
  %14 = icmp ne %struct.logical_input* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.logical_input* null, %struct.logical_input** %5, align 8
  br label %63

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.logical_input*, %struct.logical_input** %10, align 8
  %19 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %18, i32 0, i32 7
  %20 = load %struct.logical_input*, %struct.logical_input** %10, align 8
  %21 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %20, i32 0, i32 6
  %22 = call i32 @input_name2mask(i8* %17, i32* %19, i32* %21, i32* @scan_mask_i, i32* @scan_mask_o)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load %struct.logical_input*, %struct.logical_input** %10, align 8
  %26 = call i32 @kfree(%struct.logical_input* %25)
  store %struct.logical_input* null, %struct.logical_input** %5, align 8
  br label %63

27:                                               ; preds = %16
  %28 = load i32, i32* @INPUT_TYPE_KBD, align 4
  %29 = load %struct.logical_input*, %struct.logical_input** %10, align 8
  %30 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @INPUT_ST_LOW, align 4
  %32 = load %struct.logical_input*, %struct.logical_input** %10, align 8
  %33 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.logical_input*, %struct.logical_input** %10, align 8
  %35 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.logical_input*, %struct.logical_input** %10, align 8
  %37 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load %struct.logical_input*, %struct.logical_input** %10, align 8
  %39 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @strncpy(i32 %42, i8* %43, i32 4)
  %45 = load %struct.logical_input*, %struct.logical_input** %10, align 8
  %46 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @strncpy(i32 %49, i8* %50, i32 4)
  %52 = load %struct.logical_input*, %struct.logical_input** %10, align 8
  %53 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @strncpy(i32 %56, i8* %57, i32 4)
  %59 = load %struct.logical_input*, %struct.logical_input** %10, align 8
  %60 = getelementptr inbounds %struct.logical_input, %struct.logical_input* %59, i32 0, i32 2
  %61 = call i32 @list_add(i32* %60, i32* @logical_inputs)
  %62 = load %struct.logical_input*, %struct.logical_input** %10, align 8
  store %struct.logical_input* %62, %struct.logical_input** %5, align 8
  br label %63

63:                                               ; preds = %27, %24, %15
  %64 = load %struct.logical_input*, %struct.logical_input** %5, align 8
  ret %struct.logical_input* %64
}

declare dso_local %struct.logical_input* @kzalloc(i32, i32) #1

declare dso_local i32 @input_name2mask(i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.logical_input*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

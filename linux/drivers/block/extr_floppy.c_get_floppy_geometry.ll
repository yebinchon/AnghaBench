; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_get_floppy_geometry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_get_floppy_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floppy_struct = type { i32 }

@floppy_type = common dso_local global %struct.floppy_struct* null, align 8
@EINTR = common dso_local global i32 0, align 4
@current_type = common dso_local global %struct.floppy_struct** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.floppy_struct**)* @get_floppy_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_floppy_geometry(i32 %0, i32 %1, %struct.floppy_struct** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.floppy_struct**, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.floppy_struct** %2, %struct.floppy_struct*** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.floppy_struct*, %struct.floppy_struct** @floppy_type, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.floppy_struct, %struct.floppy_struct* %11, i64 %13
  %15 = load %struct.floppy_struct**, %struct.floppy_struct*** %7, align 8
  store %struct.floppy_struct* %14, %struct.floppy_struct** %15, align 8
  br label %39

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @lock_fdc(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINTR, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %47

23:                                               ; preds = %16
  %24 = call i32 @poll_drive(i32 0, i32 0)
  %25 = load i32, i32* @EINTR, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EINTR, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %47

31:                                               ; preds = %23
  %32 = call i32 (...) @process_fd_request()
  %33 = load %struct.floppy_struct**, %struct.floppy_struct*** @current_type, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.floppy_struct*, %struct.floppy_struct** %33, i64 %35
  %37 = load %struct.floppy_struct*, %struct.floppy_struct** %36, align 8
  %38 = load %struct.floppy_struct**, %struct.floppy_struct*** %7, align 8
  store %struct.floppy_struct* %37, %struct.floppy_struct** %38, align 8
  br label %39

39:                                               ; preds = %31, %10
  %40 = load %struct.floppy_struct**, %struct.floppy_struct*** %7, align 8
  %41 = load %struct.floppy_struct*, %struct.floppy_struct** %40, align 8
  %42 = icmp ne %struct.floppy_struct* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %43, %28, %20
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @lock_fdc(i32) #1

declare dso_local i32 @poll_drive(i32, i32) #1

declare dso_local i32 @process_fd_request(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

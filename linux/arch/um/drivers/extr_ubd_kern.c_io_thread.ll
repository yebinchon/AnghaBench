; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_ubd_kern.c_io_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_ubd_kern.c_io_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel_fd = common dso_local global i32 0, align 4
@io_req_buffer = common dso_local global i32** null, align 8
@io_remainder = common dso_local global i32 0, align 4
@io_remainder_size = common dso_local global i32 0, align 4
@UBD_REQ_BUFFER_SIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@io_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @io_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = call i32 (...) @os_fix_helper_signals()
  br label %8

8:                                                ; preds = %1, %20, %71
  %9 = load i32, i32* @kernel_fd, align 4
  %10 = load i32**, i32*** @io_req_buffer, align 8
  %11 = load i32, i32* @UBD_REQ_BUFFER_SIZE, align 4
  %12 = call i32 @bulk_req_safe_read(i32 %9, i32** %10, i32* @io_remainder, i32* @io_remainder_size, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @ubd_read_poll(i32 -1)
  br label %8

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %8
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %41, %23
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %28, 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load i32, i32* @io_count, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @io_count, align 4
  %34 = load i32**, i32*** @io_req_buffer, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @do_io(i32 %39)
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %24

44:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %67, %44
  %46 = load i32, i32* @kernel_fd, align 4
  %47 = load i32**, i32*** @io_req_buffer, align 8
  %48 = bitcast i32** %47 to i8*
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @os_write_file(i32 %46, i8* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %45
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @ubd_write_poll(i32 -1)
  br label %66

66:                                               ; preds = %64, %60
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %45, label %71

71:                                               ; preds = %67
  br label %8
}

declare dso_local i32 @os_fix_helper_signals(...) #1

declare dso_local i32 @bulk_req_safe_read(i32, i32**, i32*, i32*, i32) #1

declare dso_local i32 @ubd_read_poll(i32) #1

declare dso_local i32 @do_io(i32) #1

declare dso_local i32 @os_write_file(i32, i8*, i32) #1

declare dso_local i32 @ubd_write_poll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

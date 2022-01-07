; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120-dbg.c_fill_buffer.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120-dbg.c_fill_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_buffer = type { i8*, {}*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debug_buffer*)* @fill_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_buffer(%struct.debug_buffer* %0) #0 {
  %2 = alloca %struct.debug_buffer*, align 8
  %3 = alloca i32, align 4
  store %struct.debug_buffer* %0, %struct.debug_buffer** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i64 @get_zeroed_page(i32 %9)
  %11 = inttoptr i64 %10 to i8*
  %12 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %13 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %16 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %36

22:                                               ; preds = %14
  %23 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %24 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %23, i32 0, i32 1
  %25 = bitcast {}** %24 to i32 (%struct.debug_buffer*)**
  %26 = load i32 (%struct.debug_buffer*)*, i32 (%struct.debug_buffer*)** %25, align 8
  %27 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %28 = call i32 %26(%struct.debug_buffer* %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %34 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %22
  br label %36

36:                                               ; preds = %35, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @get_zeroed_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

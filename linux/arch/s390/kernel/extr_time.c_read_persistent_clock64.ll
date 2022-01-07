; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_time.c_read_persistent_clock64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_time.c_read_persistent_clock64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i32 }

@STORE_CLOCK_EXT_SIZE = common dso_local global i32 0, align 4
@initial_leap_seconds = common dso_local global i64 0, align 8
@TOD_UNIX_EPOCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_persistent_clock64(%struct.timespec64* %0) #0 {
  %2 = alloca %struct.timespec64*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.timespec64* %0, %struct.timespec64** %2, align 8
  %6 = load i32, i32* @STORE_CLOCK_EXT_SIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i64, i64* @initial_leap_seconds, align 8
  %11 = load i64, i64* @TOD_UNIX_EPOCH, align 8
  %12 = add nsw i64 %10, %11
  store i64 %12, i64* %5, align 8
  %13 = call i32 @get_tod_clock_ext(i8* %9)
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i8, i8* %9, i64 1
  %16 = bitcast i8* %15 to i64*
  %17 = load i64, i64* %16, align 1
  %18 = sub nsw i64 %17, %14
  store i64 %18, i64* %16, align 1
  %19 = getelementptr inbounds i8, i8* %9, i64 1
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = load i64, i64* %5, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = getelementptr inbounds i8, i8* %9, i64 0
  %26 = load i8, i8* %25, align 16
  %27 = add i8 %26, -1
  store i8 %27, i8* %25, align 16
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %30 = call i32 @ext_to_timespec64(i8* %9, %struct.timespec64* %29)
  %31 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %31)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_tod_clock_ext(i8*) #2

declare dso_local i32 @ext_to_timespec64(i8*, %struct.timespec64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

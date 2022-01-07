; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_tmp_write_logevent.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_tmp_write_logevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buff_file = type { i32, i64 }

@now = common dso_local global i64 0, align 8
@is_message_event = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tmp_write_logevent(%struct.buff_file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.buff_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.buff_file* %0, %struct.buff_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.buff_file*, %struct.buff_file** %4, align 8
  %8 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sgt i32 %9, 16384
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.buff_file*, %struct.buff_file** %4, align 8
  %13 = load i64, i64* @now, align 8
  %14 = call i32 @tmp_write_crc32(%struct.buff_file* %12, i64 %13)
  br label %29

15:                                               ; preds = %3
  %16 = load i64, i64* @now, align 8
  %17 = load %struct.buff_file*, %struct.buff_file** %4, align 8
  %18 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i64, i64* @now, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.buff_file*, %struct.buff_file** %4, align 8
  %26 = load i64, i64* @now, align 8
  %27 = call i32 @tmp_write_ts(%struct.buff_file* %25, i64 %26)
  br label %28

28:                                               ; preds = %24, %21, %15
  br label %29

29:                                               ; preds = %28, %11
  %30 = load i64, i64* @is_message_event, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.buff_file*, %struct.buff_file** %4, align 8
  %34 = call i32 @tmp_adjust_global_id(%struct.buff_file* %33, i32 1)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.buff_file*, %struct.buff_file** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @tmp_write_lev(%struct.buff_file* %36, i8* %37, i32 %38)
  ret void
}

declare dso_local i32 @tmp_write_crc32(%struct.buff_file*, i64) #1

declare dso_local i32 @tmp_write_ts(%struct.buff_file*, i64) #1

declare dso_local i32 @tmp_adjust_global_id(%struct.buff_file*, i32) #1

declare dso_local i32 @tmp_write_lev(%struct.buff_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

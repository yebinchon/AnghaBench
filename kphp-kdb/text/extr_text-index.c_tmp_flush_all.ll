; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_tmp_flush_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_tmp_flush_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buff_file = type { i32, i32, i64 }

@passes = common dso_local global i32 0, align 4
@temp_file = common dso_local global %struct.buff_file* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmp_flush_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.buff_file*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %35, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @passes, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %38

7:                                                ; preds = %3
  %8 = load %struct.buff_file*, %struct.buff_file** @temp_file, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %8, i64 %10
  store %struct.buff_file* %11, %struct.buff_file** %2, align 8
  %12 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %13 = call i32 @tmp_adjust_global_id(%struct.buff_file* %12, i32 0)
  %14 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %15 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %7
  %19 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %20 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %21 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @tmp_write_crc32(%struct.buff_file* %19, i32 %22)
  br label %24

24:                                               ; preds = %18, %7
  %25 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %26 = call i32 @tmp_flush_out(%struct.buff_file* %25)
  %27 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %28 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SEEK_SET, align 4
  %31 = call i64 @lseek(i32 %29, i32 0, i32 %30)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %3

38:                                               ; preds = %3
  %39 = load i32, i32* @passes, align 4
  ret i32 %39
}

declare dso_local i32 @tmp_adjust_global_id(%struct.buff_file*, i32) #1

declare dso_local i32 @tmp_write_crc32(%struct.buff_file*, i32) #1

declare dso_local i32 @tmp_flush_out(%struct.buff_file*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_tmp_write_lev.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_tmp_write_lev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buff_file = type { i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tmp_write_lev(%struct.buff_file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.buff_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.buff_file* %0, %struct.buff_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 3
  %9 = and i32 %8, -4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, -1048576
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.buff_file*, %struct.buff_file** %4, align 8
  %17 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = load %struct.buff_file*, %struct.buff_file** %4, align 8
  %23 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %3
  %27 = load %struct.buff_file*, %struct.buff_file** %4, align 8
  %28 = call i32 @tmp_flush_out(%struct.buff_file* %27)
  %29 = load %struct.buff_file*, %struct.buff_file** %4, align 8
  %30 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load %struct.buff_file*, %struct.buff_file** %4, align 8
  %36 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  br label %41

41:                                               ; preds = %26, %3
  %42 = load %struct.buff_file*, %struct.buff_file** %4, align 8
  %43 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @memcpy(i64 %44, i8* %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.buff_file*, %struct.buff_file** %4, align 8
  %51 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.buff_file*, %struct.buff_file** %4, align 8
  %56 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.buff_file*, %struct.buff_file** %4, align 8
  %62 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @crc32_partial(i8* %59, i32 %60, i32 %63)
  %65 = load %struct.buff_file*, %struct.buff_file** %4, align 8
  %66 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tmp_flush_out(%struct.buff_file*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @crc32_partial(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

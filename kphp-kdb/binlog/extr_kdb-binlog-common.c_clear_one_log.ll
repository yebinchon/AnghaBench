; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_clear_one_log.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_clear_one_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log_buffer = type { i8*, i8*, i8*, i8*, i8*, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.log_buffer*, i8*, i32)* @clear_one_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_one_log(%struct.log_buffer* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.log_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.log_buffer* %0, %struct.log_buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %3
  %13 = load %struct.log_buffer*, %struct.log_buffer** %4, align 8
  %14 = call i32 @memset(%struct.log_buffer* %13, i32 0, i32 64)
  br label %47

15:                                               ; preds = %9
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = sub nsw i64 16, %18
  %20 = and i64 %19, 15
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = load %struct.log_buffer*, %struct.log_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.log_buffer, %struct.log_buffer* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.log_buffer*, %struct.log_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.log_buffer, %struct.log_buffer* %24, i32 0, i32 1
  store i8* %21, i8** %25, align 8
  %26 = load %struct.log_buffer*, %struct.log_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.log_buffer, %struct.log_buffer* %26, i32 0, i32 0
  store i8* %21, i8** %27, align 8
  %28 = load %struct.log_buffer*, %struct.log_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.log_buffer, %struct.log_buffer* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load %struct.log_buffer*, %struct.log_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.log_buffer, %struct.log_buffer* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.log_buffer*, %struct.log_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.log_buffer, %struct.log_buffer* %36, i32 0, i32 7
  store i64 0, i64* %37, align 8
  %38 = load %struct.log_buffer*, %struct.log_buffer** %4, align 8
  %39 = getelementptr inbounds %struct.log_buffer, %struct.log_buffer* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = load %struct.log_buffer*, %struct.log_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.log_buffer, %struct.log_buffer* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.log_buffer*, %struct.log_buffer** %4, align 8
  %43 = getelementptr inbounds %struct.log_buffer, %struct.log_buffer* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.log_buffer*, %struct.log_buffer** %4, align 8
  %46 = getelementptr inbounds %struct.log_buffer, %struct.log_buffer* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @memset(%struct.log_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

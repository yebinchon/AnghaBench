; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_rename_tmp_log_callback.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_rename_tmp_log_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rename_cb = type { i64, i32 }

@errno = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @rename_tmp_log_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rename_tmp_log_callback(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rename_cb*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.rename_cb*
  store %struct.rename_cb* %8, %struct.rename_cb** %6, align 8
  %9 = load %struct.rename_cb*, %struct.rename_cb** %6, align 8
  %10 = getelementptr inbounds %struct.rename_cb, %struct.rename_cb* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @rename(i32 %11, i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i64, i64* @errno, align 8
  %17 = load %struct.rename_cb*, %struct.rename_cb** %6, align 8
  %18 = getelementptr inbounds %struct.rename_cb, %struct.rename_cb* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* @errno, align 8
  %20 = load i64, i64* @ENOTDIR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i64, i64* @EISDIR, align 8
  store i64 %23, i64* @errno, align 8
  br label %24

24:                                               ; preds = %22, %15
  store i32 -1, i32* %3, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @rename(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

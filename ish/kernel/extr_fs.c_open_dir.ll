; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_open_dir.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_open_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }
%struct.statbuf = type { i32 }

@AT_PWD = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@_ENOTDIR = common dso_local global i32 0, align 4
@O_RDONLY_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fd* (i8*)* @open_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fd* @open_dir(i8* %0) #0 {
  %2 = alloca %struct.fd*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.statbuf, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @AT_PWD, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @generic_statat(i32 %6, i8* %7, %struct.statbuf* %4, i32 1)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.fd* @ERR_PTR(i32 %12)
  store %struct.fd* %13, %struct.fd** %2, align 8
  br label %27

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @S_IFDIR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @_ENOTDIR, align 4
  %22 = call %struct.fd* @ERR_PTR(i32 %21)
  store %struct.fd* %22, %struct.fd** %2, align 8
  br label %27

23:                                               ; preds = %14
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* @O_RDONLY_, align 4
  %26 = call %struct.fd* @generic_open(i8* %24, i32 %25, i32 0)
  store %struct.fd* %26, %struct.fd** %2, align 8
  br label %27

27:                                               ; preds = %23, %20, %11
  %28 = load %struct.fd*, %struct.fd** %2, align 8
  ret %struct.fd* %28
}

declare dso_local i32 @generic_statat(i32, i8*, %struct.statbuf*, i32) #1

declare dso_local %struct.fd* @ERR_PTR(i32) #1

declare dso_local %struct.fd* @generic_open(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_proc.c_proc_read.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_proc.c_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*, i8*, i64)* @proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_read(%struct.fd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.fd* %0, %struct.fd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.fd*, %struct.fd** %5, align 8
  %13 = call i32 @proc_refresh_data(%struct.fd* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %70

18:                                               ; preds = %3
  %19 = load %struct.fd*, %struct.fd** %5, align 8
  %20 = getelementptr inbounds %struct.fd, %struct.fd* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.fd*, %struct.fd** %5, align 8
  %29 = getelementptr inbounds %struct.fd, %struct.fd* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.fd*, %struct.fd** %5, align 8
  %34 = getelementptr inbounds %struct.fd, %struct.fd* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %32, %35
  store i64 %36, i64* %10, align 8
  %37 = load %struct.fd*, %struct.fd** %5, align 8
  %38 = getelementptr inbounds %struct.fd, %struct.fd* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.fd*, %struct.fd** %5, align 8
  %41 = getelementptr inbounds %struct.fd, %struct.fd* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ugt i64 %39, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %18
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %46, %18
  %48 = load i64, i64* %7, align 8
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i64, i64* %10, align 8
  store i64 %53, i64* %11, align 8
  br label %54

54:                                               ; preds = %52, %47
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load %struct.fd*, %struct.fd** %5, align 8
  %58 = getelementptr inbounds %struct.fd, %struct.fd* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @memcpy(i8* %55, i8* %60, i64 %61)
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.fd*, %struct.fd** %5, align 8
  %65 = getelementptr inbounds %struct.fd, %struct.fd* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load i64, i64* %11, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %54, %16
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @proc_refresh_data(%struct.fd*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

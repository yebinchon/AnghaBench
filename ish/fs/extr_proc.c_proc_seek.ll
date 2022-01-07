; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_proc.c_proc_seek.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_proc.c_proc_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@LSEEK_SET = common dso_local global i32 0, align 4
@LSEEK_CUR = common dso_local global i32 0, align 4
@LSEEK_END = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*, i32, i32)* @proc_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_seek(%struct.fd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fd* %0, %struct.fd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.fd*, %struct.fd** %5, align 8
  %11 = call i32 @proc_refresh_data(%struct.fd* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %69

16:                                               ; preds = %3
  %17 = load %struct.fd*, %struct.fd** %5, align 8
  %18 = getelementptr inbounds %struct.fd, %struct.fd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @LSEEK_SET, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.fd*, %struct.fd** %5, align 8
  %26 = getelementptr inbounds %struct.fd, %struct.fd* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %55

27:                                               ; preds = %16
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @LSEEK_CUR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.fd*, %struct.fd** %5, align 8
  %34 = getelementptr inbounds %struct.fd, %struct.fd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %54

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @LSEEK_END, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.fd*, %struct.fd** %5, align 8
  %43 = getelementptr inbounds %struct.fd, %struct.fd* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %46, %47
  %49 = load %struct.fd*, %struct.fd** %5, align 8
  %50 = getelementptr inbounds %struct.fd, %struct.fd* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %53

51:                                               ; preds = %37
  %52 = load i32, i32* @_EINVAL, align 4
  store i32 %52, i32* %4, align 4
  br label %69

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %31
  br label %55

55:                                               ; preds = %54, %23
  %56 = load %struct.fd*, %struct.fd** %5, align 8
  %57 = getelementptr inbounds %struct.fd, %struct.fd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.fd*, %struct.fd** %5, align 8
  %63 = getelementptr inbounds %struct.fd, %struct.fd* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @_EINVAL, align 4
  store i32 %64, i32* %4, align 4
  br label %69

65:                                               ; preds = %55
  %66 = load %struct.fd*, %struct.fd** %5, align 8
  %67 = getelementptr inbounds %struct.fd, %struct.fd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %60, %51, %14
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @proc_refresh_data(%struct.fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

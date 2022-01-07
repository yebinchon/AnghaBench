; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fd.c_f_install_start.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fd.c_f_install_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.fdtable* }
%struct.fdtable = type { i32, i32, %struct.fd** }
%struct.fd = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@RLIMIT_NOFILE_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fd*, i64)* @f_install_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @f_install_start(%struct.fd* %0, i64 %1) #0 {
  %3 = alloca %struct.fd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fdtable*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.fd* %0, %struct.fd** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp sge i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.fdtable*, %struct.fdtable** %14, align 8
  store %struct.fdtable* %15, %struct.fdtable** %5, align 8
  %16 = load i32, i32* @RLIMIT_NOFILE_, align 4
  %17 = call i32 @rlimit(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  %20 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ugt i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  %25 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %44, %27
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %6, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  %36 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %35, i32 0, i32 2
  %37 = load %struct.fd**, %struct.fd*** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.fd*, %struct.fd** %37, i64 %38
  %40 = load %struct.fd*, %struct.fd** %39, align 8
  %41 = icmp eq %struct.fd* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %47

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %7, align 8
  br label %29

47:                                               ; preds = %42, %29
  %48 = load i64, i64* %7, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* %6, align 4
  %51 = icmp uge i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @fdtable_expand(%struct.fdtable* %53, i64 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %58, %52
  br label %62

62:                                               ; preds = %61, %47
  %63 = load i64, i64* %7, align 8
  %64 = icmp sge i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load %struct.fd*, %struct.fd** %3, align 8
  %67 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  %68 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %67, i32 0, i32 2
  %69 = load %struct.fd**, %struct.fd*** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds %struct.fd*, %struct.fd** %69, i64 %70
  store %struct.fd* %66, %struct.fd** %71, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  %74 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bit_clear(i64 %72, i32 %75)
  br label %80

77:                                               ; preds = %62
  %78 = load %struct.fd*, %struct.fd** %3, align 8
  %79 = call i32 @fd_close(%struct.fd* %78)
  br label %80

80:                                               ; preds = %77, %65
  %81 = load i64, i64* %7, align 8
  ret i64 %81
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rlimit(i32) #1

declare dso_local i32 @fdtable_expand(%struct.fdtable*, i64) #1

declare dso_local i32 @bit_clear(i64, i32) #1

declare dso_local i32 @fd_close(%struct.fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

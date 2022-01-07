; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_diag0c.c_dbfs_diag0c_create.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_diag0c.c_dbfs_diag0c_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypfs_diag0c_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@DBFS_D0C_HDR_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i64*)* @dbfs_diag0c_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbfs_diag0c_create(i8** %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.hypfs_diag0c_data*, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = call %struct.hypfs_diag0c_data* @diag0c_store(i32* %9)
  store %struct.hypfs_diag0c_data* %10, %struct.hypfs_diag0c_data** %8, align 8
  %11 = load %struct.hypfs_diag0c_data*, %struct.hypfs_diag0c_data** %8, align 8
  %12 = call i64 @IS_ERR(%struct.hypfs_diag0c_data* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.hypfs_diag0c_data*, %struct.hypfs_diag0c_data** %8, align 8
  %16 = call i32 @PTR_ERR(%struct.hypfs_diag0c_data* %15)
  store i32 %16, i32* %4, align 4
  br label %54

17:                                               ; preds = %3
  %18 = load %struct.hypfs_diag0c_data*, %struct.hypfs_diag0c_data** %8, align 8
  %19 = getelementptr inbounds %struct.hypfs_diag0c_data, %struct.hypfs_diag0c_data* %18, i32 0, i32 0
  %20 = call i32 @memset(%struct.TYPE_2__* %19, i32 0, i32 16)
  %21 = load %struct.hypfs_diag0c_data*, %struct.hypfs_diag0c_data** %8, align 8
  %22 = getelementptr inbounds %struct.hypfs_diag0c_data, %struct.hypfs_diag0c_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @get_tod_clock_ext(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load %struct.hypfs_diag0c_data*, %struct.hypfs_diag0c_data** %8, align 8
  %31 = getelementptr inbounds %struct.hypfs_diag0c_data, %struct.hypfs_diag0c_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @DBFS_D0C_HDR_VERSION, align 4
  %34 = load %struct.hypfs_diag0c_data*, %struct.hypfs_diag0c_data** %8, align 8
  %35 = getelementptr inbounds %struct.hypfs_diag0c_data, %struct.hypfs_diag0c_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.hypfs_diag0c_data*, %struct.hypfs_diag0c_data** %8, align 8
  %39 = getelementptr inbounds %struct.hypfs_diag0c_data, %struct.hypfs_diag0c_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.hypfs_diag0c_data*, %struct.hypfs_diag0c_data** %8, align 8
  %42 = bitcast %struct.hypfs_diag0c_data* %41 to i8*
  %43 = load i8**, i8*** %5, align 8
  store i8* %42, i8** %43, align 8
  %44 = load %struct.hypfs_diag0c_data*, %struct.hypfs_diag0c_data** %8, align 8
  %45 = bitcast %struct.hypfs_diag0c_data* %44 to i8*
  %46 = load i8**, i8*** %6, align 8
  store i8* %45, i8** %46, align 8
  %47 = load %struct.hypfs_diag0c_data*, %struct.hypfs_diag0c_data** %8, align 8
  %48 = getelementptr inbounds %struct.hypfs_diag0c_data, %struct.hypfs_diag0c_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = zext i32 %50 to i64
  %52 = add i64 %51, 4
  %53 = load i64*, i64** %7, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %17, %14
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.hypfs_diag0c_data* @diag0c_store(i32*) #1

declare dso_local i64 @IS_ERR(%struct.hypfs_diag0c_data*) #1

declare dso_local i32 @PTR_ERR(%struct.hypfs_diag0c_data*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @get_tod_clock_ext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

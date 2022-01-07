; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_vm.c_dbfs_diag2fc_create.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_vm.c_dbfs_diag2fc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbfs_d2fc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@guest_query = common dso_local global i32 0, align 4
@DBFS_D2FC_HDR_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i64*)* @dbfs_diag2fc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbfs_diag2fc_create(i8** %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.dbfs_d2fc*, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i32, i32* @guest_query, align 4
  %11 = call %struct.dbfs_d2fc* @diag2fc_store(i32 %10, i32* %9, i32 20)
  store %struct.dbfs_d2fc* %11, %struct.dbfs_d2fc** %8, align 8
  %12 = load %struct.dbfs_d2fc*, %struct.dbfs_d2fc** %8, align 8
  %13 = call i64 @IS_ERR(%struct.dbfs_d2fc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.dbfs_d2fc*, %struct.dbfs_d2fc** %8, align 8
  %17 = call i32 @PTR_ERR(%struct.dbfs_d2fc* %16)
  store i32 %17, i32* %4, align 4
  br label %56

18:                                               ; preds = %3
  %19 = load %struct.dbfs_d2fc*, %struct.dbfs_d2fc** %8, align 8
  %20 = getelementptr inbounds %struct.dbfs_d2fc, %struct.dbfs_d2fc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @get_tod_clock_ext(i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = load %struct.dbfs_d2fc*, %struct.dbfs_d2fc** %8, align 8
  %29 = getelementptr inbounds %struct.dbfs_d2fc, %struct.dbfs_d2fc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @DBFS_D2FC_HDR_VERSION, align 4
  %32 = load %struct.dbfs_d2fc*, %struct.dbfs_d2fc** %8, align 8
  %33 = getelementptr inbounds %struct.dbfs_d2fc, %struct.dbfs_d2fc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.dbfs_d2fc*, %struct.dbfs_d2fc** %8, align 8
  %37 = getelementptr inbounds %struct.dbfs_d2fc, %struct.dbfs_d2fc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.dbfs_d2fc*, %struct.dbfs_d2fc** %8, align 8
  %40 = getelementptr inbounds %struct.dbfs_d2fc, %struct.dbfs_d2fc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = call i32 @memset(i32* %41, i32 0, i32 4)
  %43 = load %struct.dbfs_d2fc*, %struct.dbfs_d2fc** %8, align 8
  %44 = bitcast %struct.dbfs_d2fc* %43 to i8*
  %45 = load i8**, i8*** %5, align 8
  store i8* %44, i8** %45, align 8
  %46 = load %struct.dbfs_d2fc*, %struct.dbfs_d2fc** %8, align 8
  %47 = bitcast %struct.dbfs_d2fc* %46 to i8*
  %48 = load i8**, i8*** %6, align 8
  store i8* %47, i8** %48, align 8
  %49 = load %struct.dbfs_d2fc*, %struct.dbfs_d2fc** %8, align 8
  %50 = getelementptr inbounds %struct.dbfs_d2fc, %struct.dbfs_d2fc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %52 to i64
  %54 = add i64 %53, 4
  %55 = load i64*, i64** %7, align 8
  store i64 %54, i64* %55, align 8
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %18, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.dbfs_d2fc* @diag2fc_store(i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dbfs_d2fc*) #1

declare dso_local i32 @PTR_ERR(%struct.dbfs_d2fc*) #1

declare dso_local i32 @get_tod_clock_ext(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

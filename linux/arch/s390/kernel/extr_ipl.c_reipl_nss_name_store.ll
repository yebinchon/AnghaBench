; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_reipl_nss_name_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_reipl_nss_name_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@NSS_NAME_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@reipl_block_nss = common dso_local global %struct.TYPE_4__* null, align 8
@IPL_PB0_CCW_VM_FLAG_NSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @reipl_nss_name_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reipl_nss_name_store(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.kobj_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %10, align 4
  %13 = load i64, i64* %9, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = sub i64 %17, 1
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %23, %15, %4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @NSS_NAME_SIZE, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %78

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reipl_block_nss, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NSS_NAME_SIZE, align 4
  %39 = call i32 @memset(i32 %37, i32 64, i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %33
  %43 = load i32, i32* @IPL_PB0_CCW_VM_FLAG_NSS, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reipl_block_nss, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %43
  store i32 %48, i32* %46, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reipl_block_nss, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @memcpy(i32 %52, i8* %53, i32 %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reipl_block_nss, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @ASCEBC(i32 %59, i32 %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reipl_block_nss, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @EBC_TOUPPER(i32 %65, i32 %66)
  br label %76

68:                                               ; preds = %33
  %69 = load i32, i32* @IPL_PB0_CCW_VM_FLAG_NSS, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @reipl_block_nss, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %70
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %68, %42
  %77 = load i64, i64* %9, align 8
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %76, %30
  %79 = load i64, i64* %5, align 8
  ret i64 %79
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ASCEBC(i32, i32) #1

declare dso_local i32 @EBC_TOUPPER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

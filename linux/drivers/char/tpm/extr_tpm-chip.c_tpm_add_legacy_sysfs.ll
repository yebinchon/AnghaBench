; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_add_legacy_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_add_legacy_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, %struct.TYPE_6__, %struct.TYPE_4__** }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.attribute** }
%struct.attribute = type { i8* }

@TPM_CHIP_FLAG_TPM2 = common dso_local global i32 0, align 4
@TPM_CHIP_FLAG_VIRTUAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ppi\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*)* @tpm_add_legacy_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_add_legacy_sysfs(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca %struct.attribute**, align 8
  %5 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %6 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %7 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @TPM_CHIP_FLAG_TPM2, align 4
  %10 = load i32, i32* @TPM_CHIP_FLAG_VIRTUAL, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

15:                                               ; preds = %1
  %16 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %17 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %22 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i32 @__compat_only_sysfs_link_entry_to_kobj(i32* %20, i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %15
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %71

34:                                               ; preds = %27, %15
  %35 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %36 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.attribute**, %struct.attribute*** %40, align 8
  store %struct.attribute** %41, %struct.attribute*** %4, align 8
  br label %42

42:                                               ; preds = %67, %34
  %43 = load %struct.attribute**, %struct.attribute*** %4, align 8
  %44 = load %struct.attribute*, %struct.attribute** %43, align 8
  %45 = icmp ne %struct.attribute* %44, null
  br i1 %45, label %46, label %70

46:                                               ; preds = %42
  %47 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %48 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %53 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.attribute**, %struct.attribute*** %4, align 8
  %56 = load %struct.attribute*, %struct.attribute** %55, align 8
  %57 = getelementptr inbounds %struct.attribute, %struct.attribute* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @__compat_only_sysfs_link_entry_to_kobj(i32* %51, i32* %54, i8* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %46
  %63 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %64 = call i32 @tpm_del_legacy_sysfs(%struct.tpm_chip* %63)
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %71

66:                                               ; preds = %46
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.attribute**, %struct.attribute*** %4, align 8
  %69 = getelementptr inbounds %struct.attribute*, %struct.attribute** %68, i32 1
  store %struct.attribute** %69, %struct.attribute*** %4, align 8
  br label %42

70:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %62, %32, %14
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @__compat_only_sysfs_link_entry_to_kobj(i32*, i32*, i8*) #1

declare dso_local i32 @tpm_del_legacy_sysfs(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

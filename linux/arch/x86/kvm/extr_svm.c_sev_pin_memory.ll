; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_sev_pin_memory.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_sev_pin_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.kvm = type { i32 }
%struct.kvm_sev_info = type { i64 }
%struct.TYPE_2__ = type { %struct.kvm_sev_info }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@CAP_IPC_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"SEV: %lu locked pages exceed the lock limit of %lu.\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"SEV: Failure locking %lu pages.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page** (%struct.kvm*, i64, i64, i64*, i32)* @sev_pin_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page** @sev_pin_memory(%struct.kvm* %0, i64 %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.page**, align 8
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvm_sev_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.page**, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.kvm*, %struct.kvm** %7, align 8
  %22 = call %struct.TYPE_2__* @to_kvm_svm(%struct.kvm* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.kvm_sev_info* %23, %struct.kvm_sev_info** %12, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %5
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add i64 %27, %28
  %30 = load i64, i64* %8, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %5
  store %struct.page** null, %struct.page*** %6, align 8
  br label %121

33:                                               ; preds = %26
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @PAGE_MASK, align 8
  %36 = and i64 %34, %35
  %37 = load i64, i64* @PAGE_SHIFT, align 8
  %38 = lshr i64 %36, %37
  store i64 %38, i64* %19, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %39, %40
  %42 = sub i64 %41, 1
  %43 = load i64, i64* @PAGE_MASK, align 8
  %44 = and i64 %42, %43
  %45 = load i64, i64* @PAGE_SHIFT, align 8
  %46 = lshr i64 %44, %45
  store i64 %46, i64* %20, align 8
  %47 = load i64, i64* %20, align 8
  %48 = load i64, i64* %19, align 8
  %49 = sub i64 %47, %48
  %50 = add i64 %49, 1
  store i64 %50, i64* %13, align 8
  %51 = load %struct.kvm_sev_info*, %struct.kvm_sev_info** %12, align 8
  %52 = getelementptr inbounds %struct.kvm_sev_info, %struct.kvm_sev_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %13, align 8
  %55 = add i64 %53, %54
  store i64 %55, i64* %16, align 8
  %56 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %57 = call i64 @rlimit(i32 %56)
  %58 = load i64, i64* @PAGE_SHIFT, align 8
  %59 = lshr i64 %57, %58
  store i64 %59, i64* %17, align 8
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* %17, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %33
  %64 = load i32, i32* @CAP_IPC_LOCK, align 4
  %65 = call i32 @capable(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* %17, align 8
  %70 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %68, i64 %69)
  store %struct.page** null, %struct.page*** %6, align 8
  br label %121

71:                                               ; preds = %63, %33
  %72 = load i64, i64* %13, align 8
  %73 = mul i64 %72, 8
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %15, align 8
  %75 = load i64, i64* @PAGE_SIZE, align 8
  %76 = icmp ugt i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load i64, i64* %15, align 8
  %79 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %80 = load i32, i32* @__GFP_ZERO, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @PAGE_KERNEL, align 4
  %83 = call %struct.page** @__vmalloc(i64 %78, i32 %81, i32 %82)
  store %struct.page** %83, %struct.page*** %18, align 8
  br label %88

84:                                               ; preds = %71
  %85 = load i64, i64* %15, align 8
  %86 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %87 = call %struct.page** @kmalloc(i64 %85, i32 %86)
  store %struct.page** %87, %struct.page*** %18, align 8
  br label %88

88:                                               ; preds = %84, %77
  %89 = load %struct.page**, %struct.page*** %18, align 8
  %90 = icmp ne %struct.page** %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  store %struct.page** null, %struct.page*** %6, align 8
  br label %121

92:                                               ; preds = %88
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load i32, i32* @FOLL_WRITE, align 4
  %96 = load %struct.page**, %struct.page*** %18, align 8
  %97 = call i64 @get_user_pages_fast(i64 %93, i64 %94, i32 %95, %struct.page** %96)
  store i64 %97, i64* %14, align 8
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* %13, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load i64, i64* %13, align 8
  %103 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %102)
  br label %111

104:                                              ; preds = %92
  %105 = load i64, i64* %13, align 8
  %106 = load i64*, i64** %10, align 8
  store i64 %105, i64* %106, align 8
  %107 = load i64, i64* %16, align 8
  %108 = load %struct.kvm_sev_info*, %struct.kvm_sev_info** %12, align 8
  %109 = getelementptr inbounds %struct.kvm_sev_info, %struct.kvm_sev_info* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.page**, %struct.page*** %18, align 8
  store %struct.page** %110, %struct.page*** %6, align 8
  br label %121

111:                                              ; preds = %101
  %112 = load i64, i64* %14, align 8
  %113 = icmp ugt i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load %struct.page**, %struct.page*** %18, align 8
  %116 = load i64, i64* %14, align 8
  %117 = call i32 @release_pages(%struct.page** %115, i64 %116)
  br label %118

118:                                              ; preds = %114, %111
  %119 = load %struct.page**, %struct.page*** %18, align 8
  %120 = call i32 @kvfree(%struct.page** %119)
  store %struct.page** null, %struct.page*** %6, align 8
  br label %121

121:                                              ; preds = %118, %104, %91, %67, %32
  %122 = load %struct.page**, %struct.page*** %6, align 8
  ret %struct.page** %122
}

declare dso_local %struct.TYPE_2__* @to_kvm_svm(%struct.kvm*) #1

declare dso_local i64 @rlimit(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @pr_err(i8*, i64, ...) #1

declare dso_local %struct.page** @__vmalloc(i64, i32, i32) #1

declare dso_local %struct.page** @kmalloc(i64, i32) #1

declare dso_local i64 @get_user_pages_fast(i64, i64, i32, %struct.page**) #1

declare dso_local i32 @release_pages(%struct.page**, i64) #1

declare dso_local i32 @kvfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

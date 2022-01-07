; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_vdso.c___vdso_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_vdso.c___vdso_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.page** }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { %struct.page** }

@vdso_lookup = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"vDSO is not a valid ELF object!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vdso_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__vdso_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vdso_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.page**, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vdso_lookup, align 8
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @memcmp(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %109

19:                                               ; preds = %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vdso_lookup, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vdso_lookup, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %25, %31
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vdso_lookup, align 8
  %36 = load i32, i32* %3, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %34, i32* %39, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vdso_lookup, align 8
  %41 = load i32, i32* %3, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.page** @kcalloc(i32 %46, i32 8, i32 %47)
  store %struct.page** %48, %struct.page*** %5, align 8
  %49 = load %struct.page**, %struct.page*** %5, align 8
  %50 = icmp eq %struct.page** %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %19
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %109

54:                                               ; preds = %19
  %55 = load i32, i32* @vdso_data, align 4
  %56 = call i32 @__pa_symbol(i32 %55)
  %57 = call %struct.page* @phys_to_page(i32 %56)
  %58 = load %struct.page**, %struct.page*** %5, align 8
  %59 = getelementptr inbounds %struct.page*, %struct.page** %58, i64 0
  store %struct.page* %57, %struct.page** %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vdso_lookup, align 8
  %61 = load i32, i32* %3, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @sym_to_pfn(i32 %65)
  store i64 %66, i64* %6, align 8
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %87, %54
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vdso_lookup, align 8
  %70 = load i32, i32* %3, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %68, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %67
  %77 = load i64, i64* %6, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %77, %79
  %81 = call %struct.page* @pfn_to_page(i64 %80)
  %82 = load %struct.page**, %struct.page*** %5, align 8
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.page*, %struct.page** %82, i64 %85
  store %struct.page* %81, %struct.page** %86, align 8
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %67

90:                                               ; preds = %67
  %91 = load %struct.page**, %struct.page*** %5, align 8
  %92 = getelementptr inbounds %struct.page*, %struct.page** %91, i64 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vdso_lookup, align 8
  %94 = load i32, i32* %3, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store %struct.page** %92, %struct.page*** %99, align 8
  %100 = load %struct.page**, %struct.page*** %5, align 8
  %101 = getelementptr inbounds %struct.page*, %struct.page** %100, i64 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vdso_lookup, align 8
  %103 = load i32, i32* %3, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store %struct.page** %101, %struct.page*** %108, align 8
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %90, %51, %15
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.page** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.page* @phys_to_page(i32) #1

declare dso_local i32 @__pa_symbol(i32) #1

declare dso_local i64 @sym_to_pfn(i32) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_get_vec5_feature.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_get_vec5_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"chosen\00", align 1
@FDT_ERR_NOTFOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"ibm,architecture-vec-5\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @get_vec5_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_vec5_feature(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %8 = call i64 (...) @of_get_flat_dt_root()
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @of_get_flat_dt_subnode_by_name(i64 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @FDT_ERR_NOTFOUND, align 8
  %13 = sub i64 0, %12
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %32

16:                                               ; preds = %1
  %17 = load i64, i64* %5, align 8
  %18 = call i32* @of_get_flat_dt_prop(i64 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32* null, i32** %2, align 8
  br label %32

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ule i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32* null, i32** %2, align 8
  br label %32

27:                                               ; preds = %22
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %2, align 8
  br label %32

32:                                               ; preds = %27, %26, %21, %15
  %33 = load i32*, i32** %2, align 8
  ret i32* %33
}

declare dso_local i64 @of_get_flat_dt_root(...) #1

declare dso_local i64 @of_get_flat_dt_subnode_by_name(i64, i8*) #1

declare dso_local i32* @of_get_flat_dt_prop(i64, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

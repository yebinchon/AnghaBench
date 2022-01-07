; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_native_get_queue_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_native.c_xive_native_get_queue_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"OPAL failed to get queue info for VCPU %d/%d : %lld\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xive_native_get_queue_info(i8* %0, i8* %1, i8** %2, i8** %3, i8** %4, i8** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i8** %6, i8*** %15, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i64 @opal_xive_get_queue_info(i8* %22, i8* %23, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20)
  store i64 %24, i64* %21, align 8
  %25 = load i64, i64* %21, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %7
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %21, align 8
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29, i64 %30)
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %70

34:                                               ; preds = %7
  %35 = load i8**, i8*** %11, align 8
  %36 = icmp ne i8** %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %16, align 4
  %39 = call i8* @be64_to_cpu(i32 %38)
  %40 = load i8**, i8*** %11, align 8
  store i8* %39, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i8**, i8*** %12, align 8
  %43 = icmp ne i8** %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %17, align 4
  %46 = call i8* @be32_to_cpu(i32 %45)
  %47 = load i8**, i8*** %12, align 8
  store i8* %46, i8** %47, align 8
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i8**, i8*** %13, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %18, align 4
  %53 = call i8* @be64_to_cpu(i32 %52)
  %54 = load i8**, i8*** %13, align 8
  store i8* %53, i8** %54, align 8
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i8**, i8*** %14, align 8
  %57 = icmp ne i8** %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %19, align 4
  %60 = call i8* @be32_to_cpu(i32 %59)
  %61 = load i8**, i8*** %14, align 8
  store i8* %60, i8** %61, align 8
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i8**, i8*** %15, align 8
  %64 = icmp ne i8** %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %20, align 4
  %67 = call i8* @be64_to_cpu(i32 %66)
  %68 = load i8**, i8*** %15, align 8
  store i8* %67, i8** %68, align 8
  br label %69

69:                                               ; preds = %65, %62
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %69, %27
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i64 @opal_xive_get_queue_info(i8*, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, i8*, i8*, i64) #1

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

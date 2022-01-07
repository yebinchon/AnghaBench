; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_machine_kexec_file.c_create_dtb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_machine_kexec_file.c_create_dtb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32 }

@initial_boot_params = common dso_local global i32 0, align 4
@DTB_EXTRA_SPACE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kimage*, i64, i64, i8*, i8**)* @create_dtb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_dtb(%struct.kimage* %0, i64 %1, i64 %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kimage*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i8*, i8** %10, align 8
  %20 = call i64 @strlen(i8* %19)
  br label %22

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i64 [ %20, %18 ], [ 0, %21 ]
  store i64 %23, i64* %14, align 8
  %24 = load i32, i32* @initial_boot_params, align 4
  %25 = call i64 @fdt_totalsize(i32 %24)
  %26 = load i64, i64* %14, align 8
  %27 = add i64 %25, %26
  %28 = load i64, i64* @DTB_EXTRA_SPACE, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %13, align 8
  br label %30

30:                                               ; preds = %64, %22
  %31 = load i64, i64* %13, align 8
  %32 = call i8* @vmalloc(i64 %31)
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %75

38:                                               ; preds = %30
  %39 = load i32, i32* @initial_boot_params, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @fdt_open_into(i32 %39, i8* %40, i64 %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %75

48:                                               ; preds = %38
  %49 = load %struct.kimage*, %struct.kimage** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @setup_dtb(%struct.kimage* %49, i64 %50, i64 %51, i8* %52, i8* %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %48
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @vfree(i8* %58)
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i64, i64* @DTB_EXTRA_SPACE, align 8
  %66 = load i64, i64* %13, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %13, align 8
  br label %30

68:                                               ; preds = %57
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %6, align 4
  br label %75

70:                                               ; preds = %48
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 @fdt_pack(i8* %71)
  %73 = load i8*, i8** %12, align 8
  %74 = load i8**, i8*** %11, align 8
  store i8* %73, i8** %74, align 8
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %70, %68, %45, %35
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @fdt_totalsize(i32) #1

declare dso_local i8* @vmalloc(i64) #1

declare dso_local i32 @fdt_open_into(i32, i8*, i64) #1

declare dso_local i32 @setup_dtb(%struct.kimage*, i64, i64, i8*, i8*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @fdt_pack(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_machine_kexec_file_64.c_setup_purgatory.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_machine_kexec_file_64.c_setup_purgatory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32 }

@SLAVE_CODE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"purgatory_start\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"dt_offset\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_purgatory(%struct.kimage* %0, i8* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kimage*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* @SLAVE_CODE_SIZE, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kmalloc(i32 %15, i32 %16)
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %65

23:                                               ; preds = %5
  %24 = load %struct.kimage*, %struct.kimage** %7, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* @SLAVE_CODE_SIZE, align 4
  %27 = call i32 (%struct.kimage*, i8*, ...) @kexec_purgatory_get_set_symbol(%struct.kimage* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %25, i32 %26, i32 1)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %6, align 4
  br label %65

34:                                               ; preds = %23
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* @SLAVE_CODE_SIZE, align 4
  %41 = call i32 @memcpy(i32* %38, i8* %39, i32 %40)
  %42 = load i32, i32* %13, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.kimage*, %struct.kimage** %7, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* @SLAVE_CODE_SIZE, align 4
  %48 = call i32 (%struct.kimage*, i8*, ...) @kexec_purgatory_get_set_symbol(%struct.kimage* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %46, i32 %47, i32 0)
  store i32 %48, i32* %14, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @kfree(i32* %49)
  %51 = load %struct.kimage*, %struct.kimage** %7, align 8
  %52 = call i32 (%struct.kimage*, i8*, ...) @kexec_purgatory_get_set_symbol(%struct.kimage* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* %10, i64 8, i32 0)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %34
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %6, align 4
  br label %65

57:                                               ; preds = %34
  %58 = load %struct.kimage*, %struct.kimage** %7, align 8
  %59 = call i32 (%struct.kimage*, i8*, ...) @kexec_purgatory_get_set_symbol(%struct.kimage* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64* %11, i64 8, i32 0)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %6, align 4
  br label %65

64:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %62, %55, %30, %20
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kexec_purgatory_get_set_symbol(%struct.kimage*, i8*, ...) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

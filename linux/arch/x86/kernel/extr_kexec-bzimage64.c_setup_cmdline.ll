; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kexec-bzimage64.c_setup_cmdline.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kexec-bzimage64.c_setup_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.boot_params = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@KEXEC_TYPE_CRASH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"elfcorehdr=0x%lx \00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Final command line is: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kimage*, %struct.boot_params*, i64, i64, i8*, i64)* @setup_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_cmdline(%struct.kimage* %0, %struct.boot_params* %1, i64 %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.kimage*, align 8
  %8 = alloca %struct.boot_params*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.kimage* %0, %struct.kimage** %7, align 8
  store %struct.boot_params* %1, %struct.boot_params** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %18 = load %struct.boot_params*, %struct.boot_params** %8, align 8
  %19 = bitcast %struct.boot_params* %18 to i8*
  %20 = load i64, i64* %10, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %13, align 8
  store i64 0, i64* %15, align 8
  %22 = load %struct.kimage*, %struct.kimage** %7, align 8
  %23 = getelementptr inbounds %struct.kimage, %struct.kimage* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @KEXEC_TYPE_CRASH, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %6
  %28 = load i8*, i8** %13, align 8
  %29 = load %struct.kimage*, %struct.kimage** %7, align 8
  %30 = getelementptr inbounds %struct.kimage, %struct.kimage* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @sprintf(i8* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i64 %33, i64* %15, align 8
  br label %34

34:                                               ; preds = %27, %6
  %35 = load i8*, i8** %13, align 8
  %36 = load i64, i64* %15, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8*, i8** %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @memcpy(i8* %37, i8* %38, i64 %39)
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* %12, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %12, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load i64, i64* %12, align 8
  %46 = sub i64 %45, 1
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = add i64 %50, %51
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = and i64 %53, 4294967295
  store i64 %54, i64* %16, align 8
  %55 = load i64, i64* %14, align 8
  %56 = lshr i64 %55, 32
  store i64 %56, i64* %17, align 8
  %57 = load i64, i64* %16, align 8
  %58 = load %struct.boot_params*, %struct.boot_params** %8, align 8
  %59 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load i64, i64* %17, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %34
  %64 = load i64, i64* %17, align 8
  %65 = load %struct.boot_params*, %struct.boot_params** %8, align 8
  %66 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %34
  ret i32 0
}

declare dso_local i64 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

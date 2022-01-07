; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_machine_kexec_file.c_load_other_segments.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_machine_kexec_file.c_load_other_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8* }
%struct.kexec_buf = type { i64, i8*, i64, i64, i64, i32, i64, i64, %struct.kimage* }

@KEXEC_BUF_MEM_UNKNOWN = common dso_local global i8* null, align 8
@SZ_1G = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Loaded initrd at 0x%lx bufsz=0x%lx memsz=0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Preparing for new dtb failed\0A\00", align 1
@SZ_2M = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Loaded dtb at 0x%lx bufsz=0x%lx memsz=0x%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_other_segments(%struct.kimage* %0, i64 %1, i64 %2, i8* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kimage*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.kexec_buf, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* null, i8** %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.kimage*, %struct.kimage** %8, align 8
  %20 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %14, i32 0, i32 8
  store %struct.kimage* %19, %struct.kimage** %20, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = add i64 %21, %22
  %24 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %14, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %57

27:                                               ; preds = %6
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %14, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = load i64, i64* %12, align 8
  %31 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %14, i32 0, i32 2
  store i64 %30, i64* %31, align 8
  %32 = load i8*, i8** @KEXEC_BUF_MEM_UNKNOWN, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %14, i32 0, i32 3
  store i64 %33, i64* %34, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %14, i32 0, i32 4
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %14, i32 0, i32 7
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @SZ_1G, align 8
  %40 = call i64 @round_down(i64 %38, i64 %39)
  %41 = load i64, i64* @SZ_1G, align 8
  %42 = mul i64 %41, 32
  %43 = add i64 %40, %42
  %44 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %14, i32 0, i32 6
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %14, i32 0, i32 5
  store i32 0, i32* %45, align 8
  %46 = call i32 @kexec_add_buffer(%struct.kexec_buf* %14)
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %27
  br label %103

50:                                               ; preds = %27
  %51 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %14, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %16, align 8
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %54, i64 %55)
  br label %57

57:                                               ; preds = %50, %6
  %58 = load %struct.kimage*, %struct.kimage** %8, align 8
  %59 = load i64, i64* %16, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @create_dtb(%struct.kimage* %58, i64 %59, i64 %60, i8* %61, i8** %15)
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %103

67:                                               ; preds = %57
  %68 = load i8*, i8** %15, align 8
  %69 = call i64 @fdt_totalsize(i8* %68)
  store i64 %69, i64* %17, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %14, i32 0, i32 1
  store i8* %70, i8** %71, align 8
  %72 = load i64, i64* %17, align 8
  %73 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %14, i32 0, i32 2
  store i64 %72, i64* %73, align 8
  %74 = load i8*, i8** @KEXEC_BUF_MEM_UNKNOWN, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %14, i32 0, i32 3
  store i64 %75, i64* %76, align 8
  %77 = load i64, i64* %17, align 8
  %78 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %14, i32 0, i32 4
  store i64 %77, i64* %78, align 8
  %79 = load i64, i64* @SZ_2M, align 8
  %80 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %14, i32 0, i32 7
  store i64 %79, i64* %80, align 8
  %81 = load i64, i64* @ULONG_MAX, align 8
  %82 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %14, i32 0, i32 6
  store i64 %81, i64* %82, align 8
  %83 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %14, i32 0, i32 5
  store i32 1, i32* %83, align 8
  %84 = call i32 @kexec_add_buffer(%struct.kexec_buf* %14)
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %67
  br label %103

88:                                               ; preds = %67
  %89 = load i8*, i8** %15, align 8
  %90 = load %struct.kimage*, %struct.kimage** %8, align 8
  %91 = getelementptr inbounds %struct.kimage, %struct.kimage* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i8* %89, i8** %92, align 8
  %93 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %14, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.kimage*, %struct.kimage** %8, align 8
  %96 = getelementptr inbounds %struct.kimage, %struct.kimage* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i64 %94, i64* %97, align 8
  %98 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %14, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* %17, align 8
  %102 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %99, i64 %100, i64 %101)
  store i32 0, i32* %7, align 4
  br label %107

103:                                              ; preds = %87, %65, %49
  %104 = load i8*, i8** %15, align 8
  %105 = call i32 @vfree(i8* %104)
  %106 = load i32, i32* %18, align 4
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %103, %88
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local i64 @round_down(i64, i64) #1

declare dso_local i32 @kexec_add_buffer(%struct.kexec_buf*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i64) #1

declare dso_local i32 @create_dtb(%struct.kimage*, i64, i64, i8*, i8**) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @fdt_totalsize(i8*) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

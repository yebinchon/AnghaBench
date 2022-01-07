; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-msglog.c_memcons_copy.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-msglog.c_memcons_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memcons = type { i32, i32, i32 }

@ENODEV = common dso_local global i64 0, align 8
@MEMCONS_OUT_POS_WRAP = common dso_local global i32 0, align 4
@MEMCONS_OUT_POS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"OPAL: memory console corruption. Aborting read.\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @memcons_copy(%struct.memcons* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.memcons*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.memcons* %0, %struct.memcons** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %12, align 8
  %15 = load %struct.memcons*, %struct.memcons** %6, align 8
  %16 = icmp ne %struct.memcons* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* @ENODEV, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %5, align 8
  br label %98

20:                                               ; preds = %4
  %21 = load %struct.memcons*, %struct.memcons** %6, align 8
  %22 = getelementptr inbounds %struct.memcons, %struct.memcons* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @READ_ONCE(i32 %23)
  %25 = call i32 @be32_to_cpu(i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = call i32 (...) @smp_rmb()
  %27 = load %struct.memcons*, %struct.memcons** %6, align 8
  %28 = getelementptr inbounds %struct.memcons, %struct.memcons* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be64_to_cpu(i32 %29)
  %31 = call i8* @phys_to_virt(i32 %30)
  store i8* %31, i8** %10, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @MEMCONS_OUT_POS_WRAP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %72

36:                                               ; preds = %20
  %37 = load i32, i32* @MEMCONS_OUT_POS_MASK, align 4
  %38 = load i32, i32* %13, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %13, align 4
  %40 = load %struct.memcons*, %struct.memcons** %6, align 8
  %41 = getelementptr inbounds %struct.memcons, %struct.memcons* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be32_to_cpu(i32 %42)
  %44 = load i32, i32* %13, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %14, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i32, i32* %14, align 4
  %53 = call i64 @memory_read_from_buffer(i8* %46, i64 %47, i32* %8, i8* %51, i32 %52)
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp ult i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %36
  br label %96

57:                                               ; preds = %36
  %58 = load i64, i64* %11, align 8
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  store i8* %61, i8** %7, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %9, align 8
  %64 = sub i64 %63, %62
  store i64 %64, i64* %9, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i64, i64* %9, align 8
  %69 = icmp ule i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  br label %96

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %20
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.memcons*, %struct.memcons** %6, align 8
  %75 = getelementptr inbounds %struct.memcons, %struct.memcons* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @be32_to_cpu(i32 %76)
  %78 = icmp sgt i32 %73, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %81 = load i64, i64* @EINVAL, align 8
  %82 = sub i64 0, %81
  store i64 %82, i64* %5, align 8
  br label %98

83:                                               ; preds = %72
  %84 = load i8*, i8** %7, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i64 @memory_read_from_buffer(i8* %84, i64 %85, i32* %8, i8* %86, i32 %87)
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp ult i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %96

92:                                               ; preds = %83
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %11, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %11, align 8
  br label %96

96:                                               ; preds = %92, %91, %70, %56
  %97 = load i64, i64* %11, align 8
  store i64 %97, i64* %5, align 8
  br label %98

98:                                               ; preds = %96, %79, %17
  %99 = load i64, i64* %5, align 8
  ret i64 %99
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i8* @phys_to_virt(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i64 @memory_read_from_buffer(i8*, i64, i32*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

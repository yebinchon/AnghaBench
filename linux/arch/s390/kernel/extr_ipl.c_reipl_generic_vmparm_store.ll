; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_reipl_generic_vmparm_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_reipl_generic_vmparm_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipl_parameter_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@DIAG308_VMPARM_SIZE = common dso_local global i32 0, align 4
@IPL_PB0_CCW_VM_FLAG_VP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ipl_parameter_block*, i64, i8*, i64)* @reipl_generic_vmparm_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reipl_generic_vmparm_store(%struct.ipl_parameter_block* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ipl_parameter_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ipl_parameter_block* %0, %struct.ipl_parameter_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %11, align 4
  %14 = load i64, i64* %9, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = sub i64 %18, 1
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %24, %16, %4
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %7, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %114

35:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %68, %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @isalnum(i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %40
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @isascii(i8 signext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %48
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = call i64 @isprint(i8 signext %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = load i64, i64* @EINVAL, align 8
  %66 = sub i64 0, %65
  store i64 %66, i64* %5, align 8
  br label %114

67:                                               ; preds = %56, %48, %40
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %36

71:                                               ; preds = %36
  %72 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %6, align 8
  %73 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @DIAG308_VMPARM_SIZE, align 4
  %77 = call i32 @memset(i32 %75, i32 0, i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %6, align 8
  %80 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %71
  %85 = load i32, i32* @IPL_PB0_CCW_VM_FLAG_VP, align 4
  %86 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %6, align 8
  %87 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %85
  store i32 %90, i32* %88, align 4
  %91 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %6, align 8
  %92 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @memcpy(i32 %94, i8* %95, i32 %96)
  %98 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %6, align 8
  %99 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @ASCEBC(i32 %101, i32 %102)
  br label %112

104:                                              ; preds = %71
  %105 = load i32, i32* @IPL_PB0_CCW_VM_FLAG_VP, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %6, align 8
  %108 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, %106
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %104, %84
  %113 = load i64, i64* %9, align 8
  store i64 %113, i64* %5, align 8
  br label %114

114:                                              ; preds = %112, %64, %32
  %115 = load i64, i64* %5, align 8
  ret i64 %115
}

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i64 @isascii(i8 signext) #1

declare dso_local i64 @isprint(i8 signext) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ASCEBC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

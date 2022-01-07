; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_ipl_parm.c_ipl_block_get_ascii_scpdata.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_ipl_parm.c_ipl_block_get_ascii_scpdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipl_parameter_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, %struct.ipl_parameter_block*)* @ipl_block_get_ascii_scpdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ipl_block_get_ascii_scpdata(i8* %0, i64 %1, %struct.ipl_parameter_block* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ipl_parameter_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ipl_parameter_block* %2, %struct.ipl_parameter_block** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = sub i64 %10, 1
  %12 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %6, align 8
  %13 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %6, align 8
  %17 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @scpdata_length(i32* %15, i32 %19)
  %21 = call i64 @min(i64 %11, i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %92

25:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %56, %25
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %26
  %31 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %6, align 8
  %32 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @isascii(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  store i64 0, i64* %7, align 8
  br label %92

41:                                               ; preds = %30
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %41
  %45 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %6, align 8
  %46 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @islower(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 1, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %44, %41
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %8, align 8
  br label %26

59:                                               ; preds = %26
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i8*, i8** %4, align 8
  %64 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %6, align 8
  %65 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @memcpy(i8* %63, i32* %67, i64 %68)
  br label %91

70:                                               ; preds = %59
  store i64 0, i64* %8, align 8
  br label %71

71:                                               ; preds = %87, %70
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %7, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %6, align 8
  %77 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call signext i8 @tolower(i32 %82)
  %84 = load i8*, i8** %4, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8 %83, i8* %86, align 1
  br label %87

87:                                               ; preds = %75
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %8, align 8
  br label %71

90:                                               ; preds = %71
  br label %91

91:                                               ; preds = %90, %62
  br label %92

92:                                               ; preds = %91, %40, %24
  %93 = load i8*, i8** %4, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load i64, i64* %7, align 8
  ret i64 %96
}

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @scpdata_length(i32*, i32) #1

declare dso_local i32 @isascii(i32) #1

declare dso_local i64 @islower(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local signext i8 @tolower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

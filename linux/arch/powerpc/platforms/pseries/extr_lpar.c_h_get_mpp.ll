; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_lpar.c_h_get_mpp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_lpar.c_h_get_mpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvcall_mpp_data = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@PLPAR_HCALL9_BUFSIZE = common dso_local global i32 0, align 4
@H_GET_MPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h_get_mpp(%struct.hvcall_mpp_data* %0) #0 {
  %2 = alloca %struct.hvcall_mpp_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.hvcall_mpp_data* %0, %struct.hvcall_mpp_data** %2, align 8
  %6 = load i32, i32* @PLPAR_HCALL9_BUFSIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i64, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load i32, i32* @H_GET_MPP, align 4
  %11 = call i32 @plpar_hcall9(i32 %10, i64* %9)
  store i32 %11, i32* %3, align 4
  %12 = getelementptr inbounds i64, i64* %9, i64 0
  %13 = load i64, i64* %12, align 16
  %14 = load %struct.hvcall_mpp_data*, %struct.hvcall_mpp_data** %2, align 8
  %15 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = getelementptr inbounds i64, i64* %9, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.hvcall_mpp_data*, %struct.hvcall_mpp_data** %2, align 8
  %19 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = getelementptr inbounds i64, i64* %9, i64 2
  %21 = load i64, i64* %20, align 16
  %22 = lshr i64 %21, 16
  %23 = and i64 %22, 65535
  %24 = load %struct.hvcall_mpp_data*, %struct.hvcall_mpp_data** %2, align 8
  %25 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = getelementptr inbounds i64, i64* %9, i64 2
  %27 = load i64, i64* %26, align 16
  %28 = and i64 %27, 65535
  %29 = load %struct.hvcall_mpp_data*, %struct.hvcall_mpp_data** %2, align 8
  %30 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %29, i32 0, i32 3
  store i64 %28, i64* %30, align 8
  %31 = getelementptr inbounds i64, i64* %9, i64 3
  %32 = load i64, i64* %31, align 8
  %33 = lshr i64 %32, 56
  %34 = and i64 %33, 255
  %35 = load %struct.hvcall_mpp_data*, %struct.hvcall_mpp_data** %2, align 8
  %36 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %35, i32 0, i32 4
  store i64 %34, i64* %36, align 8
  %37 = getelementptr inbounds i64, i64* %9, i64 3
  %38 = load i64, i64* %37, align 8
  %39 = lshr i64 %38, 48
  %40 = and i64 %39, 255
  %41 = load %struct.hvcall_mpp_data*, %struct.hvcall_mpp_data** %2, align 8
  %42 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %41, i32 0, i32 5
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds i64, i64* %9, i64 3
  %44 = load i64, i64* %43, align 8
  %45 = and i64 %44, 281474976710655
  %46 = load %struct.hvcall_mpp_data*, %struct.hvcall_mpp_data** %2, align 8
  %47 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %46, i32 0, i32 6
  store i64 %45, i64* %47, align 8
  %48 = getelementptr inbounds i64, i64* %9, i64 4
  %49 = load i64, i64* %48, align 16
  %50 = load %struct.hvcall_mpp_data*, %struct.hvcall_mpp_data** %2, align 8
  %51 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %50, i32 0, i32 7
  store i64 %49, i64* %51, align 8
  %52 = getelementptr inbounds i64, i64* %9, i64 5
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.hvcall_mpp_data*, %struct.hvcall_mpp_data** %2, align 8
  %55 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %54, i32 0, i32 8
  store i64 %53, i64* %55, align 8
  %56 = getelementptr inbounds i64, i64* %9, i64 6
  %57 = load i64, i64* %56, align 16
  %58 = load %struct.hvcall_mpp_data*, %struct.hvcall_mpp_data** %2, align 8
  %59 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %58, i32 0, i32 9
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* %3, align 4
  %61 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %61)
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @plpar_hcall9(i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_lparcfg.c_h_get_ppp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_lparcfg.c_h_get_ppp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvcall_ppp_data = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@PLPAR_HCALL9_BUFSIZE = common dso_local global i32 0, align 4
@H_GET_PPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hvcall_ppp_data*)* @h_get_ppp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h_get_ppp(%struct.hvcall_ppp_data* %0) #0 {
  %2 = alloca %struct.hvcall_ppp_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.hvcall_ppp_data* %0, %struct.hvcall_ppp_data** %2, align 8
  %6 = load i32, i32* @PLPAR_HCALL9_BUFSIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i64, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load i32, i32* @H_GET_PPP, align 4
  %11 = call i64 @plpar_hcall9(i32 %10, i64* %9)
  store i64 %11, i64* %3, align 8
  %12 = getelementptr inbounds i64, i64* %9, i64 0
  %13 = load i64, i64* %12, align 16
  %14 = load %struct.hvcall_ppp_data*, %struct.hvcall_ppp_data** %2, align 8
  %15 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = getelementptr inbounds i64, i64* %9, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.hvcall_ppp_data*, %struct.hvcall_ppp_data** %2, align 8
  %19 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = getelementptr inbounds i64, i64* %9, i64 2
  %21 = load i64, i64* %20, align 16
  %22 = lshr i64 %21, 16
  %23 = and i64 %22, 65535
  %24 = load %struct.hvcall_ppp_data*, %struct.hvcall_ppp_data** %2, align 8
  %25 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = getelementptr inbounds i64, i64* %9, i64 2
  %27 = load i64, i64* %26, align 16
  %28 = and i64 %27, 65535
  %29 = load %struct.hvcall_ppp_data*, %struct.hvcall_ppp_data** %2, align 8
  %30 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %29, i32 0, i32 3
  store i64 %28, i64* %30, align 8
  %31 = getelementptr inbounds i64, i64* %9, i64 3
  %32 = load i64, i64* %31, align 8
  %33 = lshr i64 %32, 48
  %34 = and i64 %33, 1
  %35 = load %struct.hvcall_ppp_data*, %struct.hvcall_ppp_data** %2, align 8
  %36 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %35, i32 0, i32 4
  store i64 %34, i64* %36, align 8
  %37 = getelementptr inbounds i64, i64* %9, i64 3
  %38 = load i64, i64* %37, align 8
  %39 = lshr i64 %38, 40
  %40 = and i64 %39, 255
  %41 = load %struct.hvcall_ppp_data*, %struct.hvcall_ppp_data** %2, align 8
  %42 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %41, i32 0, i32 5
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds i64, i64* %9, i64 3
  %44 = load i64, i64* %43, align 8
  %45 = lshr i64 %44, 32
  %46 = and i64 %45, 255
  %47 = load %struct.hvcall_ppp_data*, %struct.hvcall_ppp_data** %2, align 8
  %48 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %47, i32 0, i32 6
  store i64 %46, i64* %48, align 8
  %49 = getelementptr inbounds i64, i64* %9, i64 3
  %50 = load i64, i64* %49, align 8
  %51 = lshr i64 %50, 16
  %52 = and i64 %51, 65535
  %53 = load %struct.hvcall_ppp_data*, %struct.hvcall_ppp_data** %2, align 8
  %54 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %53, i32 0, i32 7
  store i64 %52, i64* %54, align 8
  %55 = getelementptr inbounds i64, i64* %9, i64 3
  %56 = load i64, i64* %55, align 8
  %57 = and i64 %56, 65535
  %58 = load %struct.hvcall_ppp_data*, %struct.hvcall_ppp_data** %2, align 8
  %59 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %58, i32 0, i32 8
  store i64 %57, i64* %59, align 8
  %60 = getelementptr inbounds i64, i64* %9, i64 4
  %61 = load i64, i64* %60, align 16
  %62 = lshr i64 %61, 48
  %63 = load %struct.hvcall_ppp_data*, %struct.hvcall_ppp_data** %2, align 8
  %64 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %63, i32 0, i32 9
  store i64 %62, i64* %64, align 8
  %65 = getelementptr inbounds i64, i64* %9, i64 4
  %66 = load i64, i64* %65, align 16
  %67 = lshr i64 %66, 24
  %68 = and i64 %67, 16777215
  %69 = load %struct.hvcall_ppp_data*, %struct.hvcall_ppp_data** %2, align 8
  %70 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %69, i32 0, i32 10
  store i64 %68, i64* %70, align 8
  %71 = getelementptr inbounds i64, i64* %9, i64 4
  %72 = load i64, i64* %71, align 16
  %73 = and i64 %72, 16777215
  %74 = load %struct.hvcall_ppp_data*, %struct.hvcall_ppp_data** %2, align 8
  %75 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %74, i32 0, i32 11
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %3, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %78)
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @plpar_hcall9(i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

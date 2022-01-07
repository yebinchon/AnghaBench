; ModuleID = '/home/carl/AnghaBench/h2o/deps/libgkc/extr_test.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libgkc/extr_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gkc_summary = type { i32 }

@__const.main.input = private unnamed_addr constant [4 x double] [double 1.200000e+01, double 6.000000e+00, double 1.000000e+01, double 1.000000e+00], align 16
@tofile = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [4 x double], align 16
  %4 = alloca i32*, align 8
  %5 = alloca %struct.gkc_summary*, align 8
  %6 = alloca %struct.gkc_summary*, align 8
  %7 = alloca %struct.gkc_summary*, align 8
  %8 = alloca %struct.gkc_summary*, align 8
  %9 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %10 = bitcast [4 x double]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([4 x double]* @__const.main.input to i8*), i64 32, i1 false)
  %11 = call %struct.gkc_summary* @gkc_summary_alloc(double 1.000000e-02)
  store %struct.gkc_summary* %11, %struct.gkc_summary** %5, align 8
  %12 = load %struct.gkc_summary*, %struct.gkc_summary** %5, align 8
  %13 = call i32 @print_query(%struct.gkc_summary* %12, double 1.000000e-01)
  br label %14

14:                                               ; preds = %0
  %15 = call %struct.gkc_summary* @gkc_summary_alloc(double 1.000000e-02)
  store %struct.gkc_summary* %15, %struct.gkc_summary** %6, align 8
  %16 = call %struct.gkc_summary* @gkc_summary_alloc(double 1.000000e-02)
  store %struct.gkc_summary* %16, %struct.gkc_summary** %7, align 8
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %28, %14
  %18 = load i32, i32* %2, align 4
  %19 = icmp ult i32 %18, 10000
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = call i32 (...) @random()
  %22 = srem i32 %21, 10000
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %9, align 8
  %24 = load %struct.gkc_summary*, %struct.gkc_summary** %6, align 8
  %25 = load i64, i64* %9, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @gkc_insert_value(%struct.gkc_summary* %24, i32 %26)
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %2, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %17

31:                                               ; preds = %17
  %32 = load %struct.gkc_summary*, %struct.gkc_summary** %6, align 8
  %33 = load %struct.gkc_summary*, %struct.gkc_summary** %7, align 8
  %34 = call %struct.gkc_summary* @gkc_combine(%struct.gkc_summary* %32, %struct.gkc_summary* %33)
  store %struct.gkc_summary* %34, %struct.gkc_summary** %8, align 8
  %35 = load %struct.gkc_summary*, %struct.gkc_summary** %6, align 8
  %36 = call i32 @gkc_summary_free(%struct.gkc_summary* %35)
  %37 = load %struct.gkc_summary*, %struct.gkc_summary** %7, align 8
  %38 = call i32 @gkc_summary_free(%struct.gkc_summary* %37)
  %39 = load %struct.gkc_summary*, %struct.gkc_summary** %8, align 8
  %40 = call i32 @gkc_print_summary(%struct.gkc_summary* %39)
  %41 = load %struct.gkc_summary*, %struct.gkc_summary** %8, align 8
  %42 = call i32 @print_query(%struct.gkc_summary* %41, double 2.000000e-02)
  %43 = load %struct.gkc_summary*, %struct.gkc_summary** %8, align 8
  %44 = call i32 @print_query(%struct.gkc_summary* %43, double 1.000000e-01)
  %45 = load %struct.gkc_summary*, %struct.gkc_summary** %8, align 8
  %46 = call i32 @print_query(%struct.gkc_summary* %45, double 2.500000e-01)
  %47 = load %struct.gkc_summary*, %struct.gkc_summary** %8, align 8
  %48 = call i32 @print_query(%struct.gkc_summary* %47, double 5.000000e-01)
  %49 = load %struct.gkc_summary*, %struct.gkc_summary** %8, align 8
  %50 = call i32 @print_query(%struct.gkc_summary* %49, double 7.500000e-01)
  %51 = load %struct.gkc_summary*, %struct.gkc_summary** %8, align 8
  %52 = call i32 @print_query(%struct.gkc_summary* %51, double 8.200000e-01)
  %53 = load %struct.gkc_summary*, %struct.gkc_summary** %8, align 8
  %54 = call i32 @print_query(%struct.gkc_summary* %53, double 8.800000e-01)
  %55 = load %struct.gkc_summary*, %struct.gkc_summary** %8, align 8
  %56 = call i32 @print_query(%struct.gkc_summary* %55, double 8.600000e-01)
  %57 = load %struct.gkc_summary*, %struct.gkc_summary** %8, align 8
  %58 = call i32 @print_query(%struct.gkc_summary* %57, double 0x3FEFAE147AE147AE)
  %59 = load %struct.gkc_summary*, %struct.gkc_summary** %8, align 8
  %60 = call i32 @gkc_sanity_check(%struct.gkc_summary* %59)
  %61 = load %struct.gkc_summary*, %struct.gkc_summary** %8, align 8
  %62 = call i32 @gkc_summary_free(%struct.gkc_summary* %61)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.gkc_summary* @gkc_summary_alloc(double) #2

declare dso_local i32 @print_query(%struct.gkc_summary*, double) #2

declare dso_local i32 @random(...) #2

declare dso_local i32 @gkc_insert_value(%struct.gkc_summary*, i32) #2

declare dso_local %struct.gkc_summary* @gkc_combine(%struct.gkc_summary*, %struct.gkc_summary*) #2

declare dso_local i32 @gkc_summary_free(%struct.gkc_summary*) #2

declare dso_local i32 @gkc_print_summary(%struct.gkc_summary*) #2

declare dso_local i32 @gkc_sanity_check(%struct.gkc_summary*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
